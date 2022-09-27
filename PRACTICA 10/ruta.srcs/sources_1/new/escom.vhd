library IEEE;
library work;
use IEEE.STD_LOGIC_1164.ALL;
use work.modulos.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity escom is
  Port ( 
            clr, clk : in std_logic);
end escom;

architecture Behavioral of escom is

--SEÑALES DE LA ALU DE 16 BITS
signal aluop : STD_LOGIC_VECTOR (3 downto 0);
signal a, b : std_logic_vector (15 downto 0);
signal res : STD_LOGIC_VECTOR (15 downto 0);
signal bandera : STD_LOGIC_VECTOR (3 downto 0);
signal salida : std_logic;

--SEÑALES DE MEMORIA DE DATOS

signal WD : STD_LOGIC;
signal ADD : STD_LOGIC_VECTOR (15 downto 0);
signal DATAIN : STD_LOGIC_VECTOR (15 downto 0);
signal DATAOUT : STD_LOGIC_VECTOR (15 downto 0);

--SEÑALES DE MEMORIA DE PROGRAMA
signal DIR : STD_LOGIC_VECTOR (15 downto 0);
signal DATAOUTP : STD_LOGIC_VECTOR (24 downto 0);--    DATAOUT DE LA MEMORIA DE PROGRAMA

--SEÑALES DE BANCO DE RESGISTROS
SIGNAL writeReg, readReg1, readReg2, shamt : std_logic_vector (3 downto 0);
SIGNAL writeData : std_logic_vector (15 downto 0);
SIGNAL wr, she, dirA : std_logic;--    DIR DE BANCO DE REGISTROS
SIGNAL readData1, readData2 : std_logic_vector (15 downto 0);

--SEÑALES DE LA PILA
signal pcIn: std_logic_vector(15 downto 0);
signal pcOut: std_logic_vector(15 downto 0);
signal sp : std_logic_vector(2 downto 0);
signal wpc, up, dw : std_logic;

--SEÑALES CONTROL
signal sr2: std_logic;
signal ext, srout: std_logic_vector (15 downto 0);
signal sext: std_logic;
signal sop1, sop2 : std_logic;
signal sdmd: std_logic;
signal sr, swd, sdmp: std_logic;

begin

math : alu4bits
    Port map( 
        aluop => aluop,
           a => a,
           b => b,
           res => res,
           bandera => bandera,
           salida => salida -- ULTIMO BIT DE ACARREO
           ); 

match2 : memDatos
        port map(
        CLK => CLK,
        WD => WD,
        ADD => ADD,
        DATAIN => DATAIN,
        DATAOUT => DATAOUT
        );

MATCH3 : memProg
    Port MAP(
                DIR => DIR,
                DATAOUT => DATAOUTP
           );
           
    MATH4 : p7
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
            dir => dirA,
            readData1 => readData1, 
            readData2 => readData2 
            );
            
      match5 :pila 
            port map(
            pcIn => pcIn,
            pcOut => pcOut,
            sp => sp,
            wpc => wpc, 
            clr => clr, 
            clk =>clk, 
            up => up, 
            dw => dw
        );
        
        dir <= pcOut;
        readReg1 <= DATAOUTP(15 downto 12);
        writeReg <= DATAOUTP(19 downto 16);
        readReg2 <= DATAOUTP(11 downto 8) when sr2 = '0' else DATAOUTP(19 downto 16);
        shamt <= DATAOUTP(7 downto 4);
        ext <= DATAOUTP(11) & DATAOUTP(11) & DATAOUTP(11) & DATAOUTP(11) & DATAOUTP(11 downto 0) when sext = '0' else "0000" & DATAOUTP(11 downto 0);
        a <= readData1 when sop1 = '0' else pcOut;
        b <= readData2 when sop2 = '0' else ext;
        ADD <= res when sdmd = '0' else DATAOUTP(15 downto 0);
        DATAIN  <= readData2 ;
        srout <= DATAOUT when sr = '0' else res;
        writeData <= DATAOUTP(15 downto 0) when swd = '0' else srout;
        pcIn <= DATAOUTP(15 downto 0) when sdmp = '0' else srout;
        
end Behavioral;
