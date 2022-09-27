library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity p12 is port(
    d : in std_logic_vector(8 downto 0);
    la, ea, clr, clk: in std_logic;
    qa : inout std_logic_vector(8 downto 0)
);
end entity;

architecture pr12 of p12 is
begin

process(clr, clk)--PROCESO DE ARREGLO
begin
    if(clr = '1')then
        qa <= (others => '0');
    elsif(rising_edge(clk))then
        if(la = '0' and ea = '0')then
            qa <= qa;
        elsif(la = '1' and ea = '0')then
            qa <= d;
        elsif(la = '0' and ea = '1')then
            qa <= to_stdlogicvector( to_bitvector(qa) srl 1 );
        end if;
    end if;
end process;

end architecture;