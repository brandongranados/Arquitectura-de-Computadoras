library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity P4 is
    Port ( a,b : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC;
           s : out STD_LOGIC_VECTOR (3 downto 0);
           cout : out STD_LOGIC);
end P4;

architecture Behavioral of P4 is

signal eb: std_logic_vector(3 downto 0);
signal c: std_logic_vector(4 downto 0);

begin

    c(0)<=sel;

    ciclo: for i in 0 to 3 generate
        
        eb(i) <= b(i) xor c(0);
        s(i)<=a(i) xor eb(i) xor c(i);
        c(i+1)<=(a(i) and c(i)) or ( a(i) and eb(i) ) or ( eb(i) and c(i) );
        
    end generate;
    cout<=c(4);
end Behavioral;
