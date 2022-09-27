----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.09.2021 15:24:08
-- Design Name: 
-- Module Name: p5bt - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity p5bt is
--  Port ( );
end p5bt;

architecture Behavioral of p5bt is

component p5 is
    Port ( a,b : in STD_LOGIC_VECTOR (7 downto 0);
           sel : in STD_LOGIC;
           cout : out STD_LOGIC;
           s : out STD_LOGIC_VECTOR (7 downto 0));
end component;


signal a,b : STD_LOGIC_VECTOR (7 downto 0);
signal sel : STD_LOGIC;
signal cout : STD_LOGIC;
signal s : STD_LOGIC_VECTOR (7 downto 0);

begin

pr5 : p5
    Port map(
           a => a,
           b => b,
           sel => sel,
           cout => cout,
           s => s
           );
process
begin
    sel <= '0';
    a <= "00010111";
    b <= "01010111";
    wait for 30ns;
    
    sel <= '0';
    a <= "00011010";
    b <= "01011111";
    wait for 30ns;
    
    sel <= '0';
    a <= "00101001";
    b <= "01100010";
    wait for 30ns;
    
    sel <= '0';
    a <= "10111010";
    b <= "00100100";
    wait for 30ns;
    
    sel <= '0';
    a <= "00111111";
    b <= "01100010";
    wait for 30ns;
    
    sel <= '0';
    a <= "00111100";
    b <= "00001111";
    wait for 30ns;
    
    sel <= '0';
    a <= "01111000";
    b <= "00110000";
    wait for 30ns;
    
    sel <= '0';
    a <= "00001011";
    b <= "00001000";
    wait for 30ns;
    
    sel <= '0';
    a <= "00000001";
    b <= "00000100";
    wait for 30ns;
end process;
end Behavioral;
