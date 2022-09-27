library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity p7 is
    Port ( writeReg, readReg1, readReg2, shamt : in std_logic_vector (3 downto 0);
            writeData : in std_logic_vector (15 downto 0);
            clk, clr, wr, she, dir : in std_logic;
            readData1, readData2 : inout std_logic_vector (15 downto 0));
end p7;

architecture Behavioral of p7 is

type palabra is array (0 to 15) of std_logic_vector (15 downto 0);
signal banco : palabra;

begin

    process(clk, clr)
    variable p : std_logic_vector(15 downto 0);
    variable m : std_logic_vector(15 downto 0);
    begin

    if(clr='1')then
        banco <= (others => (others => '0'));
    elsif(rising_edge(clk))then
        p := readData1;
        m := (others => '0');
        if(wr='1' and she='0')then
            banco(conv_integer(writeReg)) <= writeData;--ESCRITURA DE REGISTro
        elsif(wr='1' and she='1' and dir='0')then
            for i in 0 to 3 loop
                for j in 0 to (((2**4)-(2**i))-1)loop
                    if(shamt(i)='0')then
                        m(j) := p(j);
                    elsif(shamt(i)='1')then
                        m(j) := p(j+(2**i));
                    end if;
                end loop;
                for k in ((2**4)-(2**i)) to ((2**4)-1)loop
                    if(shamt(i)='0')then
                        m(k) := p(k);
                    elsif(shamt(i)='1')then
                        m(k) := '0';
                    end if;
                end loop;
            end loop;
            banco(conv_integer(writeReg)) <= m;
            --banco(conv_integer(writeReg)) <= to_stdlogicvector(to_bitvector(banco(conv_integer(readReg1))) srl (conv_integer(shamt)));--CORRIMIENTO A LA DERECHA
        elsif(wr='1' and she='1' and dir='1')then    
            for ii in 0 to 3 loop
                for jj in 0 to ((2**ii)-1)loop
                    if(shamt(ii)='0')then
                        m(jj) := p(jj);
                    elsif(shamt(ii)='1')then
                        m(jj) := '0';
                    end if;
                end loop;
                for kk in (2**ii) to ((2**4)-1)loop
                    if(shamt(ii)='0')then
                        m(kk) := p(kk);
                    elsif(shamt(ii)='1')then
                        m(kk) := p(kk-(2**ii));
                    end if;
                end loop;
            end loop;
            banco(conv_integer(writeReg)) <= m;
            --banco(conv_integer(writeReg)) <= to_stdlogicvector(to_bitvector(banco(conv_integer(readReg1))) sll (conv_integer(shamt)));--CORRIMIENTO A LA IZQUIERDA
        end if;
        
    end if;
    
    end process;

    readData1 <= banco(conv_integer(readReg1));--LECTURA DE REGISTROS PRIMERA SALIDA
    readData2 <= banco(conv_integer(readReg2));--LECTURA DE REGISTROS SEGUNDA SALIDA

end Behavioral;