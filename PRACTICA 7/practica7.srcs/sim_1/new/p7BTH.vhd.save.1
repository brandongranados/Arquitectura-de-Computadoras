library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity p7BTH is
--  Port
end p7BTH;

architecture Behavioral of p7BTH is

component p7 is
    Port ( writeReg, readReg1, readReg2, shamt : in std_logic_vector (3 downto 0);
            writeData : std_logic_vector (15 downto 0);
            clk, clr, wr, she, dir : in std_logic;
            readData1, readData2 : inout std_logic_vector (15 downto 0));
end component;

signal writeReg, readReg1, readReg2, shamt : std_logic_vector (3 downto 0);
signal writeData : std_logic_vector (15 downto 0);
signal clk, clr, wr, she, dir : std_logic;
signal readData1, readData2 : std_logic_vector (15 downto 0);

begin

bancoegistros: p7
    Port map( 
            writeReg => writeReg, 
            readReg1 => readReg1, 
            readReg2 => readReg2, 
            shamt => shamt,
            writeData => writeData,
            clk => clk, 
            clr => clr, 
            wr => wr, 
            she => she, 
            dir => dir,
            readData1 => readData1, 
            readData2 => readData2
            );
            
process
begin
clr<='1';
wait for 20ns;
clr<='0';
wait for 130ns;
clr<='1';
end process;

process
begin
clk<='0';
wait for 5ns;
clk<='1';
wait for 5ns;
end process;

process

begin

wr<='1';
she<='0';
writeReg<="0001";
writeData<="0000000001011001";
wait for 30ns;

wr<='1';
she<='0';
writeReg<="0010";
writeData<="0000000001001000";
wait for 10ns;

wr<='1';
she<='0';
writeReg<="0011";
writeData<="0000000001111011";
wait for 10ns;

wr<='1';
she<='0';
writeReg<="0100";
writeData<="0000000000110101";
wait for 10ns;

readReg1<="0001";
readReg2<="0010";
wait for 10ns;

readReg1<="0011";
readReg2<="0100";
wait for 10ns;

wr<='1';
she<='1';
dir<='1';
shamt<="0011";
writeReg<="0010";
readReg1<="0001";
wait for 10ns;

wr<='1';
she<='1';
dir<='0';
shamt<="0101";
writeReg<="0100";
readReg1<="0011";
wait for 10ns;

readReg1<="0001";
readReg2<="0010";
wait for 10ns;

readReg1<="0011";
readReg2<="0100";
wait for 10ns;

end process;

end Behavioral;






--CODIGO BUENO----




LIBRARY ieee;
LIBRARY STD;
USE STD.TEXTIO.ALL;
USE ieee.std_logic_TEXTIO.ALL; 
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_UNSIGNED.ALL;
USE ieee.std_logic_ARITH.ALL;

ENTITY TB_ARCH_REGISTROS IS
END TB_ARCH_REGISTROS;
architecture behavior of TB_ARCH_REGISTROS is

COMPONENT fileReg
PORT(
writeReg, shamt, readReg1, readReg2 : in STD_LOGIC_VECTOR (3 downto 0);
writeData : in STD_LOGIC_VECTOR (15 downto 0);
clk, clr, wr, she, dir : in STD_LOGIC;
readData1, readData2: inout STD_LOGIC_VECTOR (15 downto 0)
);
END COMPONENT;

signal writeReg, readReg1, readReg2, shamt : std_logic_vector (3 downto 0);
signal writeData : std_logic_vector (15 downto 0);
signal clk, clr, wr, she, dir : std_logic;
signal readData1, readData2 : std_logic_vector (15 downto 0);

begin

pract7: p7 PORT MAP (
writeReg => writeReg,
writeData => writeData,
readReg1 => readReg1,
readReg2 => readReg2,
shamt => shamt,
clk => clk,
clr => clr,
wr => wr,
she => she,
dir => dir,
readData1 => readData1,
readData2 => readData2
);

process
begin
clk<='0';
wait for 5ns;
clk<='1';
wait for 5ns;
end process;

stim_proc: process
file ARCH_RES : TEXT;
variable LINEA_RES : line;
VARIABLE VAR_readData1 : STD_LOGIC_VECTOR (15 downto 0);
VARIABLE VAR_readData2 : STD_LOGIC_VECTOR (15 downto 0);
file ARCH_VEC : TEXT;
variable LINEA_VEC : line;
VARIABLE VAR_writeReg : std_logic_vector(3 downto 0);
VARIABLE VAR_writeData : std_logic_vector(15 downto 0);
VARIABLE VAR_readReg1 : std_logic_vector(3 downto 0);
VARIABLE VAR_readReg2 : std_logic_vector(3 downto 0);
VARIABLE VAR_shamt : std_logic_vector(3 downto 0);
VARIABLE VAR_clr : std_logic;
VARIABLE VAR_wr : std_logic;
VARIABLE VAR_she : std_logic;
VARIABLE VAR_dir : std_logic;
VARIABLE CADENA : STRING(1 TO 4);
begin
file_open(ARCH_VEC,"/home/brandon/Descargas/VECTORES.TXT", READ_MODE);
file_open(ARCH_RES,"/home/brandon/Descargas/RESULTADO.TXT", WRITE_MODE);
CADENA := "RR1 ";
write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
CADENA := " RR2";
write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
CADENA := " SHA";
write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
CADENA := " WRG";
write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
CADENA := " WD";
write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
CADENA := " SHE";
write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
CADENA := " DIR";
write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
CADENA := " RD1";
write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
writeline(ARCH_RES,LINEA_RES);
WAIT FOR 100 NS;
FOR I IN 0 TO 11 LOOP
readline(ARCH_VEC,LINEA_VEC);
Hread(LINEA_VEC, VAR_readReg1);
readReg1 <= VAR_readReg1;
Hread(LINEA_VEC, VAR_readReg2);
readReg2 <= VAR_readReg2;
Hread(LINEA_VEC, VAR_shamt);
shamt <= VAR_shamt;
Hread(LINEA_VEC, VAR_writeReg);
writeReg <= VAR_writeReg;
Hread(LINEA_VEC, VAR_writeData);
writeData <= VAR_writeData;
read(LINEA_VEC, VAR_wr);
wr <= VAR_wr;
read(LINEA_VEC, VAR_she);
she <= VAR_she;
read(LINEA_VEC, VAR_dir);
dir <= VAR_dir;
read(LINEA_VEC, VAR_clr);
clr <= VAR_clr;
WAIT UNTIL RISING_EDGE(CLK);
VAR_readData1 := readData1;
VAR_readData2 := readData2;
Hwrite(LINEA_RES, VAR_readReg1, right, 5);
Hwrite(LINEA_RES, VAR_readReg2, right, 5);
Hwrite(LINEA_RES, VAR_shamt, right, 5);
Hwrite(LINEA_RES, VAR_writeReg, right, 5);
Hwrite(LINEA_RES, VAR_writeData, right, 5);
write(LINEA_RES, VAR_wr, right, 5);
write(LINEA_RES, VAR_she, right, 5);
write(LINEA_RES, VAR_dir, right, 5);
Hwrite(LINEA_RES, VAR_readData1, right, 5);
Hwrite(LINEA_RES, VAR_readData2, right, 5);
writeline(ARCH_RES,LINEA_RES);
end loop;
file_close(ARCH_VEC);
file_close(ARCH_RES);
wait;
end process;
end behavior;
