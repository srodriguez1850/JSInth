LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_arith.all;

ENTITY JSInth IS
	PORT(
		--main inputs
		reset: in std_logic; --not applicable
		clk: in std_logic;
		keys: in std_logic_vector(16 downto 0);
		vol_up: in std_logic;
		vol_down: in std_logic;
		oct_sel: in std_logic;
		synth_sel: in std_logic;
		mute_sel: in std_logic;
		----main outputs
		--VGA
		vga_red, vga_green, vga_blue: out std_logic_vector(9 downto 0);
		horiz_sync, vert_sync, vga_blank, vga_clk: out std_logic
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
		oct_sel_vga: in std_logic;
		synth_sel_vga: in std_logic;
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

SIGNAL current_volume: std_logic_vector (2 downto 0);

BEGIN
--map volume FSM
volmap: FSM_volume port map(vol_up, vol_down, clk, current_volume);
--map VGA monitor
vgamap: VGA_top_level port map(clk, reset, vga_red, vga_green, vga_blue, horiz_sync, vert_sync, vga_blank, vga_clk, keys, current_volume, oct_sel, synth_sel, mute_sel);

END ARCHITECTURE main;