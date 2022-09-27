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
    d : in std_logic_vector(8 downto 0);
    ini, clr, clk: in std_logic;
    a : out std_logic_vector(8 downto 0);
    num: out std_logic_vector(6 downto 0)
);
end component;

signal d : std_logic_vector(8 downto 0);
signal ini, clr, clk: std_logic;
signal a : std_logic_vector(8 downto 0);
signal num: std_logic_vector(6 downto 0);

begin

simulacion : p12 
port map(
    d => d,
    ini => ini, 
    clr => clr, 
    clk => clk,
    a => a,
    num => num
);

process
begin
clr <= '1';
wait for 105ns;

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
wait for 50ns;

ini <= '1';
wait for 120ns;
end process;

process
file ARCH_VEC : TEXT;
variable LINEA_VEC : line;
variable VAR_d : std_logic_vector(8 downto 0);
variable VAR_a : std_logic_vector(8 downto 0);
variable VAR_num: std_logic_vector(6 downto 0);
variable VAR_z : integer;

begin

file_open(ARCH_VEC,"/home/brandon/Descargas/P11ENTRADA.TXT", READ_MODE);
WAIT FOR 200 NS;

FOR I IN 0 TO 4 LOOP
    readline(ARCH_VEC,LINEA_VEC);
    read(LINEA_VEC, VAR_d);
    d <= VAR_d;
    
    WAIT for 170 ns;

END LOOP;

file_close(ARCH_VEC);
wait;

end process;

end Behavioral;
