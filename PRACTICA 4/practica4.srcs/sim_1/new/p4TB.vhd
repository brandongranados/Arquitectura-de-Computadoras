library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity p4TB is
end p4TB;

architecture Behavioral of p4TB is


component P4 is
    Port ( a,b : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC;
           s : out STD_LOGIC_VECTOR (3 downto 0);
           cout : out STD_LOGIC);
end component;

    signal a,b :  STD_LOGIC_VECTOR (3 downto 0);
    signal sel : STD_LOGIC;
    signal s :  STD_LOGIC_VECTOR (3 downto 0);
    signal cout:  STD_LOGIC;

begin

PORT MAP( 
        a => a,
        b => b,
        sel => sel,
        s => s,
        cout => cout
        );

    proc: process
    begin
        a <= "1010";
        b <= "0010";
        sel <= '0';
         wait;
    end process;


end Behavioral;


