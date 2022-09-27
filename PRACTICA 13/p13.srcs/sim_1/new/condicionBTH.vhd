library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity condicionBTH is
--  Port ( );
end condicionBTH;

architecture Behavioral of condicionBTH is

component Condicion is
    Port ( Rflags : in  STD_LOGIC_VECTOR (3 downto 0);
           eq,neq,lt,le,g_t,get : out  STD_LOGIC);
end component;

   signal Rflags : STD_LOGIC_VECTOR (3 downto 0);
         signal  eq,neq,lt,le,g_t,get :  STD_LOGIC;

begin

p13: Condicion
    Port map( 
    Rflags => Rflags,
           eq => eq,
           neq => neq,
           lt => lt,
           le => le,
           g_t => g_t,
           get => get
           );

process
begin

Rflags <= "0000";
wait;

end process;

end Behavioral;
