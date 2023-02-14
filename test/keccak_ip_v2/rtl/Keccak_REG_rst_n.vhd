library work;
use work.keccak_globals.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Keccak_REG_rst_n is
    port(
        Keccak_REG_CLK : in std_logic;
        Keccak_REG_RST_N : in std_logic;
        Keccak_REG_IN: in k_state;
        Keccak_REG_OUT: out k_state
    );
end entity Keccak_REG_rst_n;

architecture RTL of Keccak_REG_rst_n is

begin


    reg_process : process(Keccak_REG_CLK, Keccak_REG_RST_N) is
    begin
        if Keccak_REG_RST_N = '0' then
            for row in 0 to 4 loop
                for col in 0 to 4 loop
                    for i in 0 to 63 loop
                        Keccak_REG_OUT(row)(col)(i)<='0';
                    end loop;
                end loop;
            end loop;

        elsif rising_edge(Keccak_REG_CLK) then
            for row in 0 to 4 loop
                for col in 0 to 4 loop
                    for i in 0 to 63 loop
                        Keccak_REG_OUT(row)(col)(i)<=Keccak_REG_IN(row)(col)(i);
                    end loop;
                end loop;
            end loop;
        end if;
    end process reg_process;


end architecture RTL;
