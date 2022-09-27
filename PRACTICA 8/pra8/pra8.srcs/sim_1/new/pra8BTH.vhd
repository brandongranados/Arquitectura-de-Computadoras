library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;
use STD.textio.all;
use IEEE.std_logic_textio.all;

entity memDatos_tb is
end;

architecture bench of memDatos_tb is

  component memDatos
      Port ( CLK, WD : in STD_LOGIC;
             ADD : in STD_LOGIC_VECTOR (10 downto 0);
             DATAIN : in STD_LOGIC_VECTOR (15 downto 0);
             DATAOUT : out STD_LOGIC_VECTOR (15 downto 0));
  end component;

  signal CLK, WD: STD_LOGIC;
  signal ADD: STD_LOGIC_VECTOR (10 downto 0);
  signal DATAIN: STD_LOGIC_VECTOR (15 downto 0);
  signal DATAOUT: STD_LOGIC_VECTOR (15 downto 0);

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin

  uut: memDatos port map ( CLK     => CLK,
                           WD      => WD,
                           ADD     => ADD,
                           DATAIN  => DATAIN,
                           DATAOUT => DATAOUT );

  stimulus: process
    file memDatosLectura : text;
    variable renglonVect_leer : line;
    variable var_data_bus : std_logic_vector( 15 downto 0 ); -- Data in.
    variable var_addr : std_logic_vector( 10 downto 0 ); -- Address bus.
    variable var_wd : std_logic;
    
    file memDatosEscritura : text;
    variable renglonVect_escribe : line;
    variable var_output : std_logic_vector( 15 downto 0 ); -- Data out.
    variable str : string( 1 to 7 );

  begin
    file_open( memDatosLectura, "/home/brandon/Descargas/memDatosLectura.txt", read_mode );
    file_open( memDatosEscritura, "/home/brandon/Descargas/memDatosEscritura.txt", write_mode );
    
    str := "DIR    ";
    write( renglonVect_escribe, str, right, str'length + 1 );--renglonVect_escribe, str, right es de horizontal, str'lenght +1 pa un espacio
    str := "WD     ";
    write( renglonVect_escribe, str, right, str'length + 1 );
    str := "DATAIN ";
    write( renglonVect_escribe, str, right, str'length + 1 );
    str := "DATAOUT";
    write( renglonVect_escribe, str, right, str'length + 1 );
    writeline( memDatosEscritura, renglonVect_escribe );--escribe cada renglon en el file de memDatosEscritura
    
	for i in 0 to 5 loop
		
		readline ( memDatosLectura, renglonVect_leer );
		read( renglonVect_leer, var_wd );
		WD <= var_wd;
		hread( renglonVect_leer, var_data_bus );
		DATAIN <= var_data_bus;
		read( renglonVect_leer, var_addr );
		ADD <= var_addr;
		
		wait until rising_edge (CLK); -- al leer una parte, que es asincrono, es normal que tenga UUUU en la simulacion porque es que todavia no hay el segundo flanco de asenso para hacer la escritura
		wait until rising_edge (CLK); --es importante este doble para que alcance el acenso del flanco de reloj
    
		var_output := DATAOUT;
		hwrite( renglonVect_escribe, var_addr, right, 4);--line
		write( renglonVect_escribe, var_wd, right, 6);
		hwrite( renglonVect_escribe, var_data_bus, right, 12);
		hwrite( renglonVect_escribe, var_output, right, 8);

		writeline ( memDatosEscritura, renglonVect_escribe );
	end loop;

	file_close ( memDatosLectura );
	file_close ( memDatosEscritura );

    stop_the_clock <= true;
    wait;
  end process;

  clocking: process
  begin
    while not stop_the_clock loop
      CLK <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;

end bench;