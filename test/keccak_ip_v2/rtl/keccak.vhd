-- The Keccak sponge function, designed by Guido Bertoni, Joan Daemen,
-- Micha�l Peeters and Gilles Van Assche. For more information, feedback or
-- questions, please refer to our website: http://keccak.noekeon.org/

-- Implementation by the designers,
-- hereby denoted as "the implementer".

-- To the extent possible under law, the implementer has waived all copyright
-- and related or neighboring rights to the source code in this file.
-- http://creativecommons.org/publicdomain/zero/1.0/

library work;
use work.keccak_globals.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;



entity keccak is

    port (
        clk     : in  std_logic;
        rst_n   : in  std_logic;
        start : in std_logic;
        din     : in  std_logic_vector(63 downto 0);
        din_valid: in std_logic;
        buffer_full: out std_logic;
        last_block: in std_logic;
        ready : out std_logic;
        dout    : out std_logic_vector(63 downto 0);
        dout_valid : out std_logic);

end keccak;

architecture rtl of keccak is

    --components

    component keccak_round
        port(
            round_in               : in  k_state;
            round_constant_signal  : in  std_logic_vector(7 downto 0);
            round_constant_signal2 : in  std_logic_vector(7 downto 0);
            round_out              : out k_state
        );
    end component keccak_round;

    component keccak_round_constants_gen
        port(
            round_number               : in  unsigned(4 downto 0);
            round_constant_signal_out1 : out std_logic_vector(7 downto 0);
            round_constant_signal_out2 : out std_logic_vector(7 downto 0)
        );
    end component keccak_round_constants_gen;


    component keccak_buffer
        port(
            clk                   : in  std_logic;
            rst_n                 : in  std_logic;
            din_buffer_in         : in  std_logic_vector(63 downto 0);
            din_buffer_in_valid   : in  std_logic;
            last_block            : in  std_logic;
            din_buffer_full       : out std_logic;
            din_buffer_out        : out std_logic_vector(1599 downto 0);
            dout_buffer_in        : in  std_logic_vector(1599 downto 0);
            dout_buffer_out       : out std_logic_vector(63 downto 0);
            dout_buffer_out_valid : out std_logic;
            ready                 : in  std_logic
        );
    end component keccak_buffer;

    ----------------------------------------------------------------------------
    -- Internal signal declarations
    ----------------------------------------------------------------------------


    signal reg_data,round_in,round_out, round_out_from1to2: k_state;
    --signal zero_state : k_state;
    signal reg_data_vector: std_logic_vector (1599 downto 0);
    signal counter_nr_rounds : unsigned(4 downto 0);
    signal counter_nr_iteration : unsigned(4 downto 0);
    --signal zero_lane: k_lane;
    signal din_buffer_full:std_logic;
    --signal zero_plane: k_plane;
    signal round_constant_signal1,round_constant_signal2 : std_logic_vector(7 downto 0);
    signal din_buffer_out: std_logic_vector(1599 downto 0);
    signal permutation_computed : std_logic;
    


begin  -- Rtl

    -- port map

    round_map : keccak_round port map(
            round_in              => round_in,
            round_constant_signal => round_constant_signal1,
            round_constant_signal2 => round_constant_signal2,
            round_out             => round_out
        );

        
    round_constants_gen: keccak_round_constants_gen port map(
            round_number               => counter_nr_rounds,
            round_constant_signal_out1 => round_constant_signal1,
            round_constant_signal_out2 => round_constant_signal2
        );
    
    
    
    buffer_in: keccak_buffer port map(
            clk                   => clk,
            rst_n                 => rst_n,
            din_buffer_in         => din,
            din_buffer_in_valid   => din_valid,
            last_block            => last_block,
            din_buffer_full       => din_buffer_full,
            din_buffer_out        => din_buffer_out,
            dout_buffer_in        => reg_data_vector,
            dout_buffer_out       => dout,
            dout_buffer_out_valid => dout_valid,
            ready                 => permutation_computed
        );




    --map part of the state to a vector
    i001: for y in 0 to 4 generate
        i002: for x in 0 to 4 generate
            i003: for i in 0 to 63 generate
                reg_data_vector(320*y+64*x+i)<= reg_data(y)(x)(i);
            end generate;
        end generate;
    end generate;



    -- state register and counter of the number of rounds
    p_main : process (clk, rst_n)

    begin  -- process p_main
        if rst_n = '0' then                 -- asynchronous rst_n (active low)
            --reg_data <= zero_state;
            for row in 0 to 4 loop
                for col in 0 to 4 loop
                    for i in 0 to 63 loop
                        reg_data(row)(col)(i)<='0';
                    end loop;
                end loop;
            end loop;
            counter_nr_rounds <= (others => '0');
            permutation_computed <='1';
        elsif clk'event and clk = '1' then  -- rising clk edge

            if (start='1') then
                --reg_data <= zero_state;
                for row in 0 to 4 loop
                    for col in 0 to 4 loop
                        for i in 0 to 63 loop
                            reg_data(row)(col)(i)<='0';
                        end loop;
                    end loop;
                end loop;
                counter_nr_rounds <= (others => '0');
                permutation_computed<='1';
            else
                if(din_buffer_full ='1' and permutation_computed='1') then
                    counter_nr_rounds(4 downto 0)<= (others => '0');
                    counter_nr_rounds(0)<='1';
                    permutation_computed<='0';
                    reg_data<= round_out;
                else
                    if( counter_nr_rounds < 12 and permutation_computed='0') then
                        counter_nr_rounds <= counter_nr_rounds + 1;
                        reg_data<= round_out;

                    end if;
                    if( counter_nr_rounds = 11) then
                        permutation_computed<='1';
                        counter_nr_rounds<= (others => '0');
                    end if;
                end if;

            end if;
        end if;
    end process p_main;

    --input mapping


    --capacity part


    
    --rate part
    i10: for row in 0 to 4 generate
        i11: for col in 0 to 4 generate
            i12: for i in 0 to 63 generate
                round_in(row)(col)(i)<= reg_data(row)(col)(i) xor (din_buffer_out((row*64*5)+(col*64)+i) and (din_buffer_full and permutation_computed));
            end generate;
        end generate;
    end generate;




    ready<=permutation_computed;
    buffer_full<=din_buffer_full;
end rtl;
