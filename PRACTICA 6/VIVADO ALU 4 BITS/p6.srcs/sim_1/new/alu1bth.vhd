library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity alu1bth is
--  Port ( );
end alu1bth;

architecture Behavioral of alu1bth is

component alu1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           CIN : in STD_LOGIC;
           aInvert : in STD_LOGIC;
           bInvert : in STD_LOGIC;
           op : in STD_LOGIC_VECTOR (1 downto 0);
           res : out STD_LOGIC;
           cout : out STD_LOGIC);
end component;

signal A, B, CIN, aInvert, bInvert, res, cout : STD_LOGIC;
signal op : STD_LOGIC_VECTOR (1 downto 0);

begin

sumador1bit: alu1
port map(
            A => A,
           B => B,
           CIN => CIN,
           aInvert => aInvert,
           bInvert => bInvert,
           op => op,
           res => res,
           cout => cout
           );

process
begin

CIN <= '0';
A <= '1';
B <= '0';
aInvert <= '0';
bInvert <= '0';
op <= "00";
wait for 30ns;

CIN <= '0';
A <= '1';
B <= '0';
aInvert <= '0';
bInvert <= '0';
op <= "01";
wait for 30ns;

CIN <= '0';
A <= '1';
B <= '0';
aInvert <= '0';
bInvert <= '0';
op <= "10";
wait for 30ns;

CIN <= '0';
A <= '1';
B <= '0';
aInvert <= '1';
bInvert <= '1';
op <= "01";
wait for 30ns;

CIN <= '0';
A <= '1';
B <= '0';
aInvert <= '1';
bInvert <= '1';
op <= "00";
wait for 30ns;

CIN <= '0';
A <= '1';
B <= '0';
aInvert <= '1';
bInvert <= '0';
op <= "10";
wait for 30ns;

CIN <= '0';
A <= '1';
B <= '0';
aInvert <= '0';
bInvert <= '1';
op <= "10";
wait for 30ns;

CIN <= '0';
A <= '1';
B <= '0';
aInvert <= '1';
bInvert <= '1';
op <= "01";
wait for 30ns;

end process;

end Behavioral;
