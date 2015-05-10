--
-- JSInth.vhd
-- top-level entity
--

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY JSInth IS
	PORT(
		--Inputs
		
		reset		: in std_logic; --N/A
		clk		: in std_logic;
		keys		: in std_logic_vector(16 downto 0);
		vol_up	: in std_logic;
		vol_down	: in std_logic;
		oct_sel	: in std_logic;
		synth_sel: in std_logic;
		mute_sel	: in std_logic;
		
		--VGA
		
		vga_red, vga_green, vga_blue					: out std_logic_vector(9 downto 0);
		horiz_sync, vert_sync, vga_blank, vga_clk	: out std_logic;
		
		-- I2C bus
    
		I2C_SDAT : inout std_logic; -- I2C Data
		I2C_SCLK : out std_logic;   -- I2C Clock
    
		-- Audio CODEC
		
		AUD_ADCLRCK : inout std_logic;                      -- ADC LR Clock
		AUD_ADCDAT 	: in std_logic;                         -- ADC Data
		AUD_DACLRCK : inout std_logic;                      -- DAC LR Clock
		AUD_DACDAT 	: out std_logic;                        -- DAC Data
		AUD_BCLK 	: inout std_logic;                      -- Bit-Stream Clock
		AUD_XCK 		: out std_logic                         -- Chip Clock 
	);
END ENTITY JSInth;

ARCHITECTURE main OF JSInth IS
COMPONENT VGA_top_level IS
	PORT(
		CLOCK_50: in std_logic;
		RESET_N: in std_logic;
		VGA_RED, VGA_GREEN, VGA_BLUE: out std_logic_vector(9 downto 0);
		HORIZ_SYNC, VERT_SYNC, VGA_BLANK, VGA_CLK: out std_logic;
		--main inputs
		keys_vga: in std_logic_vector(16 downto 0);
		vol_vga: in std_logic_vector(2 downto 0);
		oct_sel_vga: in std_logic_vector(1 downto 0);
		synth_sel_vga: in std_logic_vector(1 downto 0);
		mute_sel_vga: in std_logic
	);
END COMPONENT VGA_top_level;

COMPONENT FSM_volume IS
	PORT(
		up, down: in std_logic;
		clk: in std_logic;
		z: out std_logic_vector(2 downto 0)
	);
END COMPONENT FSM_volume;

COMPONENT FSM_octave IS
	PORT(
		button: in std_logic;
		clk: in std_logic;
		z: out std_logic_vector(1 downto 0)
	);
END COMPONENT FSM_octave;

component WM8731_CONTROLLER is
   port (
    clk : in std_logic;                 --    Audio CODEC Chip Clock AUD_XCK
    reset_n : in std_logic;
    test_mode : in std_logic;           --    Audio CODEC controller test mode
    audio_request : out std_logic;      --    Audio controller request new data
    data_in: in unsigned (15 downto 0);
  
    -- Audio interface signals
    AUD_ADCLRCK  : out std_logic;       --    Audio CODEC ADC LR Clock
    AUD_ADCDAT   : in  std_logic;       --    Audio CODEC ADC Data
    AUD_DACLRCK  : out std_logic;       --    Audio CODEC DAC LR Clock
    AUD_DACDAT   : out std_logic;       --    Audio CODEC DAC Data
    AUD_BCLK     : inout std_logic      --    Audio CODEC Bit-Stream Clock
  );
 end component WM8731_CONTROLLER;
 
component de2_i2c_av_config is
  port (
    iCLK : in std_logic;
    iRST_N : in std_logic;
    I2C_SCLK : out std_logic;
    I2C_SDAT : inout std_logic
  );
end component de2_i2c_av_config;

SIGNAL current_volume: std_logic_vector (2 downto 0);
SIGNAL current_octave: std_logic_vector (1 downto 0);
SIGNAL current_synth: std_logic_vector(1 downto 0);
SIGNAL audio_clock: unsigned (1 downto 0) := "00";
SIGNAL audio_request: std_logic;
SIGNAL data_in: unsigned (15 downto 0);
SIGNAL data_counter: unsigned (6 downto 0) := "0000000";

BEGIN

CLK_DIV_AUD: PROCESS (clk) IS
BEGIN
	IF (rising_edge(clk)) THEN
		audio_clock <= audio_clock + "1";
	END IF;
END PROCESS CLK_DIV_AUD;

CLK_DIV_DATA: PROCESS (audio_clock) IS
BEGIN
	IF rising_edge(audio_clock(1)) THEN
		IF audio_request = '1' THEN
			IF data_counter = "1001001" THEN
            			data_counter <= "0000000";
         		ELSE  
            			data_counter <= data_counter + 1;
          		END IF;
		END IF;
	END IF;
END PROCESS CLK_DIV_DATA;

AUD_XCK <= audio_clock(1);

i2c : de2_i2c_av_config port map (
    iCLK     => clk,
    iRST_n   => '1',
    I2C_SCLK => I2C_SCLK,
    I2C_SDAT => I2C_SDAT
);

audiomap: WM8731_CONTROLLER port map (
    clk => audio_clock(1),
    reset_n => '1',
    test_mode => '0',                   -- Output a sine wave
    audio_request => audio_request,
    data_in => data_in,
  
    -- Audio interface signals
    AUD_ADCLRCK  => AUD_ADCLRCK,
    AUD_ADCDAT   => AUD_ADCDAT,
    AUD_DACLRCK  => AUD_DACLRCK,
    AUD_DACDAT   => AUD_DACDAT,
    AUD_BCLK     => AUD_BCLK
  );
 
--map FSMs
volmap: FSM_volume port map(vol_up, vol_down, clk, current_volume);
octmap: FSM_octave port map(oct_sel, clk, current_octave);
synmap: FSM_octave port map(synth_sel, clk, current_synth);
--map VGA monitor
vgamap: VGA_top_level port map(clk, reset, vga_red, vga_green, vga_blue, horiz_sync, vert_sync, vga_blank, vga_clk, keys, current_volume, current_octave, current_synth, mute_sel);

with data_counter select data_in <=
	X"0000" when "0000000",
	X"105E" when "0000001",
	X"2077" when "0000010",
	X"3008" when "0000011",
	X"3ECF" when "0000100",
	X"4C8E" when "0000101",
	X"590B" when "0000110",
	X"6412" when "0000111",
	X"6D74" when "0001000",
	X"750A" when "0001001",
	X"7AB4" when "0001010",
	X"7E5A" when "0001011",
	X"7FEE" when "0001100",
	X"7F67" when "0001101",
	X"7CC9" when "0001110",
	X"781E" when "0001111",
	X"717B" when "0010000",
	X"68FA" when "0010001",
	X"5EC0" when "0010010",
	X"52F8" when "0010011",
	X"45D3" when "0010100",
	X"3789" when "0010101",
	X"2855" when "0010110",
	X"1877" when "0010111",
	X"0833" when "0011000",
	X"F7CA" when "0011001",
	X"E786" when "0011010",
	X"D7A8" when "0011011",
	X"C874" when "0011100",
	X"BA2A" when "0011101",
	X"AD05" when "0011110",
	X"A13D" when "0011111",
	X"9703" when "0100000",
	X"8E82" when "0100001",
	X"87DF" when "0100010",
	X"8334" when "0100011",
	X"8096" when "0100100",
	X"800F" when "0100101",
	X"81A3" when "0100110",
	X"8549" when "0100111",
	X"8AF3" when "0101000",
	X"9289" when "0101001",
	X"9BEB" when "0101010",
	X"A6F2" when "0101011",
	X"B36F" when "0101100",
	X"C12E" when "0101101",
	X"CFF5" when "0101110",
	X"DF86" when "0101111",
	X"EF9F" when "0110000",
	X"0000" when "0110001",
	X"105E" when "0110010",
	X"2077" when "0110011",
	X"3008" when "0110100",
	X"3ECF" when "0110101",
	X"4C8E" when "0110110",
	X"590B" when "0110111",
	X"6412" when "0111000",
	X"6D74" when "0111001",
	X"750A" when "0111010",
	X"7AB4" when "0111011",
	X"7E5A" when "0111100",
	X"7FEE" when "0111101",
	X"7F67" when "0111110",
	X"7CC9" when "0111111",
	X"781E" when "1000000",
	X"717B" when "1000001",
	X"68FA" when "1000010",
	X"5EC0" when "1000011",
	X"52F8" when "1000100",
	X"45D3" when "1000101",
	X"3789" when "1000110",
	X"2855" when "1000111",
	X"1877" when "1001000",
	X"0833" when "1001001",
	X"0000" when others;

END ARCHITECTURE main;