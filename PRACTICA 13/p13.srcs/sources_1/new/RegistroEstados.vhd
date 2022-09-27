library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RegistroEstados is
    Port ( flags : in  STD_LOGIC_VECTOR (3 downto 0);
           clr,clk,lf : in  STD_LOGIC;
           Rflags : out  STD_LOGIC_VECTOR (3 downto 0));
end RegistroEstados;

architecture Behavioral of RegistroEstados is

begin
    process( clk, clr )
        begin
        if ( clr ='1') then
            rflags<= (others => '0');
        elsif ( falling_edge (clk) ) then
            if ( lf ='1' ) then
                Rflags<=flags;
            end if;
        end if;
    end process;
end Behavioral;