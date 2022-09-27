library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoBTH is
--  Port ( );
end decoBTH;

architecture Behavioral of decoBTH is

component DecodificadorInstruccion is
    Port ( opcode : in  STD_LOGIC_VECTOR (4 downto 0);
           tipo_r,beqi,bneqi,blti,bleti,bgti,bgeti : out  STD_LOGIC);
end component;

signal opcode :  STD_LOGIC_VECTOR (4 downto 0);
signal tipo_r,beqi,bneqi,blti,bleti,bgti,bgeti :  STD_LOGIC;

begin

p13: DecodificadorInstruccion
    Port map( 
        opcode => opcode,
           tipo_r => tipo_r,
           beqi => beqi,
           bneqi => bneqi,
           blti => blti,
           bleti => bleti,
           bgti => bgti,
           bgeti => bgeti
           );

process
begin

opcode <= "00000";
wait;

end process;

end Behavioral;
