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
    la, ea, clr, clk: in std_logic;
    qa : inout std_logic_vector(8 downto 0)
);
end component;

signal d : std_logic_vector(8 downto 0);
signal la, ea, clr, clk: std_logic;
signal qa : std_logic_vector(8 downto 0);

begin

simulacion : p12 
port map(
    d => d,
    clr => clr,
    la => la, 
    ea => ea, 
    clk => clk,
    qa => qa
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

la <= '0';
ea <= '0';
WAIT for 110 ns;

la <= '1';
ea <= '0';
WAIT for 10 ns;

la <= '0';
ea <= '1';
WAIT for 10 ns;

end process;

process
file ARCH_VEC : TEXT;
variable LINEA_VEC : line;
variable VAR_d : std_logic_vector(8 downto 0);
variable VAR_qa : std_logic_vector(8 downto 0);

begin

file_open(ARCH_VEC,"/home/brandon/Descargas/P11ENTRADA.TXT", READ_MODE);
WAIT FOR 100 NS;

FOR I IN 0 TO 4 LOOP
    readline(ARCH_VEC,LINEA_VEC);
    read(LINEA_VEC, VAR_d);
    d <= VAR_d;
    
    WAIT for 100 ns;

END LOOP;

file_close(ARCH_VEC);
wait;

end process;

end Behavioral;