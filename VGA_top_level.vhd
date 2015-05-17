--
-- VGA_top_level.vhd
-- Usage: contains the sync and renderer
--

library IEEE;

use IEEE.std_logic_1164.all;

entity VGA_top_level is
	port(
			--Master inputs
			CLOCK_50 										: in std_logic;
			RESET_N											: in std_logic;
	
			--VGA 
			VGA_RED, VGA_GREEN, VGA_BLUE 					: out std_logic_vector(9 downto 0); 
			HORIZ_SYNC, VERT_SYNC, VGA_BLANK, VGA_CLK		: out std_logic;
			
			--Synth inputs
			keys_vga		: in std_logic_vector(16 downto 0);
			vol_vga			: in std_logic_vector(2 downto 0);
			oct_sel_vga		: in std_logic_vector(1 downto 0);
			synth_sel_vga	: in std_logic_vector(1 downto 0);
			mute_sel_vga	: in std_logic
		);
end entity VGA_top_level;

architecture structural of VGA_top_level is

component pixelGenerator is
	port(
			clk, ROM_clk, rst_n, video_on, eof 				: in std_logic;
			pixel_row, pixel_column						    	: in std_logic_vector(9 downto 0);
			red_out, green_out, blue_out						: out std_logic_vector(9 downto 0);
			
			--Synth inputs
			keys_vga			: in std_logic_vector(16 downto 0);
			vol_vga			: in std_logic_vector(2 downto 0);
			oct_sel_vga		: in std_logic_vector(1 downto 0);
			synth_sel_vga	: in std_logic_vector(1 downto 0);
			mute_sel_vga	: in std_logic
		);
end component pixelGenerator;

component VGA_SYNC is
	port(
			clock_50Mhz										: in std_logic;
			horiz_sync_out, vert_sync_out, 
			video_on, pixel_clock, eof						: out std_logic;												
			pixel_row, pixel_column						    : out std_logic_vector(9 downto 0)
		);
end component VGA_SYNC;

--Signals for VGA sync
signal pixel_row_int 		: std_logic_vector(9 downto 0) := "0000000000";
signal pixel_column_int 	: std_logic_vector(9 downto 0) := "0000000000";
signal video_on_int		: std_logic := '0';
signal VGA_clk_int		: std_logic := '0';
signal eof			: std_logic := '0';

begin

--------------------------------------------------------------------------------------------

	videoGen : pixelGenerator
		port map(CLOCK_50, VGA_clk_int, RESET_N, video_on_int, eof, pixel_row_int, pixel_column_int, VGA_RED, VGA_GREEN,
		VGA_BLUE, keys_vga, vol_vga, oct_sel_vga, synth_sel_vga, mute_sel_vga);

--------------------------------------------------------------------------------------------
--This section should not be modified in your design.  This section handles the VGA timing signals
--and outputs the current row and column.  You will need to redesign the pixelGenerator to choose
--the color value to output based on the current position.

	videoSync : VGA_SYNC
		port map(CLOCK_50, HORIZ_SYNC, VERT_SYNC, video_on_int, VGA_clk_int, eof, pixel_row_int, pixel_column_int);

	VGA_BLANK <= video_on_int;

	VGA_CLK <= VGA_clk_int;

--------------------------------------------------------------------------------------------	

end architecture structural;