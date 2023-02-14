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


entity keccak_round_constants_gen is
    port(
        round_number: in unsigned(4 downto 0);
        round_constant_signal_out1   : out std_logic_vector(7 downto 0);
        round_constant_signal_out2    : out std_logic_vector(7 downto 0));
end keccak_round_constants_gen;

architecture rtl of keccak_round_constants_gen is


    ----------------------------------------------------------------------------
    -- Internal signal declarations
    ----------------------------------------------------------------------------


    signal round_constant_signal1: std_logic_vector(7 downto 0);
    signal round_constant_signal2: std_logic_vector(7 downto 0);


begin  -- Rtl

    round_constants : process (round_number)
    begin
        case round_number is
            when "00000" => --0
                round_constant_signal1 <= X"01" ;
                round_constant_signal2 <= X"32" ;
            when "00001" => --1
                round_constant_signal1 <= X"BA" ;
                round_constant_signal2 <= X"E0" ;
            when "00010" => --2
                round_constant_signal1 <= X"3B" ;
                round_constant_signal2 <= X"41" ;
            when "00011" => --3
                round_constant_signal1 <= X"F1" ;
                round_constant_signal2 <= X"A9" ;
            when "00100" => --4
                round_constant_signal1 <= X"1A" ;
                round_constant_signal2 <= X"18" ;
            when "00101" => --5
                round_constant_signal1 <= X"69" ;
                round_constant_signal2 <= X"4A" ;
            when "00110" => --6
                round_constant_signal1 <= X"7B" ;
                round_constant_signal2 <= X"9B" ;
            when "00111" => --7
                round_constant_signal1 <= X"B9" ;
                round_constant_signal2 <= X"A3" ;
            when "01000" => --8
                round_constant_signal1 <= X"A2" ;
                round_constant_signal2 <= X"90" ;
            when "01001" => --9
                round_constant_signal1 <= X"2A" ;
                round_constant_signal2 <= X"CA" ;
            when "01010" => --10
                round_constant_signal1 <= X"F1" ;
                round_constant_signal2 <= X"B0" ;
            when "01011" => --11
                round_constant_signal1 <= X"41" ;
                round_constant_signal2 <= X"E8" ;
            when others =>
                round_constant_signal1 <=(others => '0');
                round_constant_signal2 <=(others => '0');
        end case;
    end process round_constants;


    round_constant_signal_out1<=round_constant_signal1;
    round_constant_signal_out2<=round_constant_signal2;
end rtl;
