library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- register to store std_logic_vector

entity reg_en_rst_n is
    generic(
        N : positive := 32
    );
    port(
        D     : in  std_logic_vector(N - 1 downto 0);
        en    : in  std_logic;
        rst_n : in  std_logic;
        clk   : in  std_logic;
        Q     : out std_logic_vector(N - 1 downto 0)
    );
end entity reg_en_rst_n;

architecture behaviour of reg_en_rst_n is

begin

    reg_process : process(clk, rst_n) is
    begin
        if rst_n = '0' then
            Q <= (others => '0');
        elsif rising_edge(clk) then
            if en = '1' then
                Q <= D;
            end if;
        end if;
    end process reg_process;

end architecture behaviour;
