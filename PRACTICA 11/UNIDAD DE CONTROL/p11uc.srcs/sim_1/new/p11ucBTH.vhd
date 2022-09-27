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
    a0, z, ini, clr, clk: in std_logic;
    la, ea, lb, eb, ec: out std_logic
);
end component;

signal a0, z, ini, clr, clk: std_logic;
signal la, ea, lb, eb, ec: std_logic;

begin

simulacion : p12 
port map(
    ini => ini, 
    clr => clr, 
    clk => clk,
    a0 => a0,
    z => z,
    la => la, 
    ea => ea, 
    lb => lb, 
    eb => eb, 
    ec => ec
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
ini <= '0';
wait for 30ns;

ini <= '1';
wait for 10ns;

z <= '0';
wait for 10ns;

a0 <= '1';
wait for 10ns;
a0 <= '0';
wait for 10ns;
a0 <= '1';
wait for 10ns;

z <= '1';
wait for 10ns;

ini <= '1';
wait for 10ns;
ini <= '1';
wait for 10ns;
ini <= '0';
wait for 10ns;

end process;

end Behavioral;