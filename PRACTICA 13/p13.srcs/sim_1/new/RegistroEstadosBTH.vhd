library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RegistroEstadosBTH is
--  Port ( );
end RegistroEstadosBTH;

architecture Behavioral of RegistroEstadosBTH is

component RegistroEstados is
    Port ( flags : in  STD_LOGIC_VECTOR (3 downto 0);
           clr,clk,lf : in  STD_LOGIC;
           Rflags : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

   signal flags :  STD_LOGIC_VECTOR (3 downto 0);
         signal  clr,clk,lf :  STD_LOGIC;
          signal Rflags :  STD_LOGIC_VECTOR (3 downto 0);

begin

p13: RegistroEstados
    Port map( 
    flags => flags,
           clr => clr,
           clk => clk,
           lf =>  lf,
           Rflags => Rflags
           );
process
begin
clr <='1';
wait for 30ns;
clr <= '0';
wait;
end process;

process
begin

clk <='0';
wait for 5ns;
clk <= '1';
wait for 5ns;
end process;

process
begin
flags <= "1010";
lf <= '1';
wait;
end process;

end Behavioral;
