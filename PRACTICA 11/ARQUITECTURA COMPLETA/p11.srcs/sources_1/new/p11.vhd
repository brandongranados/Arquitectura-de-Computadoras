library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity p12 is port(
    d : in std_logic_vector(8 downto 0);
    ini, clr, clk: in std_logic;
    a : out std_logic_vector(8 downto 0);
    num: out std_logic_vector(6 downto 0)
);
end entity;

architecture pr12 of p12 is
type estados is (e0, e1, e2);
signal edo_act, edo_sig : estados;
signal b: std_logic_vector(4 downto 0);
signal qa : std_logic_vector(8 downto 0);
signal la, ea, lb, eb, z, ec: std_logic;
begin

process(clr, clk)--PROCESO DE UNIDAD DE CONTROL TRANSICION DE ESTADOS
begin
if(clr = '1')then
    edo_act <= e0;
elsif(rising_edge(clk))then
    edo_act <= edo_sig;
end if;
end process;

process(edo_act, ini, z, qa(0))--PROCESO DE UNIDAD DE CONTROL CALCULOS DE LOS ESTADOS
begin
la <= '0';
ea <= '0';
lb <= '0';
eb <= '0';
ec <= '0';
case edo_act is
    when e0 => 
        lb <= '1';
        if(ini = '1')then
            edo_sig <= e1;
        else
            la <= '1';
            edo_sig <= e0;
        end if;
    when e1 => 
        ea <= '1';
        if(z = '1')then
            edo_sig <= e2;
        else
            if(qa(0) = '1')then
                eb <= '1';
                edo_sig <= e1;
            else
                edo_sig <= e1;
            end if;
        end if;
    when e2 => 
        ec <= '1';
        if(ini = '1')then
            edo_sig <= e2;
        else
            edo_sig <= e0;
        end if;
end case;
end process;

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

--COMPUERTA NOR 
z <= (qa(0) or qa(1) or qa(2) or qa(3) or qa(4)) nor (qa(5) or qa(6) or qa(7) or qa(8));

a <= qa;

end architecture;