library work;
use work.keccak_globals.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity iota_theta is
    port(
        iota_theta_in : in k_state;
        round_constant_signal : in std_logic_vector(7 downto 0);
        iota_theta_out: out k_state
    );
end entity iota_theta;

architecture RTL of iota_theta is

    signal sum_sheet2: k_plane;
    signal iota_in,iota_out, theta_in2, theta_out2 : k_state;
begin

    iota_in <= iota_theta_in;
    i5001: for y in 1 to 4 generate
        i5002: for x in 0 to 4 generate
            i5003: for i in 0 to 63 generate
                iota_out(y)(x)(i)<=iota_in(y)(x)(i);
            end generate;
        end generate;
    end generate;


    i5012: for x in 1 to 4 generate
        i5013: for i in 0 to 63 generate
            iota_out(0)(x)(i)<=iota_in(0)(x)(i);
        end generate;
    end generate;


    iota_out(0)(0)(0)<=iota_in(0)(0)(0) xor round_constant_signal(0);
    iota_out(0)(0)(1)<=iota_in(0)(0)(1) xor round_constant_signal(1);
    iota_out(0)(0)(2)<=iota_in(0)(0)(2)xor round_constant_signal(2);
    iota_out(0)(0)(3)<=iota_in(0)(0)(3) xor round_constant_signal(3);
    iota_out(0)(0)(4)<=iota_in(0)(0)(4);
    iota_out(0)(0)(5)<=iota_in(0)(0)(5);
    iota_out(0)(0)(6)<=iota_in(0)(0)(6);
    iota_out(0)(0)(7)<=iota_in(0)(0)(7) xor round_constant_signal(4);
    iota_out(0)(0)(8)<=iota_in(0)(0)(8);
    iota_out(0)(0)(9)<=iota_in(0)(0)(9);
    iota_out(0)(0)(10)<=iota_in(0)(0)(10);
    iota_out(0)(0)(11)<=iota_in(0)(0)(11);
    iota_out(0)(0)(12)<=iota_in(0)(0)(12);
    iota_out(0)(0)(13)<=iota_in(0)(0)(13);
    iota_out(0)(0)(14)<=iota_in(0)(0)(14);
    iota_out(0)(0)(15)<=iota_in(0)(0)(15) xor round_constant_signal(5);
    iota_out(0)(0)(16)<=iota_in(0)(0)(16);
    iota_out(0)(0)(17)<=iota_in(0)(0)(17);
    iota_out(0)(0)(18)<=iota_in(0)(0)(18);
    iota_out(0)(0)(19)<=iota_in(0)(0)(19);
    iota_out(0)(0)(20)<=iota_in(0)(0)(20);
    iota_out(0)(0)(21)<=iota_in(0)(0)(21);
    iota_out(0)(0)(22)<=iota_in(0)(0)(22);
    iota_out(0)(0)(23)<=iota_in(0)(0)(23);
    iota_out(0)(0)(24)<=iota_in(0)(0)(24);
    iota_out(0)(0)(25)<=iota_in(0)(0)(25);
    iota_out(0)(0)(26)<=iota_in(0)(0)(26);
    iota_out(0)(0)(27)<=iota_in(0)(0)(27);
    iota_out(0)(0)(28)<=iota_in(0)(0)(28);
    iota_out(0)(0)(29)<=iota_in(0)(0)(29);
    iota_out(0)(0)(30)<=iota_in(0)(0)(30);
    iota_out(0)(0)(31)<=iota_in(0)(0)(31) xor round_constant_signal(6);
    iota_out(0)(0)(32)<=iota_in(0)(0)(32);
    iota_out(0)(0)(33)<=iota_in(0)(0)(33);
    iota_out(0)(0)(34)<=iota_in(0)(0)(34);
    iota_out(0)(0)(35)<=iota_in(0)(0)(35);
    iota_out(0)(0)(36)<=iota_in(0)(0)(36);
    iota_out(0)(0)(37)<=iota_in(0)(0)(37);
    iota_out(0)(0)(38)<=iota_in(0)(0)(38);
    iota_out(0)(0)(39)<=iota_in(0)(0)(39);
    iota_out(0)(0)(40)<=iota_in(0)(0)(40);
    iota_out(0)(0)(41)<=iota_in(0)(0)(41);
    iota_out(0)(0)(42)<=iota_in(0)(0)(42);
    iota_out(0)(0)(43)<=iota_in(0)(0)(43);
    iota_out(0)(0)(44)<=iota_in(0)(0)(44);
    iota_out(0)(0)(45)<=iota_in(0)(0)(45);
    iota_out(0)(0)(46)<=iota_in(0)(0)(46);
    iota_out(0)(0)(47)<=iota_in(0)(0)(47);
    iota_out(0)(0)(48)<=iota_in(0)(0)(48);
    iota_out(0)(0)(49)<=iota_in(0)(0)(49);
    iota_out(0)(0)(50)<=iota_in(0)(0)(50);
    iota_out(0)(0)(51)<=iota_in(0)(0)(51);
    iota_out(0)(0)(52)<=iota_in(0)(0)(52);
    iota_out(0)(0)(53)<=iota_in(0)(0)(53);
    iota_out(0)(0)(54)<=iota_in(0)(0)(54);
    iota_out(0)(0)(55)<=iota_in(0)(0)(55);
    iota_out(0)(0)(56)<=iota_in(0)(0)(56);
    iota_out(0)(0)(57)<=iota_in(0)(0)(57);
    iota_out(0)(0)(58)<=iota_in(0)(0)(58);
    iota_out(0)(0)(59)<=iota_in(0)(0)(59);
    iota_out(0)(0)(60)<=iota_in(0)(0)(60);
    iota_out(0)(0)(61)<=iota_in(0)(0)(61);
    iota_out(0)(0)(62)<=iota_in(0)(0)(62);

    iota_out(0)(0)(63)<=iota_in(0)(0)(63) xor round_constant_signal(7);

    theta_in2 <= iota_out;

    ------------------------------SECOND ROUND BLOCK------------------------------------------------------------------------
    ----------------------------
    --theta_2-------------------
    ----------------------------
    --compute sum of columns

    i0101b: for x in 0 to 4 generate
        i0102b: for i in 0 to 63 generate
            sum_sheet2(x)(i)<=theta_in2(0)(x)(i) xor theta_in2(1)(x)(i) xor theta_in2(2)(x)(i) xor theta_in2(3)(x)(i) xor theta_in2(4)(x)(i);

        end generate;
    end generate;

    i0200b: for y in 0 to 4 generate
        i0201b: for x in 1 to 3 generate
            theta_out2(y)(x)(0)<=theta_in2(y)(x)(0) xor sum_sheet2(x-1)(0) xor sum_sheet2(x+1)(63);
            i0202: for i in 1 to 63 generate
                theta_out2(y)(x)(i)<=theta_in2(y)(x)(i) xor sum_sheet2(x-1)(i) xor sum_sheet2(x+1)(i-1);
            end generate;
        end generate;
    end generate;

    i2001b: for y in 0 to 4 generate
        theta_out2(y)(0)(0)<=theta_in2(y)(0)(0) xor sum_sheet2(4)(0) xor sum_sheet2(1)(63);
        i2021b: for i in 1 to 63 generate
            theta_out2(y)(0)(i)<=theta_in2(y)(0)(i) xor sum_sheet2(4)(i) xor sum_sheet2(1)(i-1);
        end generate;

    end generate;

    i2002b: for y in 0 to 4 generate
        theta_out2(y)(4)(0)<=theta_in2(y)(4)(0) xor sum_sheet2(3)(0) xor sum_sheet2(0)(63);
        i2022b: for i in 1 to 63 generate
            theta_out2(y)(4)(i)<=theta_in2(y)(4)(i) xor sum_sheet2(3)(i) xor sum_sheet2(0)(i-1);
        end generate;

    end generate;
    
    iota_theta_out <= theta_out2;

end architecture RTL;
