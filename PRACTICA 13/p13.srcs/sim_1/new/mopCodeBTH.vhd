library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mopCodeBTH is
--  Port ( );
end mopCodeBTH;

architecture Behavioral of mopCodeBTH is

component MicrocodigoOpcode is
    Port ( dir : in  STD_LOGIC_VECTOR (4 downto 0);
           microOpcode : out  STD_LOGIC_VECTOR (19 downto 0));
end component;

   signal dir :  STD_LOGIC_VECTOR (4 downto 0);
          signal microOpcode : STD_LOGIC_VECTOR (19 downto 0);

begin

p13: MicrocodigoOpcode
    Port map( 
    dir => dir,
           microOpcode => microOpcode
           );

process
begin

dir <= "00000";
wait;

end process;

end Behavioral;
