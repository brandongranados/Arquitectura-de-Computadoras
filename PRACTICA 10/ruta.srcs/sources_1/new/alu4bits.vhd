library IEEE;
library work;
use IEEE.STD_LOGIC_1164.ALL;
use work.paqueteALU.all;

entity alu4bits is
    Port ( aluop : in STD_LOGIC_VECTOR (3 downto 0);
           a, b : in std_logic_vector (15 downto 0);
           res : inout STD_LOGIC_VECTOR (15 downto 0);
           bandera : out STD_LOGIC_VECTOR (3 downto 0);
           salida : inout std_logic); -- ULTIMO BIT DE ACARREO
end alu4bits;

architecture Behavioral of alu4bits is

signal c: std_logic_vector(16 downto 0);
signal bader : std_logic;

begin

--aluop(3) es aInvert, aluop(2) es bInvert, aluop(1) es op(1), aluop(0) es op(0)

c(0) <= aluop(2);

ciclo : for i in 0 to 15 generate
    element : alu1 Port map( 
        A => a(i),
           B => b(i),
           CIN => c(i),
           aInvert => aluop(3),
           bInvert => aluop(2),
           op => aluop(1 downto 0),
           res => res(i),
           cout => c(i+1)
           );
end generate;

salida <= c(16);

--BANDERA DE ACARREO
 bandera(0) <= salida;
 
 --BANDERA DE SIGNO
 bandera(2) <= res(15);
 
 --BANDERA 0
 bandera(1) <= ( res(15) or res(14) or res(13) or res(12) or res(11) or res(10) or res(9) or res(8) ) nor ( res(7) or res(6) or res(5) or res(4) or res(3) or res(2) or res(1) or res(0) );
 
 --BANDERA OVERFLOW
 bandera(3) <= salida xor c(15);
 
end Behavioral;