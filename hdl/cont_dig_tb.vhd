
library IEEE;

use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity cont_dig_tb is
end cont_dig_tb;

architecture arch of cont_dig_tb is

    component cont_dig
        Port(
            clk: in std_logic;
            reset: in std_logic;
            enable: in std_logic;
            cuenta: out std_logic_vector(3 downto 0)
        );
    end component;

    signal clk : std_logic := '0';
    signal reset : std_logic := '0';
    signal enable : std_logic := '0';

    signal cuenta : std_logic_vector(3 downto 0);

    constant clk_period : time := 10 ns;

begin
    uut: cont_dig
    Port map(
        clk => clk,
        reset => reset,
        enable => enable,
        cuenta => cuenta
    );

    sync: process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

    comb: process
    begin 
        reset <= '1';
        enable <= '0';
        wait for 50 ns;
        reset <= '0';
        wait for 20 ns;
        enable <= '1';
        wait;
    end process;

end;