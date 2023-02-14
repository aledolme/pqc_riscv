library work;
use work.keccak_globals.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Keccak_2to1mux is
    port ( x: in k_state;
         y     : in k_state;
         s        : in std_logic;
         output  : out k_state
        );
end entity Keccak_2to1mux;

architecture Structure of Keccak_2to1mux is
begin




    G: for row in 0 to 4 generate
        H: for col in 0 to 4 generate
            I: for i in 0 to 63 generate
                output(row)(col)(i) <= (not(s) and x(row)(col)(i)) or (s and y(row)(col)(i));
            end generate;
        end generate;
    end generate;

end architecture Structure;