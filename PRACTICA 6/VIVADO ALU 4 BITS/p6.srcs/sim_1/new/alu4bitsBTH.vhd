library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity alu4bitsBTH is
--  Port ( );
end alu4bitsBTH;

architecture Behavioral of alu4bitsBTH is

component alu4bits is
    Port ( a, b, aluop : in STD_LOGIC_VECTOR (3 downto 0);
           res : inout STD_LOGIC_VECTOR (3 downto 0);
           bandera : out STD_LOGIC_VECTOR (3 downto 0);
           salida : inout std_logic);
end component;

signal a, b, aluop : STD_LOGIC_VECTOR (3 downto 0);
signal res : STD_LOGIC_VECTOR (3 downto 0);
signal bandera : STD_LOGIC_VECTOR (3 downto 0);
signal salida : std_logic;

begin

aluFin : alu4bits
    Port map( 
        a => a, 
        b => b, 
        aluop => aluop,
           res => res,
           bandera => bandera,
           salida => salida
           );

process
begin

a <= "0101";--NUMERO 5
b <= "1110";--NUMERO -2 EN COMPLEMENTO A 2
aluop <= "0011";-- A + B
wait for 30ns;

a <= "0101";--NUMERO 5
b <= "1110";--NUMERO -2 EN COMPLEMENTO A 2
aluop <= "0111";--A - B
wait for 30ns;

a <= "0101";--NUMERO 5
b <= "1110";--NUMERO -2 EN COMPLEMENTO A 2
aluop <= "0000";--AND
wait for 30ns;

a <= "0101";--NUMERO 5
b <= "1110";--NUMERO -2 EN COMPLEMENTO A 2
aluop <= "1101";--NAND
wait for 30ns;

a <= "0101";--NUMERO 5
b <= "1110";--NUMERO -2 EN COMPLEMENTO A 2
aluop <= "0001";--OR
wait for 30ns;

a <= "0101";--NUMERO 5
b <= "1110";--NUMERO -2 EN COMPLEMENTO A 2
aluop <= "1100";--NOR
wait for 30ns;

a <= "0101";--NUMERO 5
b <= "1110";--NUMERO -2 EN COMPLEMENTO A 2
aluop <= "0010";--XOR
wait for 30ns;

a <= "0101";--NUMERO 5
b <= "1110";--NUMERO -2 EN COMPLEMENTO A 2
aluop <= "0110";--XNOR
wait for 30ns;

a <= "0101";--NUMERO 5
b <= "0111";--NUMERO 7
aluop <= "0011";--SUMA
wait for 30ns;

a <= "0101";--NUMERO 5
b <= "0101";--NUMERO 5
aluop <= "0111";--RESTA
wait for 30ns;

a <= "0101";--NUMERO 5
b <= "0101";--NUMERO 5
aluop <= "1101";--NAND
wait for 30ns;

end process;

end Behavioral;
