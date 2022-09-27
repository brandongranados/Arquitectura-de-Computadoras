library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity pila is port(
    pcIn: in std_logic_vector(15 downto 0);
    pcOut: out std_logic_vector(15 downto 0);
    sp : inout std_logic_vector(2 downto 0);
    wpc, clr, clk, up, dw : in std_logic
);
end pila;

architecture p9 of pila is

type contador is array (0 to 2) of std_logic_vector (15 downto 0);
signal pila : contador;

begin

process(clr, clk)
begin

if(clr = '1')then
    sp <= (others => '0');
    for i in 0 to 2 loop
        pila(i) <= (others => '0');
    end loop;
elsif(rising_edge(clk))then
    if(wpc = '0' and up = '0' and dw = '0')then
        sp <= sp;
        pila(conv_integer(sp)) <= pila(conv_integer(sp))+1;
    elsif(wpc = '1' and up = '0' and dw = '0')then
        sp <= sp;
        pila(conv_integer(sp)) <= pcIn;
    elsif(wpc = '1' and up = '1' and dw = '0')then
        sp <= sp+1;
        pila(conv_integer(sp)) <= pcIn;
    elsif(wpc = '0' and up = '0' and dw = '1')then
        sp <= sp-1;
        pila(conv_integer(sp)) <= pila(conv_integer(sp))+1;
    end if;
end if;

end process;

--LECTURA DE LA PILA DADA POR LA POSICION DEL SP
pcOut <= pila(conv_integer(sp));

end architecture;