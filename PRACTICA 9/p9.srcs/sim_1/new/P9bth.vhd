library IEEE;
LIBRARY STD;
USE STD.TEXTIO.ALL;
USE ieee.std_logic_TEXTIO.ALL; 
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_UNSIGNED.ALL;
USE ieee.std_logic_ARITH.ALL;

entity P9bth is
--  Port ( );
end P9bth;

architecture Behavioral of P9bth is

component pila is port(
    pcIn: in std_logic_vector(15 downto 0);
    pcOut: out std_logic_vector(15 downto 0);
    sp : inout std_logic_vector(2 downto 0);
    wpc, clr, clk, up, dw : in std_logic
);
end component;

signal pcIn: std_logic_vector(15 downto 0);
signal pcOut: std_logic_vector(15 downto 0);
signal sp : std_logic_vector(2 downto 0);
signal wpc, clr, clk, up, dw : std_logic;

begin

pilas : pila
 port map(
    pcIn => pcIn,
    pcOut => pcOut,
    sp => sp,
    wpc => wpc, 
    clr => clr, 
    clk => clk, 
    up => up, 
    dw => dw
);

process
begin
clk<='0';
wait for 5ns;
clk<='1';
wait for 5ns;
end process;

process
file ARCH_RES : TEXT;
variable LINEA_RES : line;
file ARCH_VEC : TEXT;
variable LINEA_VEC : line;
VARIABLE CADENA : STRING(1 TO 3);
variable VAR_pcIn: std_logic_vector(15 downto 0);
variable VAR_pcOut: std_logic_vector(15 downto 0);
variable VAR_sp : std_logic_vector(2 downto 0);
variable VAR_wpc, VAR_clr, VAR_clk, VAR_up, VAR_dw : std_logic;
begin

file_open(ARCH_VEC,"/home/brandon/Descargas/ENTRADA.TXT", READ_MODE);
file_open(ARCH_RES,"/home/brandon/Descargas/SALIDA.TXT", WRITE_MODE);
CADENA := "SP ";
write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
CADENA := "PC ";
write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
writeline(ARCH_RES,LINEA_RES);
WAIT FOR 100 NS;

FOR I IN 0 TO 7 LOOP
    readline(ARCH_VEC,LINEA_VEC);
    read(LINEA_VEC, VAR_pcIn);
    pcIn <= VAR_pcIn;
    read(LINEA_VEC, VAR_clr);
    clr <= VAR_clr;
    read(LINEA_VEC, VAR_wpc);
    wpc <= VAR_wpc;
    read(LINEA_VEC, VAR_up);
    up <= VAR_up;
    read(LINEA_VEC, VAR_dw);
    dw <= VAR_dw;
    WAIT UNTIL RISING_EDGE(CLK);
    VAR_pcOut := pcOut;
    VAR_sp := sp;
    hwrite(LINEA_RES, VAR_sp, right, 2);
    hwrite(LINEA_RES, VAR_pcOut, right, 5);
    writeline(ARCH_RES,LINEA_RES);
END LOOP;

file_close(ARCH_VEC);
file_close(ARCH_RES);
wait;

end process;

end Behavioral;
