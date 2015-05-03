--
-- JSInth.vhd
-- top-level entity
--

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_arith.all;

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

component de2_wm8731_audio is
   port (
    clk : in std_logic;                 --    Audio CODEC Chip Clock AUD_XCK
    reset_n : in std_logic;
    test_mode : in std_logic;           --    Audio CODEC controller test mode
    audio_request : out std_logic;      --    Audio controller request new data
    data : in std_logic_vector(15 downto 0);
  
    -- Audio interface signals
    AUD_ADCLRCK  : out std_logic;       --    Audio CODEC ADC LR Clock
    AUD_ADCDAT   : in  std_logic;       --    Audio CODEC ADC Data
    AUD_DACLRCK  : out std_logic;       --    Audio CODEC DAC LR Clock
    AUD_DACDAT   : out std_logic;       --    Audio CODEC DAC Data
    AUD_BCLK     : inout std_logic      --    Audio CODEC Bit-Stream Clock
  );
 end component de2_wm8731_audio;
 
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

BEGIN

PROCESS (clk) IS
BEGIN
	IF (rising_edge(clk)) THEN
		audio_clock <= audio_clock + "1";
	END IF;
END PROCESS;

AUD_XCK <= audio_clock(1);

 i2c : de2_i2c_av_config port map (
    iCLK     => clk,
    iRST_n   => '1',
    I2C_SCLK => I2C_SCLK,
    I2C_SDAT => I2C_SDAT
  );

  V1: de2_wm8731_audio port map (
    clk => audio_clock(1),
    reset_n => '1',
    test_mode => '1',                   -- Output a sine wave
    audio_request => audio_request,
    data => "0000000000000000",
  
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

END ARCHITECTURE main;