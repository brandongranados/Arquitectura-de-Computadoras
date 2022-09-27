library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity p12 is port(
    lb, eb, ec, clr, clk: in std_logic;
    num: out std_logic_vector(6 downto 0)
);
end entity;

architecture pr12 of p12 is
signal b: std_logic_vector(4 downto 0);
begin

process(clr, clk)--PROCESO DE CONTADOR
begin
    if(clr = '1')then
        b <= (others => '0');
    elsif(rising_edge(clk))then
        if(lb = '0' and eb = '0')then
            b <= b;
        elsif(lb = '1' and eb = '0')then
            b <= (others => '0');
        elsif(lb = '0' and eb = '1')then
            b <= b+1;
        end if;
    end if;
end process;

--DECODIFICADOR
num <= "1111110" when b = "0000" and ec = '1' else
        "0110000" when b = "0001" and ec = '1' else
        "1101101" when b = "0010" and ec = '1' else
        "1111001" when b = "0011" and ec = '1' else
        "0110011" when b = "0100" and ec = '1' else
        "1011011" when b = "0101" and ec = '1' else
        "1011111" when b = "0110" and ec = '1' else
        "1110000" when b = "0111" and ec = '1' else
        "1111111" when b = "1000" and ec = '1' else
        "1111011" when b = "1001" and ec = '1' else
        "0000001";

end architecture;