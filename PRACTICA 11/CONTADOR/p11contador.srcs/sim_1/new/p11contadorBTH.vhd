library IEEE;
LIBRARY STD;
USE STD.TEXTIO.ALL;
USE ieee.std_logic_TEXTIO.ALL; 
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity p11BTH is
--  Port ( );
end p11BTH;

architecture Behavioral of p11BTH is

component p12 is port(
    lb, eb, ec, clr, clk: in std_logic;
    num: out std_logic_vector(6 downto 0)
);
end component;

signal lb, eb, ec, clr, clk: std_logic;
signal num: std_logic_vector(6 downto 0);

begin

simulacion : p12 
port map(
    clr => clr, 
    clk => clk,
    lb => lb, 
    eb => eb, 
    ec => ec, 
    num => num
);

process
begin
clr <= '1';
wait for 10ns;
clr <= '0';
wait;
end process;

process
begin
clk <= '0';
wait for 5ns;
clk <= '1';
wait for 5ns;
end process;

process
begin
    lb <= '0'; 
    eb <= '0';
    ec <= '0'; 
wait for 20ns;
    lb <= '0'; 
    eb <= '1';
    ec <= '1'; 
wait for 10ns;
    lb <= '0'; 
    eb <= '1';
    ec <= '1'; 
wait for 10ns;
    lb <= '0'; 
    eb <= '1';
    ec <= '1'; 
wait for 10ns;
    lb <= '0'; 
    eb <= '0';
    ec <= '1'; 
wait for 10ns;
    lb <= '1'; 
    eb <= '0';
    ec <= '1'; 
wait for 10ns;

end process;

end Behavioral;