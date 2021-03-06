LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;
USE work.typeDeclarations.all;

ENTITY SampleContainer IS
PORT(
		clk: in std_logic;
		stream: in std_logic;
		rom1, rom2, rom3: in hex;
		loop1, loop2, loop3: in natural;
		octave: in std_logic_vector (1 downto 0);
		audio_request: in std_logic;
		z: out unsigned (15 downto 0)
);
END ENTITY SampleContainer;

ARCHITECTURE rtl OF SampleContainer IS
component FIFO is
	Generic (
		constant FIFO_DEPTH	: positive := 32
	);
	Port ( 
		CLK		: in  STD_LOGIC;
		RST		: in  STD_LOGIC;
		WriteEn	: in  STD_LOGIC;
		DataIn	: in  unsigned (15 downto 0);
		ReadEn	: in  STD_LOGIC;
		DataOut	: out unsigned (15 downto 0);
		Empty	: out STD_LOGIC;
		Full	: out STD_LOGIC
	);
end component FIFO;

SIGNAL data_in: unsigned (15 downto 0);
SIGNAL empty, full: std_logic;
SIGNAL index1, index2, index3: natural := 0;
SIGNAL data_out: unsigned (15 downto 0);

BEGIN

rom1_cycle: PROCESS (clk, audio_request) IS
BEGIN
	IF rising_edge(clk) THEN
		IF audio_request = '1' THEN
			IF index1 = loop1 THEN
				index1 <= 0;
			ELSE
				index1 <= index1 + 1;
			END IF;
		END IF;
	END IF;
END PROCESS rom1_cycle;

rom2_cycle: PROCESS (clk, audio_request) IS
BEGIN
	IF rising_edge(clk) THEN
		IF audio_request = '1' THEN
			IF index2 = loop2 THEN
				index2 <= 0;
			ELSE
				index2 <= index2 + 1;
			END IF;
		END IF;
	END IF;
END PROCESS rom2_cycle;

rom3_cycle: PROCESS (clk, audio_request) IS
BEGIN
	IF rising_edge(clk) THEN
		IF audio_request = '1' THEN
			IF index3 = loop3 THEN
				index3 <= 0;
			ELSE
				index3 <= index3 + 1;
			END IF;
		END IF;
	END IF;
END PROCESS rom3_cycle;

data_in <= rom1(index1) WHEN octave = "00"
	ELSE rom2(index2) WHEN octave = "01"
	ELSE rom3(index3) WHEN octave = "10";

rom_stream: FIFO port map(audio_request, '0', '1', data_in, '1', data_out, empty, full);

z <= data_out WHEN stream = '1' ELSE X"0000";

END ARCHITECTURE rtl;