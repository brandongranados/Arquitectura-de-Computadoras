library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.std_logic_arith.ALL;

entity memProg is
    generic ( N : integer := 10;--N es el nxm donde n es 10 despejado de la formula (2^N *25)/8 =3200bytes
              M : integer := 25);--M de mxn donde es el num de bits que tiene el set de instrucciones del escomips para escribir en la memoria del programa
    Port ( DIR : in STD_LOGIC_VECTOR (N-1 downto 0);
           DATAOUT : out STD_LOGIC_VECTOR (M-1 downto 0));
end memProg;

architecture Behavioral of memProg is
    constant LI : std_logic_vector (4 downto 0) := "00001";
    constant SWI : std_logic_vector (4 downto 0) := "00011";
    constant BNEI : std_logic_vector (4 downto 0) := "01110";
    constant OPR : std_logic_vector (4 downto 0) := "00000";--puede ser tambien ADD en lugar de OPR es que todos los que tienen R es lo mismo 00000 principio como todos los tipo R en el set de instr
    constant ADDI : std_logic_vector (4 downto 0) := "00101";
    constant B : std_logic_vector (4 downto 0) := "10011";
    constant NOP : std_logic_vector (4 downto 0) := "10110";
    constant SU : std_logic_vector (3 downto 0) := "0000";
    constant R0 : std_logic_vector (3 downto 0) := "0000";
    constant R1 : std_logic_vector (3 downto 0) := "0001";
    constant R2 : std_logic_vector (3 downto 0) := "0010";
    constant R3 : std_logic_vector (3 downto 0) := "0011";
    constant R4 : std_logic_vector (3 downto 0) := "0100";
    
    type memory is array (0 to 2**N-1) of std_logic_vector(M-1 downto 0);
    constant memProg : memory := ( 
    LI & R0 & x"0000",
    LI & R1 & x"0001",
    LI & R2 & x"0000",
    LI & R3 & x"000C",
    OPR & R4 & R0 & R1 & SU & x"0", --CICLO1
    SWI & R4 & x"0048",
    ADDI & R0 & R1 & x"000",
    ADDI & R1 & R4 & x"000",
    ADDI & R2 & R2 & x"001",
    BNEI & R3 & R2 & x"FFB",
    NOP & SU & SU & SU & SU & SU,
    B & SU & x"000A",
    others => (others => '0'));
begin
    
    DATAOUT <= memProg(conv_integer(DIR));

end Behavioral;