library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity alu1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           CIN : in STD_LOGIC;
           aInvert : in STD_LOGIC;
           bInvert : in STD_LOGIC;
           op : in STD_LOGIC_VECTOR (1 downto 0);
           res : out STD_LOGIC;
           cout : out STD_LOGIC);
end alu1;

architecture Behavioral of alu1 is

signal auxa, auxb, auxand, auxor, auxxor, auxsuma : std_logic;

begin

--MULTIPLEXORES DE A Y B , DETERMINA SI SON NEGADAS O NO
auxa <= a when aInvert = '0' else not a;
auxb <= b xor bInvert;

--COMPUERTAS LOGICAS AND OR XOR Y EL SUMADOR

auxand <= auxa and auxb;
auxor <= auxa or auxb;
auxxor <= auxa xor auxb;

--SUMADOR EN CASCADA DE UN SOLO BIT
auxsuma <= auxa xor auxb xor cin;
cout <= (auxa and cin) or (auxa and auxb) or (auxb and cin) when op = "11" else '0';

--MULTIPLEXOR DE SALIDA ALU 1 SOLO BIT

res <= auxand when op = "00" else
        auxor when op = "01" else
        auxxor when op = "10" else
        auxsuma;


end Behavioral;