library work;
use work.keccak_globals.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity theta is
    port(
        theta_in : in k_state;
        theta_out : out k_state
    );
end entity theta;

architecture RTL of theta is

    signal sum_sheet: k_plane;

begin

    i0101: for x in 0 to 4 generate
        i0102: for i in 0 to 63 generate
            sum_sheet(x)(i)<=theta_in(0)(x)(i) xor theta_in(1)(x)(i) xor theta_in(2)(x)(i) xor theta_in(3)(x)(i) xor theta_in(4)(x)(i);

        end generate;
    end generate;

    i0200: for y in 0 to 4 generate
        i0201: for x in 1 to 3 generate
            theta_out(y)(x)(0)<=theta_in(y)(x)(0) xor sum_sheet(x-1)(0) xor sum_sheet(x+1)(63);
            i0202: for i in 1 to 63 generate
                theta_out(y)(x)(i)<=theta_in(y)(x)(i) xor sum_sheet(x-1)(i) xor sum_sheet(x+1)(i-1);
            end generate;
        end generate;
    end generate;

    i2001: for y in 0 to 4 generate
        theta_out(y)(0)(0)<=theta_in(y)(0)(0) xor sum_sheet(4)(0) xor sum_sheet(1)(63);
        i2021: for i in 1 to 63 generate
            theta_out(y)(0)(i)<=theta_in(y)(0)(i) xor sum_sheet(4)(i) xor sum_sheet(1)(i-1);
        end generate;

    end generate;

    i2002: for y in 0 to 4 generate
        theta_out(y)(4)(0)<=theta_in(y)(4)(0) xor sum_sheet(3)(0) xor sum_sheet(0)(63);
        i2022: for i in 1 to 63 generate
            theta_out(y)(4)(i)<=theta_in(y)(4)(i) xor sum_sheet(3)(i) xor sum_sheet(0)(i-1);
        end generate;

    end generate;

end architecture RTL;
