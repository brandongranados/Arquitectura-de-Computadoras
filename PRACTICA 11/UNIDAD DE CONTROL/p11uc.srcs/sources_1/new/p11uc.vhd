library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity p12 is port(
    a0, z, ini, clr, clk: in std_logic;
    la, ea, lb, eb, ec: out std_logic
);
end entity;

architecture pr12 of p12 is
type estados is (e0, e1, e2);
signal edo_act, edo_sig : estados;
begin

process(clr, clk)--PROCESO DE UNIDAD DE CONTROL TRANSICION DE ESTADOS
begin
if(clr = '1')then
    edo_act <= e0;
elsif(rising_edge(clk))then
    edo_act <= edo_sig;
end if;
end process;

process(edo_act, ini, z, a0)--PROCESO DE UNIDAD DE CONTROL CALCULOS DE LOS ESTADOS
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
            if(a0 = '1')then
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

end architecture;