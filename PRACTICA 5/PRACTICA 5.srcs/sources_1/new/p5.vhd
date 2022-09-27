library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity p5 is
    Port ( a,b : in STD_LOGIC_VECTOR (7 downto 0);
           sel : in STD_LOGIC;
           cout : out STD_LOGIC;
           s : out STD_LOGIC_VECTOR (7 downto 0));
end p5;

architecture Behavioral of p5 is
begin
process(a,b,sel)
variable c: std_logic_vector(8 downto 0);
variable p, g: std_logic_vector(7 downto 0);
variable pj, gk, pm: std_logic;
begin
    c(0):=sel;
    gk := '0';
    pm := '1';
    for z in 0 to 7 loop
        p(z) := a(z) xor b(z);
        g(z) := a(z) and b(z);
    end loop;
    for i in 0 to 7 loop
        pj := c(0);
        for j in 0 to i loop
            pj := pj and p(j);
        end loop;
        for k in 0 to i-1 loop
            for m in k+1 to i loop
              pm := pm and p(m);  
            end loop;
            gk := gk or (g(k) and pm);
        end loop;
        c(i+1) := (pj or gk) or g(i);
        s(i) <= p(i) xor c(i);
    end loop;
    cout<=c(8);
end process;
end Behavioral;
