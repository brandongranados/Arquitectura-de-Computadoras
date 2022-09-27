library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mFunCodeBTH is
--  Port ( );
end mFunCodeBTH;

architecture Behavioral of mFunCodeBTH is

component MicrocodigoFuncion is
    Port ( dir : in  STD_LOGIC_VECTOR (3 downto 0);
           microFuncion : out  STD_LOGIC_VECTOR (19 downto 0));
end component;

   signal  dir : STD_LOGIC_VECTOR (3 downto 0);
         signal  microFuncion : STD_LOGIC_VECTOR (19 downto 0);
begin

p13: MicrocodigoFuncion
    Port map(
     dir => dir,
           microFuncion => microFuncion
           );

process
begin

dir <= "0000";
wait;

end process;

end Behavioral;
