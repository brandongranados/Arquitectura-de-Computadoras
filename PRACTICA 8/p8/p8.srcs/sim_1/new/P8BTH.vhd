library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;
use STD.textio.all;
use IEEE.std_logic_textio.all;

entity memProg_tb is
end;

architecture bench of memProg_tb is

  component memProg
      Port ( DIR : in STD_LOGIC_VECTOR (9 downto 0);
             DATAOUT : out STD_LOGIC_VECTOR (24 downto 0));
  end component;

  signal DIR: STD_LOGIC_VECTOR (9 downto 0);
  signal DATAOUT: STD_LOGIC_VECTOR (24 downto 0);

begin

  uut: memProg port map ( DIR     => DIR,
                          DATAOUT => DATAOUT );

  stimulus: process
    file memProgLectura : text;
    variable renglonVect_leer : line;
    variable var_dir : std_logic_vector( 9 downto 0 );
    
    file memProgEscritura : text;
    variable renglonVect_escribe : line;
    variable var_output : std_logic_vector( 24 downto 0 );
    variable str : string( 1 to 6 );
  begin
        
    file_open( memProgLectura, "/home/brandon/Descargas/memProgLectura.txt", read_mode );
    file_open( memProgEscritura, "/home/brandon/Descargas/memProgEscritura.txt", write_mode );
    
    str := "PC    ";
    write( renglonVect_escribe, str, right, 3 );
    str := "OPCODE";
    write( renglonVect_escribe, str, right, str'length + 1 );
    str := " 19-16";
    write( renglonVect_escribe, str, right, str'length + 1 );
    str := " 15-12";
    write( renglonVect_escribe, str, right, str'length + 1 );
    str := "  11-8";
    write( renglonVect_escribe, str, right, str'length + 1 );
    str := "   7-4";
    write( renglonVect_escribe, str, right, str'length + 1 );
    str := "   3-0";
    write( renglonVect_escribe, str, right, str'length + 1 );
    
    writeline( memProgEscritura, renglonVect_escribe );
    
	for i in 0 to 11 loop --son 12 instrucciones de 0 a 11 por esos devuelve un integer despues mas adelante se necesita
	   
	   readline ( memProgLectura, renglonVect_leer );--lee renglon por renglon hasta ver un espacio del fil lectura en este sus 
	   read( renglonVect_leer, var_dir );
	   DIR <= var_dir;
	   
	   wait for 10ns;
    
	   var_output := DATAOUT;
	   write( renglonVect_escribe, i, right, 2);
	   write( renglonVect_escribe, var_output(24 downto 20), right, 10);
	   write( renglonVect_escribe, var_output(19 downto 16), right, 7);
	   write( renglonVect_escribe, var_output(15 downto 12), right, 7);
	   write( renglonVect_escribe, var_output(11 downto 8), right, 7);
	   write( renglonVect_escribe, var_output(7 downto 4), right, 7);
	   write( renglonVect_escribe, var_output(3 downto 0), right, 7);
       writeline ( memProgEscritura, renglonVect_escribe );
        
	end loop;

	file_close ( memProgLectura );
	file_close ( memProgEscritura );
    
    wait;
  end process;


end bench;