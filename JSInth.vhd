--
-- JSInth.vhd
-- top-level entity
--

-- README
-- Here's the things you guys gotta do.
--
-- Ian / Sebastian:
-- I set up the multiplexer at the end of this file to select the correct synth (no synth,
-- reverb, flanger) depending of the current state of the synth FSM. It also incorporates the mute (sends 0x0000 when mute is on).
-- I set up Ian's reverb similar to Sebastian's flanger, feel free to modify the port map as you see fit. Uncomment the port map to
-- synthesize the reverb/flanger. Since the reverb had an
-- enable bit (which is the 0 bit of the current_synth signal), I also assigned an enable bit to the flanger (which is bit 1 of
-- current_synth). Testbench thoroughly as you'll probably find bugs when you try to compile it in Quartus.
--
-- Spencer:
-- Replace the de2_i2c_av_config.v with the new version that takes current_volume as a parameter, compile and test it. There's no way
-- you can testbench that. If you wanna speed up the compiling, go to audioROM.vhd and comment all except one of the keyxx_map port
-- maps to avoid synthesizing the roms (speeds it up tons). Don't forget to uncomment them if you wanna hear full sounds.
-- Also, the 4 notes of octave 6 are not the correct samples (I used the app and their frequency is much lower than what they should be).
-- Double check the samples and the num_samples ROM (maybe it has a much higher sample count but that shouldn't matter). Else it could be
-- a hardware limitation but double check if you can regardless.

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;
USE work.constants.all;

ENTITY JSInth IS
	PORT(
		--Inputs
		
		reset		: in std_logic; --N/A
		clk		: in std_logic;
		keys		: in std_logic_vector(15 downto 0);
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
		keys_vga: in std_logic_vector(15 downto 0);
		vol_vga: in std_logic_vector(2 downto 0);
		oct_sel_vga: in std_logic_vector(1 downto 0);
		synth_sel_vga: in std_logic_vector(1 downto 0);
		mute_sel_vga: in std_logic
	);
END COMPONENT VGA_top_level;

COMPONENT audioROM IS
	PORT(
		clk: in std_logic;
		audio_request: in std_logic;
		keys: in std_logic_vector (15 downto 0);
		octave: in std_logic_vector (1 downto 0);
		z: out unsigned (15 downto 0)
	);
END COMPONENT audioROM;

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

COMPONENT FSM_synth IS
	PORT(
		button: in std_logic;
		clk: in std_logic;
		z: out std_logic_vector(1 downto 0)
	);
END COMPONENT FSM_synth;

COMPONENT WM8731_CONTROLLER IS
   PORT(
    clk : in std_logic;
    reset_n : in std_logic;
    audio_request : out std_logic;
    data_in: in unsigned (15 downto 0);
  
    AUD_ADCLRCK: out std_logic;
    AUD_ADCDAT: in  std_logic;
    AUD_DACLRCK: out std_logic;
    AUD_DACDAT: out std_logic;
    AUD_BCLK: inout std_logic
  );
END COMPONENT WM8731_CONTROLLER;
 
component de2_i2c_av_config is
  port (
    iCLK : in std_logic;
    iRST_N : in std_logic;
    I2C_SCLK : out std_logic;
    I2C_SDAT : inout std_logic
  );
end component de2_i2c_av_config;

component reverb is
	port(
		source_signal : in unsigned(DATA_SIZE - 1 downto 0);
		clear_bit, clk, switch: in std_logic;
		output: out unsigned(DATA_SIZE - 1 downto 0)
		);
end component reverb;

SIGNAL current_volume: std_logic_vector (2 downto 0);
SIGNAL current_octave: std_logic_vector (1 downto 0);
SIGNAL current_synth: std_logic_vector(1 downto 0);

SIGNAL audio_clock: unsigned (1 downto 0) := "00";
SIGNAL audio_request: std_logic;
SIGNAL data_buffer: unsigned (15 downto 0);

SIGNAL synth_data: unsigned(15 downto 0);
SIGNAL reverb_data: unsigned(15 downto 0);
SIGNAL flanger_data: unsigned(15 downto 0);
SIGNAL controller_data: unsigned(15 downto 0);

BEGIN

CLK_DIV_AUD: PROCESS (clk) IS
BEGIN
	IF (rising_edge(clk)) THEN
		audio_clock <= audio_clock + "1";
	END IF;
END PROCESS CLK_DIV_AUD;

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
    audio_request => audio_request,
    data_in => controller_data,
  
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
synmap: FSM_synth port map(synth_sel, clk, current_synth);
--map VGA monitor
vgamap: VGA_top_level port map(clk, reset, vga_red, vga_green, vga_blue, horiz_sync, vert_sync, vga_blank, vga_clk, keys, current_volume, current_octave, current_synth, mute_sel);
--map ROM
rommap: audioROM port map(audio_clock(1), audio_request, keys, current_octave, synth_data);
--map Reverb
--reverbmap: reverb port map(synth_data, '0', clk, current_synth(0), reverb_data);
--map Flanger
--flangermap: flanger port map(synth_data, '0', clk, current_synth(1), flanger_data);

--multiplexer to choose data to go into the WM8731 controller_data, also incorporates mute
controller_data <= X"0000" WHEN mute_sel = '1' ELSE
						 synth_data WHEN current_synth = "00" ELSE
						 reverb_data WHEN current_synth = "01" ELSE
						 flanger_data WHEN current_synth = "10" ELSE
						 X"0000";

END ARCHITECTURE main;