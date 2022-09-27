library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.std_logic_arith.ALL;

entity memDatos is
    generic ( M : integer := 11; --m del mxn despejado de la formula (2^m * n)/8=4096
              N : integer := 16); --n del mxn
    Port ( CLK, WD : in STD_LOGIC;
           ADD : in STD_LOGIC_VECTOR (N-1 downto 0);
           DATAIN : in STD_LOGIC_VECTOR (N-1 downto 0);
           DATAOUT : out STD_LOGIC_VECTOR (N-1 downto 0));
end memDatos;

architecture Behavioral of memDatos is
    type memory is array (0 to 2**N-1) of std_logic_vector(N-1 downto 0);
    signal memData : memory;
begin
    
    process(CLK)
    begin
    if (CLK'event and CLK ='1' and WD = '1') then --factorizado de los dos if's para ponerlo en uno solo
        memData(conv_integer(ADD)) <= DATAIN;
    end if;
    end process;
    
    DATAOUT <= memData(conv_integer(ADD));

end Behavioral;
