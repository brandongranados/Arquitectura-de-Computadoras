library IEEE;
library work;
use IEEE.STD_LOGIC_1164.ALL;
use work.paqueteALU.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


package modulos is

component alu4bits is
    Port ( aluop : in STD_LOGIC_VECTOR (3 downto 0);
           a, b : in std_logic_vector (15 downto 0);
           res : inout STD_LOGIC_VECTOR (15 downto 0);
           bandera : out STD_LOGIC_VECTOR (3 downto 0);
           salida : inout std_logic); -- ULTIMO BIT DE ACARREO
end component;

component memDatos is
    Port ( CLK, WD : in STD_LOGIC;
           ADD : in STD_LOGIC_VECTOR (15 downto 0);
           DATAIN : in STD_LOGIC_VECTOR (15 downto 0);
           DATAOUT : out STD_LOGIC_VECTOR (15 downto 0));
end component;

component memProg is
    generic ( N : integer := 16;--N es el nxm donde n es 10 despejado de la formula (2^N *25)/8 =3200bytes
              M : integer := 25);--M de mxn donde es el num de bits que tiene el set de instrucciones del escomips para escribir en la memoria del programa
    Port ( DIR : in STD_LOGIC_VECTOR (N-1 downto 0);
           DATAOUT : out STD_LOGIC_VECTOR (M-1 downto 0));
end component;

component p7 is
    Port ( writeReg, readReg1, readReg2, shamt : in std_logic_vector (3 downto 0);
            writeData : in std_logic_vector (15 downto 0);
            clk, clr, wr, she, dir : in std_logic;
            readData1, readData2 : inout std_logic_vector (15 downto 0));
end component;

component pila is port(
    pcIn: in std_logic_vector(15 downto 0);
    pcOut: out std_logic_vector(15 downto 0);
    sp : inout std_logic_vector(2 downto 0);
    wpc, clr, clk, up, dw : in std_logic
);
end component;

end package;