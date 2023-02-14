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


entity keccak_round is

    port (

        round_in     : in  k_state;
        round_constant_signal    : in std_logic_vector(7 downto 0);
        round_constant_signal2   : in std_logic_vector(7 downto 0);
        round_out    : out k_state);

end keccak_round;

architecture rtl of keccak_round is


    component theta
        port(
            theta_in  : in  k_state;
            theta_out : out k_state
        );
    end component theta;

    component rho_pi_chi
        port(
            rho_pi_chi_in  : in  k_state;
            rho_pi_chi_out : out k_state
        );
    end component rho_pi_chi;

    component iota_theta
        port(
            iota_theta_in         : in  k_state;
            round_constant_signal : in  std_logic_vector(7 downto 0);
            iota_theta_out        : out k_state
        );
    end component iota_theta;

    ----------------------------------------------------------------------------
    -- Internal signal declarations
    ----------------------------------------------------------------------------
    signal theta_out, iota_in2, iota_out2, rho_pi_chi_in, rho_pi_chi_out, iota_theta_in, iota_theta_out: k_state;
    signal rho_pi_chi_in2, rho_pi_chi_out2: k_state;


begin  -- Rtl


    ------------------------------FIRST ROUND BLOCK------------------------------------------------------------------------    
    theta_1: theta
        port map(
            theta_in  => round_in,
            theta_out => theta_out
        );

    rho_pi_chi_in<=theta_out;

    rho_pi_chi1: rho_pi_chi
        port map(
            rho_pi_chi_in  => rho_pi_chi_in,
            rho_pi_chi_out => rho_pi_chi_out
        );

    iota_theta_in <= rho_pi_chi_out;

    iota1_rho2: iota_theta
        port map(
            iota_theta_in         => iota_theta_in,
            round_constant_signal => round_constant_signal,
            iota_theta_out        => iota_theta_out
        );

    rho_pi_chi_in2 <= iota_theta_out;

    rho_pi_chi2: rho_pi_chi
        port map(
            rho_pi_chi_in  => rho_pi_chi_in2,
            rho_pi_chi_out => rho_pi_chi_out2
        );


    iota_in2<=rho_pi_chi_out2;
    round_out <= iota_out2;



    -----------------------------
    --iota_2---------------------
    -----------------------------

    i5001b: for y in 1 to 4 generate
        i5002b: for x in 0 to 4 generate
            i5003b: for i in 0 to 63 generate
                iota_out2(y)(x)(i)<=iota_in2(y)(x)(i);
            end generate;
        end generate;
    end generate;


    i5012b: for x in 1 to 4 generate
        i5013b: for i in 0 to 63 generate
            iota_out2(0)(x)(i)<=iota_in2(0)(x)(i);
        end generate;
    end generate;


    iota_out2(0)(0)(0)<=iota_in2(0)(0)(0) xor round_constant_signal2(0);
    iota_out2(0)(0)(1)<=iota_in2(0)(0)(1) xor round_constant_signal2(1);
    iota_out2(0)(0)(2)<=iota_in2(0)(0)(2)xor round_constant_signal2(2);
    iota_out2(0)(0)(3)<=iota_in2(0)(0)(3) xor round_constant_signal2(3);
    iota_out2(0)(0)(4)<=iota_in2(0)(0)(4);
    iota_out2(0)(0)(5)<=iota_in2(0)(0)(5);
    iota_out2(0)(0)(6)<=iota_in2(0)(0)(6);
    iota_out2(0)(0)(7)<=iota_in2(0)(0)(7) xor round_constant_signal2(4);
    iota_out2(0)(0)(8)<=iota_in2(0)(0)(8);
    iota_out2(0)(0)(9)<=iota_in2(0)(0)(9);
    iota_out2(0)(0)(10)<=iota_in2(0)(0)(10);
    iota_out2(0)(0)(11)<=iota_in2(0)(0)(11);
    iota_out2(0)(0)(12)<=iota_in2(0)(0)(12);
    iota_out2(0)(0)(13)<=iota_in2(0)(0)(13);
    iota_out2(0)(0)(14)<=iota_in2(0)(0)(14);
    iota_out2(0)(0)(15)<=iota_in2(0)(0)(15) xor round_constant_signal2(5);
    iota_out2(0)(0)(16)<=iota_in2(0)(0)(16);
    iota_out2(0)(0)(17)<=iota_in2(0)(0)(17);
    iota_out2(0)(0)(18)<=iota_in2(0)(0)(18);
    iota_out2(0)(0)(19)<=iota_in2(0)(0)(19);
    iota_out2(0)(0)(20)<=iota_in2(0)(0)(20);
    iota_out2(0)(0)(21)<=iota_in2(0)(0)(21);
    iota_out2(0)(0)(22)<=iota_in2(0)(0)(22);
    iota_out2(0)(0)(23)<=iota_in2(0)(0)(23);
    iota_out2(0)(0)(24)<=iota_in2(0)(0)(24);
    iota_out2(0)(0)(25)<=iota_in2(0)(0)(25);
    iota_out2(0)(0)(26)<=iota_in2(0)(0)(26);
    iota_out2(0)(0)(27)<=iota_in2(0)(0)(27);
    iota_out2(0)(0)(28)<=iota_in2(0)(0)(28);
    iota_out2(0)(0)(29)<=iota_in2(0)(0)(29);
    iota_out2(0)(0)(30)<=iota_in2(0)(0)(30);
    iota_out2(0)(0)(31)<=iota_in2(0)(0)(31) xor round_constant_signal2(6);
    iota_out2(0)(0)(32)<=iota_in2(0)(0)(32);
    iota_out2(0)(0)(33)<=iota_in2(0)(0)(33);
    iota_out2(0)(0)(34)<=iota_in2(0)(0)(34);
    iota_out2(0)(0)(35)<=iota_in2(0)(0)(35);
    iota_out2(0)(0)(36)<=iota_in2(0)(0)(36);
    iota_out2(0)(0)(37)<=iota_in2(0)(0)(37);
    iota_out2(0)(0)(38)<=iota_in2(0)(0)(38);
    iota_out2(0)(0)(39)<=iota_in2(0)(0)(39);
    iota_out2(0)(0)(40)<=iota_in2(0)(0)(40);
    iota_out2(0)(0)(41)<=iota_in2(0)(0)(41);
    iota_out2(0)(0)(42)<=iota_in2(0)(0)(42);
    iota_out2(0)(0)(43)<=iota_in2(0)(0)(43);
    iota_out2(0)(0)(44)<=iota_in2(0)(0)(44);
    iota_out2(0)(0)(45)<=iota_in2(0)(0)(45);
    iota_out2(0)(0)(46)<=iota_in2(0)(0)(46);
    iota_out2(0)(0)(47)<=iota_in2(0)(0)(47);
    iota_out2(0)(0)(48)<=iota_in2(0)(0)(48);
    iota_out2(0)(0)(49)<=iota_in2(0)(0)(49);
    iota_out2(0)(0)(50)<=iota_in2(0)(0)(50);
    iota_out2(0)(0)(51)<=iota_in2(0)(0)(51);
    iota_out2(0)(0)(52)<=iota_in2(0)(0)(52);
    iota_out2(0)(0)(53)<=iota_in2(0)(0)(53);
    iota_out2(0)(0)(54)<=iota_in2(0)(0)(54);
    iota_out2(0)(0)(55)<=iota_in2(0)(0)(55);
    iota_out2(0)(0)(56)<=iota_in2(0)(0)(56);
    iota_out2(0)(0)(57)<=iota_in2(0)(0)(57);
    iota_out2(0)(0)(58)<=iota_in2(0)(0)(58);
    iota_out2(0)(0)(59)<=iota_in2(0)(0)(59);
    iota_out2(0)(0)(60)<=iota_in2(0)(0)(60);
    iota_out2(0)(0)(61)<=iota_in2(0)(0)(61);
    iota_out2(0)(0)(62)<=iota_in2(0)(0)(62);
    iota_out2(0)(0)(63)<=iota_in2(0)(0)(63) xor round_constant_signal2(7);



end rtl;
