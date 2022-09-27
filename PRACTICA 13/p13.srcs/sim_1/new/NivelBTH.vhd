library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NivelBTH is
--  Port ( );
end NivelBTH;

architecture Behavioral of NivelBTH is

component Nivel is
    Port ( clk,clr : in  STD_LOGIC;
           na : out  STD_LOGIC);
end component;

    signal clk,clr :  STD_LOGIC;
          signal na :  STD_LOGIC;

begin

p13: Nivel
    Port map(
     clk => clk,
     clr => clr,
           na => na
           );
           
process
begin
clr <='1';
wait for 30ns;
clr <= '0';
wait;
end process;

process
begin

clk <='0';
wait for 5ns;
clk <= '1';
wait for 5ns;
end process;

end Behavioral;
