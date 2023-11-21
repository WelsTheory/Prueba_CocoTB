
library IEEE;

use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity cont_dig is
    Port(
        clk: in std_logic;
        reset: in std_logic;
        enable: in std_logic;
        cuenta: out std_logic_vector(3 downto 0)
    );
end cont_dig;

architecture arch of cont_dig is
signal cuenta_signal, p_cuenta: std_logic_vector(3 downto 0);
begin
    process(clk,reset)
    begin
        if reset ='1' then
            cuenta_signal <= (others => '0');
        elsif rising_edge(clk) then 
            cuenta_signal <= p_cuenta;
        end if;
    end process;

    process(cuenta_signal, enable, p_cuenta)
    begin
    p_cuenta <= cuenta_signal;
    if enable = '1' then 
        p_cuenta <= std_logic_vector(unsigned(cuenta_signal)+1);
        if cuenta_signal = "1001" then
            p_cuenta <= "0000";
        end if;
    end if;
    end process;

    cuenta <= cuenta_signal;

end arch;