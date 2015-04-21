-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "04/21/2015 17:23:05"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	JSInth IS
    PORT (
	reset : IN std_logic;
	clk : IN std_logic;
	keys : IN std_logic_vector(16 DOWNTO 0);
	vol_up : IN std_logic;
	vol_down : IN std_logic;
	oct_sel : IN std_logic;
	synth_sel : IN std_logic;
	mute_sel : IN std_logic;
	vga_red : BUFFER std_logic_vector(9 DOWNTO 0);
	vga_green : BUFFER std_logic_vector(9 DOWNTO 0);
	vga_blue : BUFFER std_logic_vector(9 DOWNTO 0);
	horiz_sync : BUFFER std_logic;
	vert_sync : BUFFER std_logic;
	vga_blank : BUFFER std_logic;
	vga_clk : BUFFER std_logic
	);
END JSInth;

-- Design Ports Information
-- reset	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oct_sel	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- synth_sel	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_red[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_red[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_red[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_red[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_red[4]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_red[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_red[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_red[7]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_red[8]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_red[9]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_green[0]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_green[1]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_green[2]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_green[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_green[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_green[5]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_green[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_green[7]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_green[8]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_green[9]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blue[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blue[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blue[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blue[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blue[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blue[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blue[6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blue[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blue[8]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blue[9]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horiz_sync	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vert_sync	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blank	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_clk	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[16]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[12]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[14]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[9]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[11]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[0]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[2]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[4]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[7]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[5]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[10]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[6]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[8]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[13]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[15]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mute_sel	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vol_down	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vol_up	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF JSInth IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_keys : std_logic_vector(16 DOWNTO 0);
SIGNAL ww_vol_up : std_logic;
SIGNAL ww_vol_down : std_logic;
SIGNAL ww_oct_sel : std_logic;
SIGNAL ww_synth_sel : std_logic;
SIGNAL ww_mute_sel : std_logic;
SIGNAL ww_vga_red : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_vga_green : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_vga_blue : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_horiz_sync : std_logic;
SIGNAL ww_vert_sync : std_logic;
SIGNAL ww_vga_blank : std_logic;
SIGNAL ww_vga_clk : std_logic;
SIGNAL \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vgamap|videoSync|pixel_clock_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \volmap|div_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \oct_sel~input_o\ : std_logic;
SIGNAL \synth_sel~input_o\ : std_logic;
SIGNAL \vga_red[0]~output_o\ : std_logic;
SIGNAL \vga_red[1]~output_o\ : std_logic;
SIGNAL \vga_red[2]~output_o\ : std_logic;
SIGNAL \vga_red[3]~output_o\ : std_logic;
SIGNAL \vga_red[4]~output_o\ : std_logic;
SIGNAL \vga_red[5]~output_o\ : std_logic;
SIGNAL \vga_red[6]~output_o\ : std_logic;
SIGNAL \vga_red[7]~output_o\ : std_logic;
SIGNAL \vga_red[8]~output_o\ : std_logic;
SIGNAL \vga_red[9]~output_o\ : std_logic;
SIGNAL \vga_green[0]~output_o\ : std_logic;
SIGNAL \vga_green[1]~output_o\ : std_logic;
SIGNAL \vga_green[2]~output_o\ : std_logic;
SIGNAL \vga_green[3]~output_o\ : std_logic;
SIGNAL \vga_green[4]~output_o\ : std_logic;
SIGNAL \vga_green[5]~output_o\ : std_logic;
SIGNAL \vga_green[6]~output_o\ : std_logic;
SIGNAL \vga_green[7]~output_o\ : std_logic;
SIGNAL \vga_green[8]~output_o\ : std_logic;
SIGNAL \vga_green[9]~output_o\ : std_logic;
SIGNAL \vga_blue[0]~output_o\ : std_logic;
SIGNAL \vga_blue[1]~output_o\ : std_logic;
SIGNAL \vga_blue[2]~output_o\ : std_logic;
SIGNAL \vga_blue[3]~output_o\ : std_logic;
SIGNAL \vga_blue[4]~output_o\ : std_logic;
SIGNAL \vga_blue[5]~output_o\ : std_logic;
SIGNAL \vga_blue[6]~output_o\ : std_logic;
SIGNAL \vga_blue[7]~output_o\ : std_logic;
SIGNAL \vga_blue[8]~output_o\ : std_logic;
SIGNAL \vga_blue[9]~output_o\ : std_logic;
SIGNAL \horiz_sync~output_o\ : std_logic;
SIGNAL \vert_sync~output_o\ : std_logic;
SIGNAL \vga_blank~output_o\ : std_logic;
SIGNAL \vga_clk~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \vgamap|videoSync|pixel_clock_int~0_combout\ : std_logic;
SIGNAL \vgamap|videoSync|pixel_clock_int~feeder_combout\ : std_logic;
SIGNAL \vgamap|videoSync|pixel_clock_int~q\ : std_logic;
SIGNAL \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~0_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~11\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~12_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~13\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~14_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~15\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~16_combout\ : std_logic;
SIGNAL \vgamap|videoSync|h_count~0_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Equal0~2_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~17\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~18_combout\ : std_logic;
SIGNAL \vgamap|videoSync|h_count~1_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Equal0~0_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Equal0~3_combout\ : std_logic;
SIGNAL \vgamap|videoSync|h_count~3_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~1\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~2_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~3\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~4_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~5\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~6_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~7\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~8_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~9\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~10_combout\ : std_logic;
SIGNAL \vgamap|videoSync|h_count~2_combout\ : std_logic;
SIGNAL \vgamap|videoSync|LessThan5~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~12_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~5\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~6_combout\ : std_logic;
SIGNAL \vgamap|videoSync|process_1~3_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Equal1~0_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Equal0~1_combout\ : std_logic;
SIGNAL \vgamap|videoSync|LessThan1~1_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~0_combout\ : std_logic;
SIGNAL \vgamap|videoSync|v_count~8_combout\ : std_logic;
SIGNAL \vgamap|videoSync|LessThan1~0_combout\ : std_logic;
SIGNAL \vgamap|videoSync|LessThan1~2_combout\ : std_logic;
SIGNAL \vgamap|videoSync|v_count[9]~1_combout\ : std_logic;
SIGNAL \vgamap|videoSync|v_count[4]~0_combout\ : std_logic;
SIGNAL \vgamap|videoSync|v_count[3]~11_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~7\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~8_combout\ : std_logic;
SIGNAL \vgamap|videoSync|v_count[4]~7_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~9\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~10_combout\ : std_logic;
SIGNAL \vgamap|videoSync|v_count[5]~3_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~11\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~12_combout\ : std_logic;
SIGNAL \vgamap|videoSync|v_count[6]~4_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~13\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~14_combout\ : std_logic;
SIGNAL \vgamap|videoSync|v_count[7]~5_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~15\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~16_combout\ : std_logic;
SIGNAL \vgamap|videoSync|v_count[8]~6_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~17\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~18_combout\ : std_logic;
SIGNAL \vgamap|videoSync|v_count[9]~2_combout\ : std_logic;
SIGNAL \vgamap|videoSync|process_1~7_combout\ : std_logic;
SIGNAL \vgamap|videoSync|process_1~0_combout\ : std_logic;
SIGNAL \vgamap|videoSync|process_1~8_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~1\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~2_combout\ : std_logic;
SIGNAL \vgamap|videoSync|v_count~9_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~3\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~4_combout\ : std_logic;
SIGNAL \vgamap|videoSync|v_count[2]~10_combout\ : std_logic;
SIGNAL \vgamap|videoSync|LessThan6~0_combout\ : std_logic;
SIGNAL \vgamap|videoSync|LessThan6~1_combout\ : std_logic;
SIGNAL \vgamap|videoSync|LessThan6~2_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan36~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan65~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~13_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~21_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan44~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan10~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan18~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~22_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~23_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan5~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan14~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan33~2_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~24_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan3~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~25_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~3_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan35~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan35~1_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~98_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~14_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~15_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~16_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~18_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~17_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~19_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~20_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~2_combout\ : std_logic;
SIGNAL \volmap|divide_clock:count[0]~1_combout\ : std_logic;
SIGNAL \volmap|divide_clock:count[0]~q\ : std_logic;
SIGNAL \volmap|divide_clock:count[0]~2\ : std_logic;
SIGNAL \volmap|divide_clock:count[1]~1_combout\ : std_logic;
SIGNAL \volmap|divide_clock:count[1]~q\ : std_logic;
SIGNAL \volmap|divide_clock:count[1]~2\ : std_logic;
SIGNAL \volmap|divide_clock:count[2]~1_combout\ : std_logic;
SIGNAL \volmap|divide_clock:count[2]~q\ : std_logic;
SIGNAL \volmap|divide_clock:count[2]~2\ : std_logic;
SIGNAL \volmap|divide_clock:count[3]~1_combout\ : std_logic;
SIGNAL \volmap|divide_clock:count[3]~q\ : std_logic;
SIGNAL \volmap|divide_clock:count[3]~2\ : std_logic;
SIGNAL \volmap|divide_clock:count[4]~1_combout\ : std_logic;
SIGNAL \volmap|divide_clock:count[4]~q\ : std_logic;
SIGNAL \volmap|divide_clock:count[4]~2\ : std_logic;
SIGNAL \volmap|divide_clock:count[5]~1_combout\ : std_logic;
SIGNAL \volmap|divide_clock:count[5]~q\ : std_logic;
SIGNAL \volmap|divide_clock:count[5]~2\ : std_logic;
SIGNAL \volmap|divide_clock:count[6]~1_combout\ : std_logic;
SIGNAL \volmap|divide_clock:count[6]~q\ : std_logic;
SIGNAL \volmap|divide_clock:count[6]~2\ : std_logic;
SIGNAL \volmap|divide_clock:count[7]~1_combout\ : std_logic;
SIGNAL \volmap|divide_clock:count[7]~q\ : std_logic;
SIGNAL \volmap|divide_clock:count[7]~2\ : std_logic;
SIGNAL \volmap|divide_clock:count[8]~1_combout\ : std_logic;
SIGNAL \volmap|divide_clock:count[8]~q\ : std_logic;
SIGNAL \volmap|divide_clock:count[8]~2\ : std_logic;
SIGNAL \volmap|divide_clock:count[9]~1_combout\ : std_logic;
SIGNAL \volmap|divide_clock:count[9]~q\ : std_logic;
SIGNAL \volmap|divide_clock:count[9]~2\ : std_logic;
SIGNAL \volmap|divide_clock:count[10]~1_combout\ : std_logic;
SIGNAL \volmap|divide_clock:count[10]~q\ : std_logic;
SIGNAL \volmap|divide_clock:count[10]~2\ : std_logic;
SIGNAL \volmap|divide_clock:count[11]~1_combout\ : std_logic;
SIGNAL \volmap|divide_clock:count[11]~q\ : std_logic;
SIGNAL \volmap|divide_clock:count[11]~2\ : std_logic;
SIGNAL \volmap|divide_clock:count[12]~1_combout\ : std_logic;
SIGNAL \volmap|divide_clock:count[12]~q\ : std_logic;
SIGNAL \volmap|divide_clock:count[12]~2\ : std_logic;
SIGNAL \volmap|divide_clock:count[13]~1_combout\ : std_logic;
SIGNAL \volmap|divide_clock:count[13]~q\ : std_logic;
SIGNAL \volmap|divide_clock:count[13]~2\ : std_logic;
SIGNAL \volmap|divide_clock:count[14]~1_combout\ : std_logic;
SIGNAL \volmap|divide_clock:count[14]~q\ : std_logic;
SIGNAL \volmap|divide_clock:count[14]~2\ : std_logic;
SIGNAL \volmap|divide_clock:count[15]~1_combout\ : std_logic;
SIGNAL \volmap|divide_clock:count[15]~q\ : std_logic;
SIGNAL \volmap|divide_clock:count[15]~2\ : std_logic;
SIGNAL \volmap|divide_clock:count[16]~1_combout\ : std_logic;
SIGNAL \volmap|divide_clock:count[16]~q\ : std_logic;
SIGNAL \volmap|divide_clock:count[16]~2\ : std_logic;
SIGNAL \volmap|divide_clock:count[17]~1_combout\ : std_logic;
SIGNAL \volmap|divide_clock:count[17]~q\ : std_logic;
SIGNAL \volmap|divide_clock:count[17]~2\ : std_logic;
SIGNAL \volmap|divide_clock:count[18]~1_combout\ : std_logic;
SIGNAL \volmap|divide_clock:count[18]~q\ : std_logic;
SIGNAL \volmap|divide_clock:count[18]~2\ : std_logic;
SIGNAL \volmap|divide_clock:count[19]~1_combout\ : std_logic;
SIGNAL \volmap|divide_clock:count[19]~q\ : std_logic;
SIGNAL \volmap|divide_clock:count[19]~2\ : std_logic;
SIGNAL \volmap|divide_clock:count[20]~1_combout\ : std_logic;
SIGNAL \volmap|divide_clock:count[20]~q\ : std_logic;
SIGNAL \volmap|divide_clock:count[20]~2\ : std_logic;
SIGNAL \volmap|divide_clock:count[21]~1_combout\ : std_logic;
SIGNAL \volmap|divide_clock:count[21]~q\ : std_logic;
SIGNAL \volmap|LessThan0~9_combout\ : std_logic;
SIGNAL \volmap|divide_clock:count[21]~2\ : std_logic;
SIGNAL \volmap|divide_clock:count[22]~1_combout\ : std_logic;
SIGNAL \volmap|divide_clock:count[22]~q\ : std_logic;
SIGNAL \volmap|divide_clock:count[22]~2\ : std_logic;
SIGNAL \volmap|divide_clock:count[23]~1_combout\ : std_logic;
SIGNAL \volmap|divide_clock:count[23]~q\ : std_logic;
SIGNAL \volmap|divide_clock:count[23]~2\ : std_logic;
SIGNAL \volmap|divide_clock:count[24]~1_combout\ : std_logic;
SIGNAL \volmap|divide_clock:count[24]~q\ : std_logic;
SIGNAL \volmap|divide_clock:count[24]~2\ : std_logic;
SIGNAL \volmap|divide_clock:count[25]~1_combout\ : std_logic;
SIGNAL \volmap|divide_clock:count[25]~q\ : std_logic;
SIGNAL \volmap|divide_clock:count[25]~2\ : std_logic;
SIGNAL \volmap|divide_clock:count[26]~1_combout\ : std_logic;
SIGNAL \volmap|divide_clock:count[26]~q\ : std_logic;
SIGNAL \volmap|divide_clock:count[26]~2\ : std_logic;
SIGNAL \volmap|divide_clock:count[27]~1_combout\ : std_logic;
SIGNAL \volmap|divide_clock:count[27]~q\ : std_logic;
SIGNAL \volmap|divide_clock:count[27]~2\ : std_logic;
SIGNAL \volmap|divide_clock:count[28]~1_combout\ : std_logic;
SIGNAL \volmap|divide_clock:count[28]~q\ : std_logic;
SIGNAL \volmap|divide_clock:count[28]~2\ : std_logic;
SIGNAL \volmap|divide_clock:count[29]~1_combout\ : std_logic;
SIGNAL \volmap|divide_clock:count[29]~q\ : std_logic;
SIGNAL \volmap|divide_clock:count[29]~2\ : std_logic;
SIGNAL \volmap|divide_clock:count[30]~1_combout\ : std_logic;
SIGNAL \volmap|divide_clock:count[30]~q\ : std_logic;
SIGNAL \volmap|divide_clock:count[30]~2\ : std_logic;
SIGNAL \volmap|divide_clock:count[31]~1_combout\ : std_logic;
SIGNAL \volmap|divide_clock:count[31]~q\ : std_logic;
SIGNAL \volmap|LessThan0~0_combout\ : std_logic;
SIGNAL \volmap|LessThan0~1_combout\ : std_logic;
SIGNAL \volmap|LessThan0~2_combout\ : std_logic;
SIGNAL \volmap|LessThan0~7_combout\ : std_logic;
SIGNAL \volmap|LessThan0~3_combout\ : std_logic;
SIGNAL \volmap|LessThan0~4_combout\ : std_logic;
SIGNAL \volmap|LessThan0~5_combout\ : std_logic;
SIGNAL \volmap|LessThan0~6_combout\ : std_logic;
SIGNAL \volmap|LessThan0~8_combout\ : std_logic;
SIGNAL \volmap|LessThan0~10_combout\ : std_logic;
SIGNAL \volmap|div_clk~0_combout\ : std_logic;
SIGNAL \volmap|div_clk~feeder_combout\ : std_logic;
SIGNAL \volmap|div_clk~q\ : std_logic;
SIGNAL \volmap|div_clk~clkctrl_outclk\ : std_logic;
SIGNAL \vol_down~input_o\ : std_logic;
SIGNAL \vol_up~input_o\ : std_logic;
SIGNAL \volmap|Mux4~0_combout\ : std_logic;
SIGNAL \volmap|Mux4~1_combout\ : std_logic;
SIGNAL \volmap|Mux5~0_combout\ : std_logic;
SIGNAL \volmap|Mux5~1_combout\ : std_logic;
SIGNAL \volmap|Mux3~0_combout\ : std_logic;
SIGNAL \volmap|Mux3~1_combout\ : std_logic;
SIGNAL \volmap|z[2]~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan37~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~47_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~48_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~50_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~102_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan5~1_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~49_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~51_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~52_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan12~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~85_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~86_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~87_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~89_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~90_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~91_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~88_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~22_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~23_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~24_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~25_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~26_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~47_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan22~1_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan34~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan48~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan22~2_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan22~3_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~92_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~93_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~4_combout\ : std_logic;
SIGNAL \keys[16]~input_o\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan16~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~58_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan33~3_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan33~4_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~56_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~57_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~59_combout\ : std_logic;
SIGNAL \keys[12]~input_o\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~60_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~61_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~62_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~63_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~64_combout\ : std_logic;
SIGNAL \keys[14]~input_o\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~65_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~32_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~66_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~34_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~67_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~68_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~8_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~9_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan34~1_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan33~5_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~31_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~45_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~101_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~46_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~99_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan9~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~53_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan9~1_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~54_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~55_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~35_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~100_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~33_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~36_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~28_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~26_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~27_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~29_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~30_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~37_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan22~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~38_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~39_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~40_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~43_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~44_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~41_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan24~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~42_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~5_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~6_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~7_combout\ : std_logic;
SIGNAL \keys[5]~input_o\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~74_combout\ : std_logic;
SIGNAL \keys[7]~input_o\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~69_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~17_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~76_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~75_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~77_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~18_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~19_combout\ : std_logic;
SIGNAL \keys[9]~input_o\ : std_logic;
SIGNAL \keys[11]~input_o\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~70_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~71_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan6~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~72_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~73_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~10_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~11_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~12_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~13_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~14_combout\ : std_logic;
SIGNAL \keys[4]~input_o\ : std_logic;
SIGNAL \keys[2]~input_o\ : std_logic;
SIGNAL \keys[0]~input_o\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~103_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~80_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~81_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~78_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~79_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~15_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~82_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~83_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~84_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~16_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~20_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~21_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~96_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~97_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~94_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~95_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~29_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~30_combout\ : std_logic;
SIGNAL \volmap|Mux1~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~28_combout\ : std_logic;
SIGNAL \volmap|Mux2~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~27_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~31_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~32_combout\ : std_logic;
SIGNAL \keys[13]~input_o\ : std_logic;
SIGNAL \keys[15]~input_o\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~42_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~43_combout\ : std_logic;
SIGNAL \mute_sel~input_o\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~44_combout\ : std_logic;
SIGNAL \keys[3]~input_o\ : std_logic;
SIGNAL \keys[1]~input_o\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~39_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~38_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~40_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~33_combout\ : std_logic;
SIGNAL \keys[10]~input_o\ : std_logic;
SIGNAL \keys[8]~input_o\ : std_logic;
SIGNAL \keys[6]~input_o\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~34_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~35_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~36_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~37_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~41_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~45_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~46_combout\ : std_logic;
SIGNAL \vgamap|videoSync|process_1~1_combout\ : std_logic;
SIGNAL \vgamap|videoSync|process_1~2_combout\ : std_logic;
SIGNAL \vgamap|videoSync|process_1~4_combout\ : std_logic;
SIGNAL \vgamap|videoSync|horiz_sync~q\ : std_logic;
SIGNAL \vgamap|videoSync|horiz_sync_out~feeder_combout\ : std_logic;
SIGNAL \vgamap|videoSync|horiz_sync_out~q\ : std_logic;
SIGNAL \vgamap|videoSync|process_1~5_combout\ : std_logic;
SIGNAL \vgamap|videoSync|process_1~6_combout\ : std_logic;
SIGNAL \vgamap|videoSync|vert_sync~q\ : std_logic;
SIGNAL \vgamap|videoSync|vert_sync_out~q\ : std_logic;
SIGNAL \vgamap|videoSync|video_on_v~q\ : std_logic;
SIGNAL \vgamap|videoSync|video_on_h~feeder_combout\ : std_logic;
SIGNAL \vgamap|videoSync|video_on_h~q\ : std_logic;
SIGNAL \vgamap|videoSync|video_on~combout\ : std_logic;
SIGNAL \vgamap|videoSync|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\ : std_logic_vector(29 DOWNTO 0);
SIGNAL \volmap|current\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \vgamap|videoSync|pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vgamap|videoGen|colorAddress\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \vgamap|videoSync|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \volmap|z\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \vgamap|videoSync|pixel_row\ : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_reset <= reset;
ww_clk <= clk;
ww_keys <= keys;
ww_vol_up <= vol_up;
ww_vol_down <= vol_down;
ww_oct_sel <= oct_sel;
ww_synth_sel <= synth_sel;
ww_mute_sel <= mute_sel;
vga_red <= ww_vga_red;
vga_green <= ww_vga_green;
vga_blue <= ww_vga_blue;
horiz_sync <= ww_horiz_sync;
vert_sync <= ww_vert_sync;
vga_blank <= ww_vga_blank;
vga_clk <= ww_vga_clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\vgamap|videoGen|colorAddress\(2) & \vgamap|videoGen|colorAddress\(1) & \vgamap|videoGen|colorAddress\(0));

\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(0) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(1) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(2) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(3) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(4) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(5) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(6) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(7) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(8) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(9) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(10) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(11) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(12) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(13) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(14) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(15) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(16) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(17) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(18) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(18);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(19) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(19);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(20) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(20);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(21) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(21);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(22) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(22);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(23) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(23);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(24) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(24);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(25) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(25);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(26) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(26);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(27) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(27);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(28) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(28);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(29) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(29);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\vgamap|videoSync|pixel_clock_int~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \vgamap|videoSync|pixel_clock_int~q\);

\volmap|div_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \volmap|div_clk~q\);

-- Location: IOOBUF_X18_Y73_N16
\vga_red[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(20),
	devoe => ww_devoe,
	o => \vga_red[0]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\vga_red[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(21),
	devoe => ww_devoe,
	o => \vga_red[1]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\vga_red[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(22),
	devoe => ww_devoe,
	o => \vga_red[2]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\vga_red[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => \vga_red[3]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\vga_red[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(24),
	devoe => ww_devoe,
	o => \vga_red[4]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\vga_red[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(25),
	devoe => ww_devoe,
	o => \vga_red[5]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\vga_red[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(26),
	devoe => ww_devoe,
	o => \vga_red[6]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\vga_red[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(27),
	devoe => ww_devoe,
	o => \vga_red[7]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\vga_red[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(28),
	devoe => ww_devoe,
	o => \vga_red[8]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\vga_red[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(29),
	devoe => ww_devoe,
	o => \vga_red[9]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\vga_green[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \vga_green[0]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\vga_green[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \vga_green[1]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\vga_green[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \vga_green[2]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\vga_green[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \vga_green[3]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\vga_green[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \vga_green[4]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\vga_green[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \vga_green[5]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\vga_green[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => \vga_green[6]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\vga_green[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => \vga_green[7]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\vga_green[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(18),
	devoe => ww_devoe,
	o => \vga_green[8]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\vga_green[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(19),
	devoe => ww_devoe,
	o => \vga_green[9]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\vga_blue[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \vga_blue[0]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\vga_blue[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \vga_blue[1]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\vga_blue[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \vga_blue[2]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\vga_blue[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \vga_blue[3]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\vga_blue[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \vga_blue[4]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\vga_blue[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \vga_blue[5]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\vga_blue[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \vga_blue[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\vga_blue[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \vga_blue[7]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\vga_blue[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \vga_blue[8]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\vga_blue[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \vga_blue[9]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\horiz_sync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoSync|horiz_sync_out~q\,
	devoe => ww_devoe,
	o => \horiz_sync~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\vert_sync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoSync|vert_sync_out~q\,
	devoe => ww_devoe,
	o => \vert_sync~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\vga_blank~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoSync|video_on~combout\,
	devoe => ww_devoe,
	o => \vga_blank~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\vga_clk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoSync|pixel_clock_int~q\,
	devoe => ww_devoe,
	o => \vga_clk~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X55_Y72_N28
\vgamap|videoSync|pixel_clock_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|pixel_clock_int~0_combout\ = !\vgamap|videoSync|pixel_clock_int~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|pixel_clock_int~q\,
	combout => \vgamap|videoSync|pixel_clock_int~0_combout\);

-- Location: LCCOMB_X55_Y72_N2
\vgamap|videoSync|pixel_clock_int~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|pixel_clock_int~feeder_combout\ = \vgamap|videoSync|pixel_clock_int~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_clock_int~0_combout\,
	combout => \vgamap|videoSync|pixel_clock_int~feeder_combout\);

-- Location: FF_X55_Y72_N3
\vgamap|videoSync|pixel_clock_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vgamap|videoSync|pixel_clock_int~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_clock_int~q\);

-- Location: CLKCTRL_G11
\vgamap|videoSync|pixel_clock_int~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \vgamap|videoSync|pixel_clock_int~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\);

-- Location: LCCOMB_X54_Y63_N6
\vgamap|videoSync|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add0~0_combout\ = \vgamap|videoSync|h_count\(0) $ (VCC)
-- \vgamap|videoSync|Add0~1\ = CARRY(\vgamap|videoSync|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|h_count\(0),
	datad => VCC,
	combout => \vgamap|videoSync|Add0~0_combout\,
	cout => \vgamap|videoSync|Add0~1\);

-- Location: LCCOMB_X54_Y63_N16
\vgamap|videoSync|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add0~10_combout\ = (\vgamap|videoSync|h_count\(5) & (!\vgamap|videoSync|Add0~9\)) # (!\vgamap|videoSync|h_count\(5) & ((\vgamap|videoSync|Add0~9\) # (GND)))
-- \vgamap|videoSync|Add0~11\ = CARRY((!\vgamap|videoSync|Add0~9\) # (!\vgamap|videoSync|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|h_count\(5),
	datad => VCC,
	cin => \vgamap|videoSync|Add0~9\,
	combout => \vgamap|videoSync|Add0~10_combout\,
	cout => \vgamap|videoSync|Add0~11\);

-- Location: LCCOMB_X54_Y63_N18
\vgamap|videoSync|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add0~12_combout\ = (\vgamap|videoSync|h_count\(6) & (\vgamap|videoSync|Add0~11\ $ (GND))) # (!\vgamap|videoSync|h_count\(6) & (!\vgamap|videoSync|Add0~11\ & VCC))
-- \vgamap|videoSync|Add0~13\ = CARRY((\vgamap|videoSync|h_count\(6) & !\vgamap|videoSync|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|h_count\(6),
	datad => VCC,
	cin => \vgamap|videoSync|Add0~11\,
	combout => \vgamap|videoSync|Add0~12_combout\,
	cout => \vgamap|videoSync|Add0~13\);

-- Location: FF_X54_Y63_N19
\vgamap|videoSync|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|h_count\(6));

-- Location: LCCOMB_X54_Y63_N20
\vgamap|videoSync|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add0~14_combout\ = (\vgamap|videoSync|h_count\(7) & (!\vgamap|videoSync|Add0~13\)) # (!\vgamap|videoSync|h_count\(7) & ((\vgamap|videoSync|Add0~13\) # (GND)))
-- \vgamap|videoSync|Add0~15\ = CARRY((!\vgamap|videoSync|Add0~13\) # (!\vgamap|videoSync|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|h_count\(7),
	datad => VCC,
	cin => \vgamap|videoSync|Add0~13\,
	combout => \vgamap|videoSync|Add0~14_combout\,
	cout => \vgamap|videoSync|Add0~15\);

-- Location: FF_X54_Y63_N21
\vgamap|videoSync|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|h_count\(7));

-- Location: LCCOMB_X54_Y63_N22
\vgamap|videoSync|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add0~16_combout\ = (\vgamap|videoSync|h_count\(8) & (\vgamap|videoSync|Add0~15\ $ (GND))) # (!\vgamap|videoSync|h_count\(8) & (!\vgamap|videoSync|Add0~15\ & VCC))
-- \vgamap|videoSync|Add0~17\ = CARRY((\vgamap|videoSync|h_count\(8) & !\vgamap|videoSync|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|h_count\(8),
	datad => VCC,
	cin => \vgamap|videoSync|Add0~15\,
	combout => \vgamap|videoSync|Add0~16_combout\,
	cout => \vgamap|videoSync|Add0~17\);

-- Location: LCCOMB_X54_Y63_N0
\vgamap|videoSync|h_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|h_count~0_combout\ = (!\vgamap|videoSync|Equal0~3_combout\ & \vgamap|videoSync|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|Equal0~3_combout\,
	datac => \vgamap|videoSync|Add0~16_combout\,
	combout => \vgamap|videoSync|h_count~0_combout\);

-- Location: FF_X54_Y63_N1
\vgamap|videoSync|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|h_count\(8));

-- Location: LCCOMB_X55_Y63_N14
\vgamap|videoSync|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Equal0~2_combout\ = (!\vgamap|videoSync|h_count\(3) & (!\vgamap|videoSync|h_count\(7) & (\vgamap|videoSync|h_count\(5) & !\vgamap|videoSync|h_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|h_count\(3),
	datab => \vgamap|videoSync|h_count\(7),
	datac => \vgamap|videoSync|h_count\(5),
	datad => \vgamap|videoSync|h_count\(4),
	combout => \vgamap|videoSync|Equal0~2_combout\);

-- Location: LCCOMB_X54_Y63_N24
\vgamap|videoSync|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add0~18_combout\ = \vgamap|videoSync|h_count\(9) $ (\vgamap|videoSync|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|h_count\(9),
	cin => \vgamap|videoSync|Add0~17\,
	combout => \vgamap|videoSync|Add0~18_combout\);

-- Location: LCCOMB_X54_Y63_N26
\vgamap|videoSync|h_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|h_count~1_combout\ = (!\vgamap|videoSync|Equal0~3_combout\ & \vgamap|videoSync|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|Equal0~3_combout\,
	datad => \vgamap|videoSync|Add0~18_combout\,
	combout => \vgamap|videoSync|h_count~1_combout\);

-- Location: FF_X54_Y63_N27
\vgamap|videoSync|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|h_count\(9));

-- Location: LCCOMB_X54_Y63_N30
\vgamap|videoSync|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Equal0~0_combout\ = (!\vgamap|videoSync|h_count\(2) & (!\vgamap|videoSync|h_count\(0) & (!\vgamap|videoSync|h_count\(1) & !\vgamap|videoSync|h_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|h_count\(2),
	datab => \vgamap|videoSync|h_count\(0),
	datac => \vgamap|videoSync|h_count\(1),
	datad => \vgamap|videoSync|h_count\(6),
	combout => \vgamap|videoSync|Equal0~0_combout\);

-- Location: LCCOMB_X55_Y63_N20
\vgamap|videoSync|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Equal0~3_combout\ = (\vgamap|videoSync|h_count\(8) & (\vgamap|videoSync|Equal0~2_combout\ & (\vgamap|videoSync|h_count\(9) & \vgamap|videoSync|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|h_count\(8),
	datab => \vgamap|videoSync|Equal0~2_combout\,
	datac => \vgamap|videoSync|h_count\(9),
	datad => \vgamap|videoSync|Equal0~0_combout\,
	combout => \vgamap|videoSync|Equal0~3_combout\);

-- Location: LCCOMB_X54_Y63_N4
\vgamap|videoSync|h_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|h_count~3_combout\ = (\vgamap|videoSync|Add0~0_combout\ & !\vgamap|videoSync|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|Add0~0_combout\,
	datac => \vgamap|videoSync|Equal0~3_combout\,
	combout => \vgamap|videoSync|h_count~3_combout\);

-- Location: FF_X54_Y63_N5
\vgamap|videoSync|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|h_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|h_count\(0));

-- Location: LCCOMB_X54_Y63_N8
\vgamap|videoSync|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add0~2_combout\ = (\vgamap|videoSync|h_count\(1) & (!\vgamap|videoSync|Add0~1\)) # (!\vgamap|videoSync|h_count\(1) & ((\vgamap|videoSync|Add0~1\) # (GND)))
-- \vgamap|videoSync|Add0~3\ = CARRY((!\vgamap|videoSync|Add0~1\) # (!\vgamap|videoSync|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|h_count\(1),
	datad => VCC,
	cin => \vgamap|videoSync|Add0~1\,
	combout => \vgamap|videoSync|Add0~2_combout\,
	cout => \vgamap|videoSync|Add0~3\);

-- Location: FF_X54_Y63_N9
\vgamap|videoSync|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|h_count\(1));

-- Location: LCCOMB_X54_Y63_N10
\vgamap|videoSync|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add0~4_combout\ = (\vgamap|videoSync|h_count\(2) & (\vgamap|videoSync|Add0~3\ $ (GND))) # (!\vgamap|videoSync|h_count\(2) & (!\vgamap|videoSync|Add0~3\ & VCC))
-- \vgamap|videoSync|Add0~5\ = CARRY((\vgamap|videoSync|h_count\(2) & !\vgamap|videoSync|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|h_count\(2),
	datad => VCC,
	cin => \vgamap|videoSync|Add0~3\,
	combout => \vgamap|videoSync|Add0~4_combout\,
	cout => \vgamap|videoSync|Add0~5\);

-- Location: FF_X54_Y63_N11
\vgamap|videoSync|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|h_count\(2));

-- Location: LCCOMB_X54_Y63_N12
\vgamap|videoSync|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add0~6_combout\ = (\vgamap|videoSync|h_count\(3) & (!\vgamap|videoSync|Add0~5\)) # (!\vgamap|videoSync|h_count\(3) & ((\vgamap|videoSync|Add0~5\) # (GND)))
-- \vgamap|videoSync|Add0~7\ = CARRY((!\vgamap|videoSync|Add0~5\) # (!\vgamap|videoSync|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|h_count\(3),
	datad => VCC,
	cin => \vgamap|videoSync|Add0~5\,
	combout => \vgamap|videoSync|Add0~6_combout\,
	cout => \vgamap|videoSync|Add0~7\);

-- Location: FF_X54_Y63_N13
\vgamap|videoSync|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|h_count\(3));

-- Location: LCCOMB_X54_Y63_N14
\vgamap|videoSync|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add0~8_combout\ = (\vgamap|videoSync|h_count\(4) & (\vgamap|videoSync|Add0~7\ $ (GND))) # (!\vgamap|videoSync|h_count\(4) & (!\vgamap|videoSync|Add0~7\ & VCC))
-- \vgamap|videoSync|Add0~9\ = CARRY((\vgamap|videoSync|h_count\(4) & !\vgamap|videoSync|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|h_count\(4),
	datad => VCC,
	cin => \vgamap|videoSync|Add0~7\,
	combout => \vgamap|videoSync|Add0~8_combout\,
	cout => \vgamap|videoSync|Add0~9\);

-- Location: FF_X54_Y63_N15
\vgamap|videoSync|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|h_count\(4));

-- Location: LCCOMB_X54_Y63_N28
\vgamap|videoSync|h_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|h_count~2_combout\ = (\vgamap|videoSync|Add0~10_combout\ & !\vgamap|videoSync|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|Add0~10_combout\,
	datac => \vgamap|videoSync|Equal0~3_combout\,
	combout => \vgamap|videoSync|h_count~2_combout\);

-- Location: FF_X54_Y63_N29
\vgamap|videoSync|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|h_count\(5));

-- Location: LCCOMB_X55_Y63_N16
\vgamap|videoSync|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|LessThan5~0_combout\ = ((!\vgamap|videoSync|h_count\(8) & !\vgamap|videoSync|h_count\(7))) # (!\vgamap|videoSync|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|h_count\(8),
	datac => \vgamap|videoSync|h_count\(9),
	datad => \vgamap|videoSync|h_count\(7),
	combout => \vgamap|videoSync|LessThan5~0_combout\);

-- Location: FF_X56_Y62_N13
\vgamap|videoSync|pixel_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|h_count\(5),
	sload => VCC,
	ena => \vgamap|videoSync|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_column\(5));

-- Location: FF_X57_Y62_N31
\vgamap|videoSync|pixel_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|h_count\(6),
	sload => VCC,
	ena => \vgamap|videoSync|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_column\(6));

-- Location: FF_X57_Y62_N17
\vgamap|videoSync|pixel_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|h_count\(7),
	sload => VCC,
	ena => \vgamap|videoSync|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_column\(7));

-- Location: FF_X57_Y62_N7
\vgamap|videoSync|pixel_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|h_count\(9),
	sload => VCC,
	ena => \vgamap|videoSync|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_column\(9));

-- Location: FF_X57_Y62_N21
\vgamap|videoSync|pixel_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|h_count\(8),
	sload => VCC,
	ena => \vgamap|videoSync|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_column\(8));

-- Location: LCCOMB_X57_Y62_N6
\vgamap|videoGen|pixelDraw~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~12_combout\ = (!\vgamap|videoSync|pixel_column\(7) & (!\vgamap|videoSync|pixel_column\(9) & !\vgamap|videoSync|pixel_column\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|pixel_column\(7),
	datac => \vgamap|videoSync|pixel_column\(9),
	datad => \vgamap|videoSync|pixel_column\(8),
	combout => \vgamap|videoGen|pixelDraw~12_combout\);

-- Location: LCCOMB_X56_Y63_N10
\vgamap|videoSync|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add1~4_combout\ = (\vgamap|videoSync|v_count\(2) & (\vgamap|videoSync|Add1~3\ $ (GND))) # (!\vgamap|videoSync|v_count\(2) & (!\vgamap|videoSync|Add1~3\ & VCC))
-- \vgamap|videoSync|Add1~5\ = CARRY((\vgamap|videoSync|v_count\(2) & !\vgamap|videoSync|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|v_count\(2),
	datad => VCC,
	cin => \vgamap|videoSync|Add1~3\,
	combout => \vgamap|videoSync|Add1~4_combout\,
	cout => \vgamap|videoSync|Add1~5\);

-- Location: LCCOMB_X56_Y63_N12
\vgamap|videoSync|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add1~6_combout\ = (\vgamap|videoSync|v_count\(3) & (!\vgamap|videoSync|Add1~5\)) # (!\vgamap|videoSync|v_count\(3) & ((\vgamap|videoSync|Add1~5\) # (GND)))
-- \vgamap|videoSync|Add1~7\ = CARRY((!\vgamap|videoSync|Add1~5\) # (!\vgamap|videoSync|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|v_count\(3),
	datad => VCC,
	cin => \vgamap|videoSync|Add1~5\,
	combout => \vgamap|videoSync|Add1~6_combout\,
	cout => \vgamap|videoSync|Add1~7\);

-- Location: LCCOMB_X55_Y63_N10
\vgamap|videoSync|process_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|process_1~3_combout\ = (\vgamap|videoSync|h_count\(4) & \vgamap|videoSync|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|h_count\(4),
	datad => \vgamap|videoSync|h_count\(3),
	combout => \vgamap|videoSync|process_1~3_combout\);

-- Location: LCCOMB_X55_Y63_N18
\vgamap|videoSync|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Equal1~0_combout\ = (\vgamap|videoSync|h_count\(8)) # (((\vgamap|videoSync|h_count\(5)) # (!\vgamap|videoSync|process_1~3_combout\)) # (!\vgamap|videoSync|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|h_count\(8),
	datab => \vgamap|videoSync|h_count\(7),
	datac => \vgamap|videoSync|h_count\(5),
	datad => \vgamap|videoSync|process_1~3_combout\,
	combout => \vgamap|videoSync|Equal1~0_combout\);

-- Location: LCCOMB_X55_Y63_N24
\vgamap|videoSync|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Equal0~1_combout\ = (\vgamap|videoSync|h_count\(9) & \vgamap|videoSync|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|h_count\(9),
	datad => \vgamap|videoSync|Equal0~0_combout\,
	combout => \vgamap|videoSync|Equal0~1_combout\);

-- Location: LCCOMB_X57_Y63_N26
\vgamap|videoSync|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|LessThan1~1_combout\ = (!\vgamap|videoSync|v_count\(6) & (!\vgamap|videoSync|v_count\(7) & (!\vgamap|videoSync|v_count\(5) & !\vgamap|videoSync|v_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count\(6),
	datab => \vgamap|videoSync|v_count\(7),
	datac => \vgamap|videoSync|v_count\(5),
	datad => \vgamap|videoSync|v_count\(4),
	combout => \vgamap|videoSync|LessThan1~1_combout\);

-- Location: LCCOMB_X56_Y63_N6
\vgamap|videoSync|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add1~0_combout\ = \vgamap|videoSync|v_count\(0) $ (VCC)
-- \vgamap|videoSync|Add1~1\ = CARRY(\vgamap|videoSync|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count\(0),
	datad => VCC,
	combout => \vgamap|videoSync|Add1~0_combout\,
	cout => \vgamap|videoSync|Add1~1\);

-- Location: LCCOMB_X55_Y63_N8
\vgamap|videoSync|v_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|v_count~8_combout\ = (\vgamap|videoSync|Add1~0_combout\ & ((\vgamap|videoSync|LessThan1~2_combout\) # (\vgamap|videoSync|process_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|LessThan1~2_combout\,
	datac => \vgamap|videoSync|process_1~8_combout\,
	datad => \vgamap|videoSync|Add1~0_combout\,
	combout => \vgamap|videoSync|v_count~8_combout\);

-- Location: FF_X55_Y63_N9
\vgamap|videoSync|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|v_count~8_combout\,
	ena => \vgamap|videoSync|v_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|v_count\(0));

-- Location: LCCOMB_X57_Y63_N20
\vgamap|videoSync|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|LessThan1~0_combout\ = (((!\vgamap|videoSync|v_count\(0) & !\vgamap|videoSync|v_count\(1))) # (!\vgamap|videoSync|v_count\(2))) # (!\vgamap|videoSync|v_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count\(3),
	datab => \vgamap|videoSync|v_count\(2),
	datac => \vgamap|videoSync|v_count\(0),
	datad => \vgamap|videoSync|v_count\(1),
	combout => \vgamap|videoSync|LessThan1~0_combout\);

-- Location: LCCOMB_X57_Y63_N4
\vgamap|videoSync|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|LessThan1~2_combout\ = (!\vgamap|videoSync|v_count\(8) & (\vgamap|videoSync|LessThan1~1_combout\ & \vgamap|videoSync|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count\(8),
	datac => \vgamap|videoSync|LessThan1~1_combout\,
	datad => \vgamap|videoSync|LessThan1~0_combout\,
	combout => \vgamap|videoSync|LessThan1~2_combout\);

-- Location: LCCOMB_X55_Y63_N28
\vgamap|videoSync|v_count[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|v_count[9]~1_combout\ = (\vgamap|videoSync|Equal1~0_combout\ & (!\vgamap|videoSync|process_1~8_combout\ & ((!\vgamap|videoSync|LessThan1~2_combout\)))) # (!\vgamap|videoSync|Equal1~0_combout\ & ((\vgamap|videoSync|Equal0~1_combout\) # 
-- ((!\vgamap|videoSync|process_1~8_combout\ & !\vgamap|videoSync|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|Equal1~0_combout\,
	datab => \vgamap|videoSync|process_1~8_combout\,
	datac => \vgamap|videoSync|Equal0~1_combout\,
	datad => \vgamap|videoSync|LessThan1~2_combout\,
	combout => \vgamap|videoSync|v_count[9]~1_combout\);

-- Location: LCCOMB_X57_Y63_N2
\vgamap|videoSync|v_count[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|v_count[4]~0_combout\ = (!\vgamap|videoSync|Equal1~0_combout\ & (\vgamap|videoSync|Equal0~1_combout\ & ((\vgamap|videoSync|LessThan1~2_combout\) # (\vgamap|videoSync|process_1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|LessThan1~2_combout\,
	datab => \vgamap|videoSync|process_1~8_combout\,
	datac => \vgamap|videoSync|Equal1~0_combout\,
	datad => \vgamap|videoSync|Equal0~1_combout\,
	combout => \vgamap|videoSync|v_count[4]~0_combout\);

-- Location: LCCOMB_X56_Y63_N2
\vgamap|videoSync|v_count[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|v_count[3]~11_combout\ = (\vgamap|videoSync|Add1~6_combout\ & ((\vgamap|videoSync|v_count[4]~0_combout\) # ((!\vgamap|videoSync|v_count[9]~1_combout\ & \vgamap|videoSync|v_count\(3))))) # (!\vgamap|videoSync|Add1~6_combout\ & 
-- (!\vgamap|videoSync|v_count[9]~1_combout\ & (\vgamap|videoSync|v_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|Add1~6_combout\,
	datab => \vgamap|videoSync|v_count[9]~1_combout\,
	datac => \vgamap|videoSync|v_count\(3),
	datad => \vgamap|videoSync|v_count[4]~0_combout\,
	combout => \vgamap|videoSync|v_count[3]~11_combout\);

-- Location: FF_X56_Y63_N3
\vgamap|videoSync|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|v_count[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|v_count\(3));

-- Location: LCCOMB_X56_Y63_N14
\vgamap|videoSync|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add1~8_combout\ = (\vgamap|videoSync|v_count\(4) & (\vgamap|videoSync|Add1~7\ $ (GND))) # (!\vgamap|videoSync|v_count\(4) & (!\vgamap|videoSync|Add1~7\ & VCC))
-- \vgamap|videoSync|Add1~9\ = CARRY((\vgamap|videoSync|v_count\(4) & !\vgamap|videoSync|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|v_count\(4),
	datad => VCC,
	cin => \vgamap|videoSync|Add1~7\,
	combout => \vgamap|videoSync|Add1~8_combout\,
	cout => \vgamap|videoSync|Add1~9\);

-- Location: LCCOMB_X56_Y63_N30
\vgamap|videoSync|v_count[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|v_count[4]~7_combout\ = (\vgamap|videoSync|Add1~8_combout\ & ((\vgamap|videoSync|v_count[4]~0_combout\) # ((!\vgamap|videoSync|v_count[9]~1_combout\ & \vgamap|videoSync|v_count\(4))))) # (!\vgamap|videoSync|Add1~8_combout\ & 
-- (!\vgamap|videoSync|v_count[9]~1_combout\ & (\vgamap|videoSync|v_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|Add1~8_combout\,
	datab => \vgamap|videoSync|v_count[9]~1_combout\,
	datac => \vgamap|videoSync|v_count\(4),
	datad => \vgamap|videoSync|v_count[4]~0_combout\,
	combout => \vgamap|videoSync|v_count[4]~7_combout\);

-- Location: FF_X56_Y63_N31
\vgamap|videoSync|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|v_count[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|v_count\(4));

-- Location: LCCOMB_X56_Y63_N16
\vgamap|videoSync|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add1~10_combout\ = (\vgamap|videoSync|v_count\(5) & (!\vgamap|videoSync|Add1~9\)) # (!\vgamap|videoSync|v_count\(5) & ((\vgamap|videoSync|Add1~9\) # (GND)))
-- \vgamap|videoSync|Add1~11\ = CARRY((!\vgamap|videoSync|Add1~9\) # (!\vgamap|videoSync|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|v_count\(5),
	datad => VCC,
	cin => \vgamap|videoSync|Add1~9\,
	combout => \vgamap|videoSync|Add1~10_combout\,
	cout => \vgamap|videoSync|Add1~11\);

-- Location: LCCOMB_X56_Y63_N0
\vgamap|videoSync|v_count[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|v_count[5]~3_combout\ = (\vgamap|videoSync|Add1~10_combout\ & ((\vgamap|videoSync|v_count[4]~0_combout\) # ((!\vgamap|videoSync|v_count[9]~1_combout\ & \vgamap|videoSync|v_count\(5))))) # (!\vgamap|videoSync|Add1~10_combout\ & 
-- (!\vgamap|videoSync|v_count[9]~1_combout\ & (\vgamap|videoSync|v_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|Add1~10_combout\,
	datab => \vgamap|videoSync|v_count[9]~1_combout\,
	datac => \vgamap|videoSync|v_count\(5),
	datad => \vgamap|videoSync|v_count[4]~0_combout\,
	combout => \vgamap|videoSync|v_count[5]~3_combout\);

-- Location: FF_X56_Y63_N1
\vgamap|videoSync|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|v_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|v_count\(5));

-- Location: LCCOMB_X56_Y63_N18
\vgamap|videoSync|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add1~12_combout\ = (\vgamap|videoSync|v_count\(6) & (\vgamap|videoSync|Add1~11\ $ (GND))) # (!\vgamap|videoSync|v_count\(6) & (!\vgamap|videoSync|Add1~11\ & VCC))
-- \vgamap|videoSync|Add1~13\ = CARRY((\vgamap|videoSync|v_count\(6) & !\vgamap|videoSync|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count\(6),
	datad => VCC,
	cin => \vgamap|videoSync|Add1~11\,
	combout => \vgamap|videoSync|Add1~12_combout\,
	cout => \vgamap|videoSync|Add1~13\);

-- Location: LCCOMB_X56_Y63_N26
\vgamap|videoSync|v_count[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|v_count[6]~4_combout\ = (\vgamap|videoSync|Add1~12_combout\ & ((\vgamap|videoSync|v_count[4]~0_combout\) # ((!\vgamap|videoSync|v_count[9]~1_combout\ & \vgamap|videoSync|v_count\(6))))) # (!\vgamap|videoSync|Add1~12_combout\ & 
-- (!\vgamap|videoSync|v_count[9]~1_combout\ & (\vgamap|videoSync|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|Add1~12_combout\,
	datab => \vgamap|videoSync|v_count[9]~1_combout\,
	datac => \vgamap|videoSync|v_count\(6),
	datad => \vgamap|videoSync|v_count[4]~0_combout\,
	combout => \vgamap|videoSync|v_count[6]~4_combout\);

-- Location: FF_X56_Y63_N27
\vgamap|videoSync|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|v_count[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|v_count\(6));

-- Location: LCCOMB_X56_Y63_N20
\vgamap|videoSync|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add1~14_combout\ = (\vgamap|videoSync|v_count\(7) & (!\vgamap|videoSync|Add1~13\)) # (!\vgamap|videoSync|v_count\(7) & ((\vgamap|videoSync|Add1~13\) # (GND)))
-- \vgamap|videoSync|Add1~15\ = CARRY((!\vgamap|videoSync|Add1~13\) # (!\vgamap|videoSync|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|v_count\(7),
	datad => VCC,
	cin => \vgamap|videoSync|Add1~13\,
	combout => \vgamap|videoSync|Add1~14_combout\,
	cout => \vgamap|videoSync|Add1~15\);

-- Location: LCCOMB_X56_Y63_N28
\vgamap|videoSync|v_count[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|v_count[7]~5_combout\ = (\vgamap|videoSync|Add1~14_combout\ & ((\vgamap|videoSync|v_count[4]~0_combout\) # ((!\vgamap|videoSync|v_count[9]~1_combout\ & \vgamap|videoSync|v_count\(7))))) # (!\vgamap|videoSync|Add1~14_combout\ & 
-- (!\vgamap|videoSync|v_count[9]~1_combout\ & (\vgamap|videoSync|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|Add1~14_combout\,
	datab => \vgamap|videoSync|v_count[9]~1_combout\,
	datac => \vgamap|videoSync|v_count\(7),
	datad => \vgamap|videoSync|v_count[4]~0_combout\,
	combout => \vgamap|videoSync|v_count[7]~5_combout\);

-- Location: FF_X56_Y63_N29
\vgamap|videoSync|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|v_count[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|v_count\(7));

-- Location: LCCOMB_X56_Y63_N22
\vgamap|videoSync|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add1~16_combout\ = (\vgamap|videoSync|v_count\(8) & (\vgamap|videoSync|Add1~15\ $ (GND))) # (!\vgamap|videoSync|v_count\(8) & (!\vgamap|videoSync|Add1~15\ & VCC))
-- \vgamap|videoSync|Add1~17\ = CARRY((\vgamap|videoSync|v_count\(8) & !\vgamap|videoSync|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count\(8),
	datad => VCC,
	cin => \vgamap|videoSync|Add1~15\,
	combout => \vgamap|videoSync|Add1~16_combout\,
	cout => \vgamap|videoSync|Add1~17\);

-- Location: LCCOMB_X57_Y63_N30
\vgamap|videoSync|v_count[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|v_count[8]~6_combout\ = (\vgamap|videoSync|Add1~16_combout\ & ((\vgamap|videoSync|v_count[4]~0_combout\) # ((\vgamap|videoSync|v_count\(8) & !\vgamap|videoSync|v_count[9]~1_combout\)))) # (!\vgamap|videoSync|Add1~16_combout\ & 
-- (((\vgamap|videoSync|v_count\(8) & !\vgamap|videoSync|v_count[9]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|Add1~16_combout\,
	datab => \vgamap|videoSync|v_count[4]~0_combout\,
	datac => \vgamap|videoSync|v_count\(8),
	datad => \vgamap|videoSync|v_count[9]~1_combout\,
	combout => \vgamap|videoSync|v_count[8]~6_combout\);

-- Location: FF_X57_Y63_N31
\vgamap|videoSync|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|v_count[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|v_count\(8));

-- Location: LCCOMB_X56_Y63_N24
\vgamap|videoSync|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add1~18_combout\ = \vgamap|videoSync|Add1~17\ $ (\vgamap|videoSync|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vgamap|videoSync|v_count\(9),
	cin => \vgamap|videoSync|Add1~17\,
	combout => \vgamap|videoSync|Add1~18_combout\);

-- Location: LCCOMB_X55_Y63_N26
\vgamap|videoSync|v_count[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|v_count[9]~2_combout\ = (\vgamap|videoSync|Add1~18_combout\ & ((\vgamap|videoSync|v_count[4]~0_combout\) # ((!\vgamap|videoSync|v_count[9]~1_combout\ & \vgamap|videoSync|v_count\(9))))) # (!\vgamap|videoSync|Add1~18_combout\ & 
-- (!\vgamap|videoSync|v_count[9]~1_combout\ & (\vgamap|videoSync|v_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|Add1~18_combout\,
	datab => \vgamap|videoSync|v_count[9]~1_combout\,
	datac => \vgamap|videoSync|v_count\(9),
	datad => \vgamap|videoSync|v_count[4]~0_combout\,
	combout => \vgamap|videoSync|v_count[9]~2_combout\);

-- Location: FF_X55_Y63_N27
\vgamap|videoSync|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|v_count[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|v_count\(9));

-- Location: LCCOMB_X55_Y63_N22
\vgamap|videoSync|process_1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|process_1~7_combout\ = (!\vgamap|videoSync|v_count\(9)) # (!\vgamap|videoSync|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|h_count\(9),
	datad => \vgamap|videoSync|v_count\(9),
	combout => \vgamap|videoSync|process_1~7_combout\);

-- Location: LCCOMB_X54_Y63_N2
\vgamap|videoSync|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|process_1~0_combout\ = (!\vgamap|videoSync|h_count\(5) & (!\vgamap|videoSync|h_count\(6) & ((!\vgamap|videoSync|h_count\(4)) # (!\vgamap|videoSync|h_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|h_count\(3),
	datab => \vgamap|videoSync|h_count\(5),
	datac => \vgamap|videoSync|h_count\(4),
	datad => \vgamap|videoSync|h_count\(6),
	combout => \vgamap|videoSync|process_1~0_combout\);

-- Location: LCCOMB_X55_Y63_N0
\vgamap|videoSync|process_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|process_1~8_combout\ = (\vgamap|videoSync|process_1~7_combout\) # ((!\vgamap|videoSync|h_count\(8) & ((\vgamap|videoSync|process_1~0_combout\) # (!\vgamap|videoSync|h_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|h_count\(8),
	datab => \vgamap|videoSync|h_count\(7),
	datac => \vgamap|videoSync|process_1~7_combout\,
	datad => \vgamap|videoSync|process_1~0_combout\,
	combout => \vgamap|videoSync|process_1~8_combout\);

-- Location: LCCOMB_X56_Y63_N8
\vgamap|videoSync|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add1~2_combout\ = (\vgamap|videoSync|v_count\(1) & (!\vgamap|videoSync|Add1~1\)) # (!\vgamap|videoSync|v_count\(1) & ((\vgamap|videoSync|Add1~1\) # (GND)))
-- \vgamap|videoSync|Add1~3\ = CARRY((!\vgamap|videoSync|Add1~1\) # (!\vgamap|videoSync|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|v_count\(1),
	datad => VCC,
	cin => \vgamap|videoSync|Add1~1\,
	combout => \vgamap|videoSync|Add1~2_combout\,
	cout => \vgamap|videoSync|Add1~3\);

-- Location: LCCOMB_X55_Y63_N6
\vgamap|videoSync|v_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|v_count~9_combout\ = (\vgamap|videoSync|Add1~2_combout\ & ((\vgamap|videoSync|process_1~8_combout\) # (\vgamap|videoSync|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|process_1~8_combout\,
	datac => \vgamap|videoSync|Add1~2_combout\,
	datad => \vgamap|videoSync|LessThan1~2_combout\,
	combout => \vgamap|videoSync|v_count~9_combout\);

-- Location: FF_X55_Y63_N7
\vgamap|videoSync|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|v_count~9_combout\,
	ena => \vgamap|videoSync|v_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|v_count\(1));

-- Location: LCCOMB_X56_Y63_N4
\vgamap|videoSync|v_count[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|v_count[2]~10_combout\ = (\vgamap|videoSync|Add1~4_combout\ & ((\vgamap|videoSync|v_count[4]~0_combout\) # ((!\vgamap|videoSync|v_count[9]~1_combout\ & \vgamap|videoSync|v_count\(2))))) # (!\vgamap|videoSync|Add1~4_combout\ & 
-- (!\vgamap|videoSync|v_count[9]~1_combout\ & (\vgamap|videoSync|v_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|Add1~4_combout\,
	datab => \vgamap|videoSync|v_count[9]~1_combout\,
	datac => \vgamap|videoSync|v_count\(2),
	datad => \vgamap|videoSync|v_count[4]~0_combout\,
	combout => \vgamap|videoSync|v_count[2]~10_combout\);

-- Location: FF_X56_Y63_N5
\vgamap|videoSync|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|v_count[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|v_count\(2));

-- Location: LCCOMB_X57_Y63_N16
\vgamap|videoSync|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|LessThan6~0_combout\ = (\vgamap|videoSync|v_count\(8) & (\vgamap|videoSync|v_count\(6) & (\vgamap|videoSync|v_count\(5) & \vgamap|videoSync|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count\(8),
	datab => \vgamap|videoSync|v_count\(6),
	datac => \vgamap|videoSync|v_count\(5),
	datad => \vgamap|videoSync|v_count\(7),
	combout => \vgamap|videoSync|LessThan6~0_combout\);

-- Location: LCCOMB_X57_Y63_N6
\vgamap|videoSync|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|LessThan6~1_combout\ = (\vgamap|videoSync|v_count\(1)) # ((\vgamap|videoSync|v_count\(3)) # ((\vgamap|videoSync|v_count\(2)) # (\vgamap|videoSync|v_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count\(1),
	datab => \vgamap|videoSync|v_count\(3),
	datac => \vgamap|videoSync|v_count\(2),
	datad => \vgamap|videoSync|v_count\(0),
	combout => \vgamap|videoSync|LessThan6~1_combout\);

-- Location: LCCOMB_X57_Y63_N12
\vgamap|videoSync|LessThan6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|LessThan6~2_combout\ = (!\vgamap|videoSync|v_count\(9) & (((!\vgamap|videoSync|v_count\(4) & !\vgamap|videoSync|LessThan6~1_combout\)) # (!\vgamap|videoSync|LessThan6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count\(9),
	datab => \vgamap|videoSync|LessThan6~0_combout\,
	datac => \vgamap|videoSync|v_count\(4),
	datad => \vgamap|videoSync|LessThan6~1_combout\,
	combout => \vgamap|videoSync|LessThan6~2_combout\);

-- Location: FF_X58_Y63_N27
\vgamap|videoSync|pixel_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|v_count\(2),
	sload => VCC,
	ena => \vgamap|videoSync|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_row\(2));

-- Location: FF_X58_Y63_N15
\vgamap|videoSync|pixel_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|v_count\(3),
	sload => VCC,
	ena => \vgamap|videoSync|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_row\(3));

-- Location: FF_X58_Y63_N29
\vgamap|videoSync|pixel_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|v_count\(1),
	sload => VCC,
	ena => \vgamap|videoSync|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_row\(1));

-- Location: FF_X58_Y63_N21
\vgamap|videoSync|pixel_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|v_count\(4),
	sload => VCC,
	ena => \vgamap|videoSync|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_row\(4));

-- Location: LCCOMB_X58_Y63_N28
\vgamap|videoGen|LessThan36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan36~0_combout\ = (!\vgamap|videoSync|pixel_row\(4) & (((!\vgamap|videoSync|pixel_row\(1)) # (!\vgamap|videoSync|pixel_row\(3))) # (!\vgamap|videoSync|pixel_row\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(2),
	datab => \vgamap|videoSync|pixel_row\(3),
	datac => \vgamap|videoSync|pixel_row\(1),
	datad => \vgamap|videoSync|pixel_row\(4),
	combout => \vgamap|videoGen|LessThan36~0_combout\);

-- Location: FF_X58_Y63_N1
\vgamap|videoSync|pixel_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|v_count\(6),
	sload => VCC,
	ena => \vgamap|videoSync|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_row\(6));

-- Location: FF_X58_Y63_N23
\vgamap|videoSync|pixel_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|v_count\(5),
	sload => VCC,
	ena => \vgamap|videoSync|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_row\(5));

-- Location: FF_X58_Y63_N31
\vgamap|videoSync|pixel_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|v_count\(8),
	sload => VCC,
	ena => \vgamap|videoSync|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_row\(8));

-- Location: FF_X58_Y63_N17
\vgamap|videoSync|pixel_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|v_count\(7),
	sload => VCC,
	ena => \vgamap|videoSync|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_row\(7));

-- Location: LCCOMB_X58_Y63_N4
\vgamap|videoGen|LessThan65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan65~0_combout\ = (\vgamap|videoSync|pixel_row\(8) & \vgamap|videoSync|pixel_row\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(8),
	datad => \vgamap|videoSync|pixel_row\(7),
	combout => \vgamap|videoGen|LessThan65~0_combout\);

-- Location: LCCOMB_X58_Y63_N22
\vgamap|videoGen|pixelDraw~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~13_combout\ = (!\vgamap|videoSync|pixel_row\(6) & (\vgamap|videoGen|LessThan65~0_combout\ & ((\vgamap|videoGen|LessThan36~0_combout\) # (!\vgamap|videoSync|pixel_row\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|LessThan36~0_combout\,
	datab => \vgamap|videoSync|pixel_row\(6),
	datac => \vgamap|videoSync|pixel_row\(5),
	datad => \vgamap|videoGen|LessThan65~0_combout\,
	combout => \vgamap|videoGen|pixelDraw~13_combout\);

-- Location: LCCOMB_X58_Y62_N12
\vgamap|videoGen|pixelDraw~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~21_combout\ = (!\vgamap|videoSync|pixel_column\(5) & (\vgamap|videoSync|pixel_column\(6) & (\vgamap|videoGen|pixelDraw~12_combout\ & \vgamap|videoGen|pixelDraw~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(5),
	datab => \vgamap|videoSync|pixel_column\(6),
	datac => \vgamap|videoGen|pixelDraw~12_combout\,
	datad => \vgamap|videoGen|pixelDraw~13_combout\,
	combout => \vgamap|videoGen|pixelDraw~21_combout\);

-- Location: FF_X55_Y62_N19
\vgamap|videoSync|pixel_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|h_count\(3),
	sload => VCC,
	ena => \vgamap|videoSync|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_column\(3));

-- Location: FF_X55_Y62_N1
\vgamap|videoSync|pixel_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|h_count\(4),
	sload => VCC,
	ena => \vgamap|videoSync|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_column\(4));

-- Location: FF_X55_Y62_N11
\vgamap|videoSync|pixel_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|h_count\(1),
	sload => VCC,
	ena => \vgamap|videoSync|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_column\(1));

-- Location: FF_X55_Y62_N5
\vgamap|videoSync|pixel_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|h_count\(0),
	sload => VCC,
	ena => \vgamap|videoSync|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_column\(0));

-- Location: FF_X55_Y62_N29
\vgamap|videoSync|pixel_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|h_count\(2),
	sload => VCC,
	ena => \vgamap|videoSync|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_column\(2));

-- Location: LCCOMB_X55_Y62_N26
\vgamap|videoGen|LessThan44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan44~0_combout\ = (\vgamap|videoSync|pixel_column\(1)) # ((\vgamap|videoSync|pixel_column\(0)) # (\vgamap|videoSync|pixel_column\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(1),
	datac => \vgamap|videoSync|pixel_column\(0),
	datad => \vgamap|videoSync|pixel_column\(2),
	combout => \vgamap|videoGen|LessThan44~0_combout\);

-- Location: LCCOMB_X54_Y62_N8
\vgamap|videoGen|LessThan10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan10~0_combout\ = ((!\vgamap|videoGen|LessThan44~0_combout\) # (!\vgamap|videoSync|pixel_column\(4))) # (!\vgamap|videoSync|pixel_column\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|pixel_column\(3),
	datac => \vgamap|videoSync|pixel_column\(4),
	datad => \vgamap|videoGen|LessThan44~0_combout\,
	combout => \vgamap|videoGen|LessThan10~0_combout\);

-- Location: LCCOMB_X59_Y63_N20
\vgamap|videoGen|LessThan18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan18~0_combout\ = (!\vgamap|videoSync|pixel_row\(6) & !\vgamap|videoSync|pixel_row\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|pixel_row\(6),
	datad => \vgamap|videoSync|pixel_row\(5),
	combout => \vgamap|videoGen|LessThan18~0_combout\);

-- Location: FF_X58_Y63_N5
\vgamap|videoSync|pixel_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|v_count\(0),
	sload => VCC,
	ena => \vgamap|videoSync|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_row\(0));

-- Location: LCCOMB_X59_Y63_N2
\vgamap|videoGen|pixelDraw~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~22_combout\ = (\vgamap|videoSync|pixel_row\(3)) # ((\vgamap|videoSync|pixel_row\(0)) # ((\vgamap|videoSync|pixel_row\(2)) # (\vgamap|videoSync|pixel_row\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(3),
	datab => \vgamap|videoSync|pixel_row\(0),
	datac => \vgamap|videoSync|pixel_row\(2),
	datad => \vgamap|videoSync|pixel_row\(1),
	combout => \vgamap|videoGen|pixelDraw~22_combout\);

-- Location: LCCOMB_X59_Y63_N28
\vgamap|videoGen|pixelDraw~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~23_combout\ = (\vgamap|videoSync|pixel_column\(4) & (((\vgamap|videoSync|pixel_row\(4) & \vgamap|videoGen|pixelDraw~22_combout\)) # (!\vgamap|videoGen|LessThan18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(4),
	datab => \vgamap|videoGen|LessThan18~0_combout\,
	datac => \vgamap|videoSync|pixel_column\(4),
	datad => \vgamap|videoGen|pixelDraw~22_combout\,
	combout => \vgamap|videoGen|pixelDraw~23_combout\);

-- Location: LCCOMB_X55_Y62_N24
\vgamap|videoGen|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan5~0_combout\ = (\vgamap|videoSync|pixel_column\(3) & \vgamap|videoSync|pixel_column\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|pixel_column\(3),
	datad => \vgamap|videoSync|pixel_column\(2),
	combout => \vgamap|videoGen|LessThan5~0_combout\);

-- Location: LCCOMB_X55_Y62_N4
\vgamap|videoGen|LessThan14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan14~0_combout\ = (!\vgamap|videoSync|pixel_column\(4) & (((!\vgamap|videoSync|pixel_column\(1) & !\vgamap|videoSync|pixel_column\(0))) # (!\vgamap|videoGen|LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(1),
	datab => \vgamap|videoGen|LessThan5~0_combout\,
	datac => \vgamap|videoSync|pixel_column\(0),
	datad => \vgamap|videoSync|pixel_column\(4),
	combout => \vgamap|videoGen|LessThan14~0_combout\);

-- Location: LCCOMB_X58_Y63_N2
\vgamap|videoGen|LessThan33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan33~2_combout\ = (!\vgamap|videoSync|pixel_row\(5) & (!\vgamap|videoSync|pixel_row\(6) & ((!\vgamap|videoSync|pixel_row\(3)) # (!\vgamap|videoSync|pixel_row\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(5),
	datab => \vgamap|videoSync|pixel_row\(4),
	datac => \vgamap|videoSync|pixel_row\(3),
	datad => \vgamap|videoSync|pixel_row\(6),
	combout => \vgamap|videoGen|LessThan33~2_combout\);

-- Location: LCCOMB_X59_Y63_N30
\vgamap|videoGen|pixelDraw~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~24_combout\ = ((\vgamap|videoSync|pixel_row\(1) & (\vgamap|videoSync|pixel_row\(4) & \vgamap|videoSync|pixel_row\(2)))) # (!\vgamap|videoGen|LessThan33~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(1),
	datab => \vgamap|videoSync|pixel_row\(4),
	datac => \vgamap|videoSync|pixel_row\(2),
	datad => \vgamap|videoGen|LessThan33~2_combout\,
	combout => \vgamap|videoGen|pixelDraw~24_combout\);

-- Location: LCCOMB_X63_Y62_N4
\vgamap|videoGen|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan3~0_combout\ = (\vgamap|videoSync|pixel_column\(3)) # (\vgamap|videoSync|pixel_column\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|pixel_column\(3),
	datad => \vgamap|videoSync|pixel_column\(2),
	combout => \vgamap|videoGen|LessThan3~0_combout\);

-- Location: LCCOMB_X58_Y62_N10
\vgamap|videoGen|pixelDraw~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~25_combout\ = (\vgamap|videoGen|LessThan14~0_combout\ & (\vgamap|videoGen|pixelDraw~24_combout\ & (\vgamap|videoGen|LessThan3~0_combout\ & \vgamap|videoGen|pixelDraw~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|LessThan14~0_combout\,
	datab => \vgamap|videoGen|pixelDraw~24_combout\,
	datac => \vgamap|videoGen|LessThan3~0_combout\,
	datad => \vgamap|videoGen|pixelDraw~21_combout\,
	combout => \vgamap|videoGen|pixelDraw~25_combout\);

-- Location: LCCOMB_X58_Y62_N16
\vgamap|videoGen|colorAddress~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~3_combout\ = (!\vgamap|videoGen|pixelDraw~25_combout\ & (((!\vgamap|videoGen|pixelDraw~23_combout\) # (!\vgamap|videoGen|LessThan10~0_combout\)) # (!\vgamap|videoGen|pixelDraw~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~21_combout\,
	datab => \vgamap|videoGen|LessThan10~0_combout\,
	datac => \vgamap|videoGen|pixelDraw~23_combout\,
	datad => \vgamap|videoGen|pixelDraw~25_combout\,
	combout => \vgamap|videoGen|colorAddress~3_combout\);

-- Location: LCCOMB_X58_Y63_N20
\vgamap|videoGen|LessThan35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan35~0_combout\ = (\vgamap|videoSync|pixel_row\(2)) # ((\vgamap|videoSync|pixel_row\(0) & \vgamap|videoSync|pixel_row\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(2),
	datab => \vgamap|videoSync|pixel_row\(0),
	datad => \vgamap|videoSync|pixel_row\(1),
	combout => \vgamap|videoGen|LessThan35~0_combout\);

-- Location: LCCOMB_X58_Y63_N16
\vgamap|videoGen|LessThan35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan35~1_combout\ = (\vgamap|videoGen|LessThan35~0_combout\ & (\vgamap|videoSync|pixel_row\(4) & \vgamap|videoSync|pixel_row\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|LessThan35~0_combout\,
	datab => \vgamap|videoSync|pixel_row\(4),
	datad => \vgamap|videoSync|pixel_row\(3),
	combout => \vgamap|videoGen|LessThan35~1_combout\);

-- Location: LCCOMB_X59_Y63_N16
\vgamap|videoGen|pixelDraw~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~98_combout\ = (\vgamap|videoGen|pixelDraw~13_combout\ & ((\vgamap|videoSync|pixel_row\(6)) # ((\vgamap|videoSync|pixel_row\(5)) # (\vgamap|videoGen|LessThan35~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(6),
	datab => \vgamap|videoSync|pixel_row\(5),
	datac => \vgamap|videoGen|LessThan35~1_combout\,
	datad => \vgamap|videoGen|pixelDraw~13_combout\,
	combout => \vgamap|videoGen|pixelDraw~98_combout\);

-- Location: LCCOMB_X54_Y62_N28
\vgamap|videoGen|pixelDraw~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~14_combout\ = (\vgamap|videoSync|pixel_column\(3) & (\vgamap|videoSync|pixel_column\(4) & \vgamap|videoSync|pixel_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|pixel_column\(3),
	datac => \vgamap|videoSync|pixel_column\(4),
	datad => \vgamap|videoSync|pixel_column\(5),
	combout => \vgamap|videoGen|pixelDraw~14_combout\);

-- Location: LCCOMB_X56_Y62_N22
\vgamap|videoGen|pixelDraw~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~15_combout\ = (!\vgamap|videoSync|pixel_column\(5) & (!\vgamap|videoSync|pixel_column\(4) & (\vgamap|videoSync|pixel_column\(6) & !\vgamap|videoSync|pixel_column\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(5),
	datab => \vgamap|videoSync|pixel_column\(4),
	datac => \vgamap|videoSync|pixel_column\(6),
	datad => \vgamap|videoSync|pixel_column\(3),
	combout => \vgamap|videoGen|pixelDraw~15_combout\);

-- Location: LCCOMB_X54_Y62_N26
\vgamap|videoGen|pixelDraw~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~16_combout\ = (\vgamap|videoSync|pixel_column\(6) & (((!\vgamap|videoGen|LessThan44~0_combout\ & \vgamap|videoGen|pixelDraw~15_combout\)))) # (!\vgamap|videoSync|pixel_column\(6) & ((\vgamap|videoGen|pixelDraw~14_combout\) # 
-- ((!\vgamap|videoGen|LessThan44~0_combout\ & \vgamap|videoGen|pixelDraw~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(6),
	datab => \vgamap|videoGen|pixelDraw~14_combout\,
	datac => \vgamap|videoGen|LessThan44~0_combout\,
	datad => \vgamap|videoGen|pixelDraw~15_combout\,
	combout => \vgamap|videoGen|pixelDraw~16_combout\);

-- Location: LCCOMB_X55_Y62_N28
\vgamap|videoGen|pixelDraw~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~18_combout\ = (!\vgamap|videoSync|pixel_column\(3) & (((!\vgamap|videoSync|pixel_column\(0) & !\vgamap|videoSync|pixel_column\(1))) # (!\vgamap|videoSync|pixel_column\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(3),
	datab => \vgamap|videoSync|pixel_column\(0),
	datac => \vgamap|videoSync|pixel_column\(2),
	datad => \vgamap|videoSync|pixel_column\(1),
	combout => \vgamap|videoGen|pixelDraw~18_combout\);

-- Location: LCCOMB_X58_Y62_N0
\vgamap|videoGen|pixelDraw~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~17_combout\ = (\vgamap|videoSync|pixel_column\(5) & (!\vgamap|videoSync|pixel_column\(6) & ((\vgamap|videoSync|pixel_row\(6)) # (\vgamap|videoSync|pixel_row\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(6),
	datab => \vgamap|videoSync|pixel_column\(5),
	datac => \vgamap|videoSync|pixel_row\(5),
	datad => \vgamap|videoSync|pixel_column\(6),
	combout => \vgamap|videoGen|pixelDraw~17_combout\);

-- Location: LCCOMB_X58_Y62_N26
\vgamap|videoGen|pixelDraw~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~19_combout\ = (\vgamap|videoGen|pixelDraw~17_combout\ & ((\vgamap|videoSync|pixel_column\(4) & ((\vgamap|videoGen|pixelDraw~18_combout\))) # (!\vgamap|videoSync|pixel_column\(4) & (\vgamap|videoGen|LessThan5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(4),
	datab => \vgamap|videoGen|LessThan5~0_combout\,
	datac => \vgamap|videoGen|pixelDraw~18_combout\,
	datad => \vgamap|videoGen|pixelDraw~17_combout\,
	combout => \vgamap|videoGen|pixelDraw~19_combout\);

-- Location: LCCOMB_X58_Y62_N20
\vgamap|videoGen|pixelDraw~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~20_combout\ = (\vgamap|videoGen|pixelDraw~12_combout\ & (\vgamap|videoGen|pixelDraw~19_combout\ & \vgamap|videoGen|pixelDraw~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoGen|pixelDraw~12_combout\,
	datac => \vgamap|videoGen|pixelDraw~19_combout\,
	datad => \vgamap|videoGen|pixelDraw~13_combout\,
	combout => \vgamap|videoGen|pixelDraw~20_combout\);

-- Location: LCCOMB_X58_Y62_N30
\vgamap|videoGen|colorAddress~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~2_combout\ = (!\vgamap|videoGen|pixelDraw~20_combout\ & (((!\vgamap|videoGen|pixelDraw~16_combout\) # (!\vgamap|videoGen|pixelDraw~98_combout\)) # (!\vgamap|videoGen|pixelDraw~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~12_combout\,
	datab => \vgamap|videoGen|pixelDraw~98_combout\,
	datac => \vgamap|videoGen|pixelDraw~16_combout\,
	datad => \vgamap|videoGen|pixelDraw~20_combout\,
	combout => \vgamap|videoGen|colorAddress~2_combout\);

-- Location: LCCOMB_X66_Y63_N0
\volmap|divide_clock:count[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|divide_clock:count[0]~1_combout\ = \volmap|divide_clock:count[0]~q\ $ (VCC)
-- \volmap|divide_clock:count[0]~2\ = CARRY(\volmap|divide_clock:count[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \volmap|divide_clock:count[0]~q\,
	datad => VCC,
	combout => \volmap|divide_clock:count[0]~1_combout\,
	cout => \volmap|divide_clock:count[0]~2\);

-- Location: FF_X66_Y63_N1
\volmap|divide_clock:count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \volmap|divide_clock:count[0]~1_combout\,
	sclr => \volmap|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|divide_clock:count[0]~q\);

-- Location: LCCOMB_X66_Y63_N2
\volmap|divide_clock:count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|divide_clock:count[1]~1_combout\ = (\volmap|divide_clock:count[1]~q\ & (!\volmap|divide_clock:count[0]~2\)) # (!\volmap|divide_clock:count[1]~q\ & ((\volmap|divide_clock:count[0]~2\) # (GND)))
-- \volmap|divide_clock:count[1]~2\ = CARRY((!\volmap|divide_clock:count[0]~2\) # (!\volmap|divide_clock:count[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \volmap|divide_clock:count[1]~q\,
	datad => VCC,
	cin => \volmap|divide_clock:count[0]~2\,
	combout => \volmap|divide_clock:count[1]~1_combout\,
	cout => \volmap|divide_clock:count[1]~2\);

-- Location: FF_X66_Y63_N3
\volmap|divide_clock:count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \volmap|divide_clock:count[1]~1_combout\,
	sclr => \volmap|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|divide_clock:count[1]~q\);

-- Location: LCCOMB_X66_Y63_N4
\volmap|divide_clock:count[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|divide_clock:count[2]~1_combout\ = (\volmap|divide_clock:count[2]~q\ & (\volmap|divide_clock:count[1]~2\ $ (GND))) # (!\volmap|divide_clock:count[2]~q\ & (!\volmap|divide_clock:count[1]~2\ & VCC))
-- \volmap|divide_clock:count[2]~2\ = CARRY((\volmap|divide_clock:count[2]~q\ & !\volmap|divide_clock:count[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \volmap|divide_clock:count[2]~q\,
	datad => VCC,
	cin => \volmap|divide_clock:count[1]~2\,
	combout => \volmap|divide_clock:count[2]~1_combout\,
	cout => \volmap|divide_clock:count[2]~2\);

-- Location: FF_X66_Y63_N5
\volmap|divide_clock:count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \volmap|divide_clock:count[2]~1_combout\,
	sclr => \volmap|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|divide_clock:count[2]~q\);

-- Location: LCCOMB_X66_Y63_N6
\volmap|divide_clock:count[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|divide_clock:count[3]~1_combout\ = (\volmap|divide_clock:count[3]~q\ & (!\volmap|divide_clock:count[2]~2\)) # (!\volmap|divide_clock:count[3]~q\ & ((\volmap|divide_clock:count[2]~2\) # (GND)))
-- \volmap|divide_clock:count[3]~2\ = CARRY((!\volmap|divide_clock:count[2]~2\) # (!\volmap|divide_clock:count[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \volmap|divide_clock:count[3]~q\,
	datad => VCC,
	cin => \volmap|divide_clock:count[2]~2\,
	combout => \volmap|divide_clock:count[3]~1_combout\,
	cout => \volmap|divide_clock:count[3]~2\);

-- Location: FF_X66_Y63_N7
\volmap|divide_clock:count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \volmap|divide_clock:count[3]~1_combout\,
	sclr => \volmap|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|divide_clock:count[3]~q\);

-- Location: LCCOMB_X66_Y63_N8
\volmap|divide_clock:count[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|divide_clock:count[4]~1_combout\ = (\volmap|divide_clock:count[4]~q\ & (\volmap|divide_clock:count[3]~2\ $ (GND))) # (!\volmap|divide_clock:count[4]~q\ & (!\volmap|divide_clock:count[3]~2\ & VCC))
-- \volmap|divide_clock:count[4]~2\ = CARRY((\volmap|divide_clock:count[4]~q\ & !\volmap|divide_clock:count[3]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \volmap|divide_clock:count[4]~q\,
	datad => VCC,
	cin => \volmap|divide_clock:count[3]~2\,
	combout => \volmap|divide_clock:count[4]~1_combout\,
	cout => \volmap|divide_clock:count[4]~2\);

-- Location: FF_X66_Y63_N9
\volmap|divide_clock:count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \volmap|divide_clock:count[4]~1_combout\,
	sclr => \volmap|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|divide_clock:count[4]~q\);

-- Location: LCCOMB_X66_Y63_N10
\volmap|divide_clock:count[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|divide_clock:count[5]~1_combout\ = (\volmap|divide_clock:count[5]~q\ & (!\volmap|divide_clock:count[4]~2\)) # (!\volmap|divide_clock:count[5]~q\ & ((\volmap|divide_clock:count[4]~2\) # (GND)))
-- \volmap|divide_clock:count[5]~2\ = CARRY((!\volmap|divide_clock:count[4]~2\) # (!\volmap|divide_clock:count[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \volmap|divide_clock:count[5]~q\,
	datad => VCC,
	cin => \volmap|divide_clock:count[4]~2\,
	combout => \volmap|divide_clock:count[5]~1_combout\,
	cout => \volmap|divide_clock:count[5]~2\);

-- Location: FF_X66_Y63_N11
\volmap|divide_clock:count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \volmap|divide_clock:count[5]~1_combout\,
	sclr => \volmap|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|divide_clock:count[5]~q\);

-- Location: LCCOMB_X66_Y63_N12
\volmap|divide_clock:count[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|divide_clock:count[6]~1_combout\ = (\volmap|divide_clock:count[6]~q\ & (\volmap|divide_clock:count[5]~2\ $ (GND))) # (!\volmap|divide_clock:count[6]~q\ & (!\volmap|divide_clock:count[5]~2\ & VCC))
-- \volmap|divide_clock:count[6]~2\ = CARRY((\volmap|divide_clock:count[6]~q\ & !\volmap|divide_clock:count[5]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \volmap|divide_clock:count[6]~q\,
	datad => VCC,
	cin => \volmap|divide_clock:count[5]~2\,
	combout => \volmap|divide_clock:count[6]~1_combout\,
	cout => \volmap|divide_clock:count[6]~2\);

-- Location: FF_X66_Y63_N13
\volmap|divide_clock:count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \volmap|divide_clock:count[6]~1_combout\,
	sclr => \volmap|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|divide_clock:count[6]~q\);

-- Location: LCCOMB_X66_Y63_N14
\volmap|divide_clock:count[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|divide_clock:count[7]~1_combout\ = (\volmap|divide_clock:count[7]~q\ & (!\volmap|divide_clock:count[6]~2\)) # (!\volmap|divide_clock:count[7]~q\ & ((\volmap|divide_clock:count[6]~2\) # (GND)))
-- \volmap|divide_clock:count[7]~2\ = CARRY((!\volmap|divide_clock:count[6]~2\) # (!\volmap|divide_clock:count[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \volmap|divide_clock:count[7]~q\,
	datad => VCC,
	cin => \volmap|divide_clock:count[6]~2\,
	combout => \volmap|divide_clock:count[7]~1_combout\,
	cout => \volmap|divide_clock:count[7]~2\);

-- Location: FF_X66_Y63_N15
\volmap|divide_clock:count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \volmap|divide_clock:count[7]~1_combout\,
	sclr => \volmap|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|divide_clock:count[7]~q\);

-- Location: LCCOMB_X66_Y63_N16
\volmap|divide_clock:count[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|divide_clock:count[8]~1_combout\ = (\volmap|divide_clock:count[8]~q\ & (\volmap|divide_clock:count[7]~2\ $ (GND))) # (!\volmap|divide_clock:count[8]~q\ & (!\volmap|divide_clock:count[7]~2\ & VCC))
-- \volmap|divide_clock:count[8]~2\ = CARRY((\volmap|divide_clock:count[8]~q\ & !\volmap|divide_clock:count[7]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \volmap|divide_clock:count[8]~q\,
	datad => VCC,
	cin => \volmap|divide_clock:count[7]~2\,
	combout => \volmap|divide_clock:count[8]~1_combout\,
	cout => \volmap|divide_clock:count[8]~2\);

-- Location: FF_X66_Y63_N17
\volmap|divide_clock:count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \volmap|divide_clock:count[8]~1_combout\,
	sclr => \volmap|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|divide_clock:count[8]~q\);

-- Location: LCCOMB_X66_Y63_N18
\volmap|divide_clock:count[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|divide_clock:count[9]~1_combout\ = (\volmap|divide_clock:count[9]~q\ & (!\volmap|divide_clock:count[8]~2\)) # (!\volmap|divide_clock:count[9]~q\ & ((\volmap|divide_clock:count[8]~2\) # (GND)))
-- \volmap|divide_clock:count[9]~2\ = CARRY((!\volmap|divide_clock:count[8]~2\) # (!\volmap|divide_clock:count[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \volmap|divide_clock:count[9]~q\,
	datad => VCC,
	cin => \volmap|divide_clock:count[8]~2\,
	combout => \volmap|divide_clock:count[9]~1_combout\,
	cout => \volmap|divide_clock:count[9]~2\);

-- Location: FF_X66_Y63_N19
\volmap|divide_clock:count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \volmap|divide_clock:count[9]~1_combout\,
	sclr => \volmap|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|divide_clock:count[9]~q\);

-- Location: LCCOMB_X66_Y63_N20
\volmap|divide_clock:count[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|divide_clock:count[10]~1_combout\ = (\volmap|divide_clock:count[10]~q\ & (\volmap|divide_clock:count[9]~2\ $ (GND))) # (!\volmap|divide_clock:count[10]~q\ & (!\volmap|divide_clock:count[9]~2\ & VCC))
-- \volmap|divide_clock:count[10]~2\ = CARRY((\volmap|divide_clock:count[10]~q\ & !\volmap|divide_clock:count[9]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \volmap|divide_clock:count[10]~q\,
	datad => VCC,
	cin => \volmap|divide_clock:count[9]~2\,
	combout => \volmap|divide_clock:count[10]~1_combout\,
	cout => \volmap|divide_clock:count[10]~2\);

-- Location: FF_X66_Y63_N21
\volmap|divide_clock:count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \volmap|divide_clock:count[10]~1_combout\,
	sclr => \volmap|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|divide_clock:count[10]~q\);

-- Location: LCCOMB_X66_Y63_N22
\volmap|divide_clock:count[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|divide_clock:count[11]~1_combout\ = (\volmap|divide_clock:count[11]~q\ & (!\volmap|divide_clock:count[10]~2\)) # (!\volmap|divide_clock:count[11]~q\ & ((\volmap|divide_clock:count[10]~2\) # (GND)))
-- \volmap|divide_clock:count[11]~2\ = CARRY((!\volmap|divide_clock:count[10]~2\) # (!\volmap|divide_clock:count[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \volmap|divide_clock:count[11]~q\,
	datad => VCC,
	cin => \volmap|divide_clock:count[10]~2\,
	combout => \volmap|divide_clock:count[11]~1_combout\,
	cout => \volmap|divide_clock:count[11]~2\);

-- Location: FF_X66_Y63_N23
\volmap|divide_clock:count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \volmap|divide_clock:count[11]~1_combout\,
	sclr => \volmap|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|divide_clock:count[11]~q\);

-- Location: LCCOMB_X66_Y63_N24
\volmap|divide_clock:count[12]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|divide_clock:count[12]~1_combout\ = (\volmap|divide_clock:count[12]~q\ & (\volmap|divide_clock:count[11]~2\ $ (GND))) # (!\volmap|divide_clock:count[12]~q\ & (!\volmap|divide_clock:count[11]~2\ & VCC))
-- \volmap|divide_clock:count[12]~2\ = CARRY((\volmap|divide_clock:count[12]~q\ & !\volmap|divide_clock:count[11]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \volmap|divide_clock:count[12]~q\,
	datad => VCC,
	cin => \volmap|divide_clock:count[11]~2\,
	combout => \volmap|divide_clock:count[12]~1_combout\,
	cout => \volmap|divide_clock:count[12]~2\);

-- Location: FF_X66_Y63_N25
\volmap|divide_clock:count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \volmap|divide_clock:count[12]~1_combout\,
	sclr => \volmap|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|divide_clock:count[12]~q\);

-- Location: LCCOMB_X66_Y63_N26
\volmap|divide_clock:count[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|divide_clock:count[13]~1_combout\ = (\volmap|divide_clock:count[13]~q\ & (!\volmap|divide_clock:count[12]~2\)) # (!\volmap|divide_clock:count[13]~q\ & ((\volmap|divide_clock:count[12]~2\) # (GND)))
-- \volmap|divide_clock:count[13]~2\ = CARRY((!\volmap|divide_clock:count[12]~2\) # (!\volmap|divide_clock:count[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \volmap|divide_clock:count[13]~q\,
	datad => VCC,
	cin => \volmap|divide_clock:count[12]~2\,
	combout => \volmap|divide_clock:count[13]~1_combout\,
	cout => \volmap|divide_clock:count[13]~2\);

-- Location: FF_X66_Y63_N27
\volmap|divide_clock:count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \volmap|divide_clock:count[13]~1_combout\,
	sclr => \volmap|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|divide_clock:count[13]~q\);

-- Location: LCCOMB_X66_Y63_N28
\volmap|divide_clock:count[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|divide_clock:count[14]~1_combout\ = (\volmap|divide_clock:count[14]~q\ & (\volmap|divide_clock:count[13]~2\ $ (GND))) # (!\volmap|divide_clock:count[14]~q\ & (!\volmap|divide_clock:count[13]~2\ & VCC))
-- \volmap|divide_clock:count[14]~2\ = CARRY((\volmap|divide_clock:count[14]~q\ & !\volmap|divide_clock:count[13]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \volmap|divide_clock:count[14]~q\,
	datad => VCC,
	cin => \volmap|divide_clock:count[13]~2\,
	combout => \volmap|divide_clock:count[14]~1_combout\,
	cout => \volmap|divide_clock:count[14]~2\);

-- Location: FF_X66_Y63_N29
\volmap|divide_clock:count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \volmap|divide_clock:count[14]~1_combout\,
	sclr => \volmap|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|divide_clock:count[14]~q\);

-- Location: LCCOMB_X66_Y63_N30
\volmap|divide_clock:count[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|divide_clock:count[15]~1_combout\ = (\volmap|divide_clock:count[15]~q\ & (!\volmap|divide_clock:count[14]~2\)) # (!\volmap|divide_clock:count[15]~q\ & ((\volmap|divide_clock:count[14]~2\) # (GND)))
-- \volmap|divide_clock:count[15]~2\ = CARRY((!\volmap|divide_clock:count[14]~2\) # (!\volmap|divide_clock:count[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \volmap|divide_clock:count[15]~q\,
	datad => VCC,
	cin => \volmap|divide_clock:count[14]~2\,
	combout => \volmap|divide_clock:count[15]~1_combout\,
	cout => \volmap|divide_clock:count[15]~2\);

-- Location: FF_X66_Y63_N31
\volmap|divide_clock:count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \volmap|divide_clock:count[15]~1_combout\,
	sclr => \volmap|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|divide_clock:count[15]~q\);

-- Location: LCCOMB_X66_Y62_N0
\volmap|divide_clock:count[16]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|divide_clock:count[16]~1_combout\ = (\volmap|divide_clock:count[16]~q\ & (\volmap|divide_clock:count[15]~2\ $ (GND))) # (!\volmap|divide_clock:count[16]~q\ & (!\volmap|divide_clock:count[15]~2\ & VCC))
-- \volmap|divide_clock:count[16]~2\ = CARRY((\volmap|divide_clock:count[16]~q\ & !\volmap|divide_clock:count[15]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \volmap|divide_clock:count[16]~q\,
	datad => VCC,
	cin => \volmap|divide_clock:count[15]~2\,
	combout => \volmap|divide_clock:count[16]~1_combout\,
	cout => \volmap|divide_clock:count[16]~2\);

-- Location: FF_X65_Y63_N19
\volmap|divide_clock:count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \volmap|divide_clock:count[16]~1_combout\,
	sclr => \volmap|LessThan0~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|divide_clock:count[16]~q\);

-- Location: LCCOMB_X66_Y62_N2
\volmap|divide_clock:count[17]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|divide_clock:count[17]~1_combout\ = (\volmap|divide_clock:count[17]~q\ & (!\volmap|divide_clock:count[16]~2\)) # (!\volmap|divide_clock:count[17]~q\ & ((\volmap|divide_clock:count[16]~2\) # (GND)))
-- \volmap|divide_clock:count[17]~2\ = CARRY((!\volmap|divide_clock:count[16]~2\) # (!\volmap|divide_clock:count[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \volmap|divide_clock:count[17]~q\,
	datad => VCC,
	cin => \volmap|divide_clock:count[16]~2\,
	combout => \volmap|divide_clock:count[17]~1_combout\,
	cout => \volmap|divide_clock:count[17]~2\);

-- Location: FF_X66_Y62_N3
\volmap|divide_clock:count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \volmap|divide_clock:count[17]~1_combout\,
	sclr => \volmap|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|divide_clock:count[17]~q\);

-- Location: LCCOMB_X66_Y62_N4
\volmap|divide_clock:count[18]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|divide_clock:count[18]~1_combout\ = (\volmap|divide_clock:count[18]~q\ & (\volmap|divide_clock:count[17]~2\ $ (GND))) # (!\volmap|divide_clock:count[18]~q\ & (!\volmap|divide_clock:count[17]~2\ & VCC))
-- \volmap|divide_clock:count[18]~2\ = CARRY((\volmap|divide_clock:count[18]~q\ & !\volmap|divide_clock:count[17]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \volmap|divide_clock:count[18]~q\,
	datad => VCC,
	cin => \volmap|divide_clock:count[17]~2\,
	combout => \volmap|divide_clock:count[18]~1_combout\,
	cout => \volmap|divide_clock:count[18]~2\);

-- Location: FF_X66_Y62_N5
\volmap|divide_clock:count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \volmap|divide_clock:count[18]~1_combout\,
	sclr => \volmap|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|divide_clock:count[18]~q\);

-- Location: LCCOMB_X66_Y62_N6
\volmap|divide_clock:count[19]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|divide_clock:count[19]~1_combout\ = (\volmap|divide_clock:count[19]~q\ & (!\volmap|divide_clock:count[18]~2\)) # (!\volmap|divide_clock:count[19]~q\ & ((\volmap|divide_clock:count[18]~2\) # (GND)))
-- \volmap|divide_clock:count[19]~2\ = CARRY((!\volmap|divide_clock:count[18]~2\) # (!\volmap|divide_clock:count[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \volmap|divide_clock:count[19]~q\,
	datad => VCC,
	cin => \volmap|divide_clock:count[18]~2\,
	combout => \volmap|divide_clock:count[19]~1_combout\,
	cout => \volmap|divide_clock:count[19]~2\);

-- Location: FF_X66_Y62_N7
\volmap|divide_clock:count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \volmap|divide_clock:count[19]~1_combout\,
	sclr => \volmap|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|divide_clock:count[19]~q\);

-- Location: LCCOMB_X66_Y62_N8
\volmap|divide_clock:count[20]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|divide_clock:count[20]~1_combout\ = (\volmap|divide_clock:count[20]~q\ & (\volmap|divide_clock:count[19]~2\ $ (GND))) # (!\volmap|divide_clock:count[20]~q\ & (!\volmap|divide_clock:count[19]~2\ & VCC))
-- \volmap|divide_clock:count[20]~2\ = CARRY((\volmap|divide_clock:count[20]~q\ & !\volmap|divide_clock:count[19]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \volmap|divide_clock:count[20]~q\,
	datad => VCC,
	cin => \volmap|divide_clock:count[19]~2\,
	combout => \volmap|divide_clock:count[20]~1_combout\,
	cout => \volmap|divide_clock:count[20]~2\);

-- Location: FF_X66_Y62_N9
\volmap|divide_clock:count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \volmap|divide_clock:count[20]~1_combout\,
	sclr => \volmap|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|divide_clock:count[20]~q\);

-- Location: LCCOMB_X66_Y62_N10
\volmap|divide_clock:count[21]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|divide_clock:count[21]~1_combout\ = (\volmap|divide_clock:count[21]~q\ & (!\volmap|divide_clock:count[20]~2\)) # (!\volmap|divide_clock:count[21]~q\ & ((\volmap|divide_clock:count[20]~2\) # (GND)))
-- \volmap|divide_clock:count[21]~2\ = CARRY((!\volmap|divide_clock:count[20]~2\) # (!\volmap|divide_clock:count[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \volmap|divide_clock:count[21]~q\,
	datad => VCC,
	cin => \volmap|divide_clock:count[20]~2\,
	combout => \volmap|divide_clock:count[21]~1_combout\,
	cout => \volmap|divide_clock:count[21]~2\);

-- Location: FF_X66_Y62_N11
\volmap|divide_clock:count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \volmap|divide_clock:count[21]~1_combout\,
	sclr => \volmap|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|divide_clock:count[21]~q\);

-- Location: LCCOMB_X65_Y63_N26
\volmap|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|LessThan0~9_combout\ = (\volmap|divide_clock:count[20]~q\ & (\volmap|divide_clock:count[18]~q\ & (\volmap|divide_clock:count[19]~q\ & \volmap|divide_clock:count[21]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \volmap|divide_clock:count[20]~q\,
	datab => \volmap|divide_clock:count[18]~q\,
	datac => \volmap|divide_clock:count[19]~q\,
	datad => \volmap|divide_clock:count[21]~q\,
	combout => \volmap|LessThan0~9_combout\);

-- Location: LCCOMB_X66_Y62_N12
\volmap|divide_clock:count[22]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|divide_clock:count[22]~1_combout\ = (\volmap|divide_clock:count[22]~q\ & (\volmap|divide_clock:count[21]~2\ $ (GND))) # (!\volmap|divide_clock:count[22]~q\ & (!\volmap|divide_clock:count[21]~2\ & VCC))
-- \volmap|divide_clock:count[22]~2\ = CARRY((\volmap|divide_clock:count[22]~q\ & !\volmap|divide_clock:count[21]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \volmap|divide_clock:count[22]~q\,
	datad => VCC,
	cin => \volmap|divide_clock:count[21]~2\,
	combout => \volmap|divide_clock:count[22]~1_combout\,
	cout => \volmap|divide_clock:count[22]~2\);

-- Location: FF_X66_Y62_N13
\volmap|divide_clock:count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \volmap|divide_clock:count[22]~1_combout\,
	sclr => \volmap|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|divide_clock:count[22]~q\);

-- Location: LCCOMB_X66_Y62_N14
\volmap|divide_clock:count[23]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|divide_clock:count[23]~1_combout\ = (\volmap|divide_clock:count[23]~q\ & (!\volmap|divide_clock:count[22]~2\)) # (!\volmap|divide_clock:count[23]~q\ & ((\volmap|divide_clock:count[22]~2\) # (GND)))
-- \volmap|divide_clock:count[23]~2\ = CARRY((!\volmap|divide_clock:count[22]~2\) # (!\volmap|divide_clock:count[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \volmap|divide_clock:count[23]~q\,
	datad => VCC,
	cin => \volmap|divide_clock:count[22]~2\,
	combout => \volmap|divide_clock:count[23]~1_combout\,
	cout => \volmap|divide_clock:count[23]~2\);

-- Location: FF_X66_Y62_N15
\volmap|divide_clock:count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \volmap|divide_clock:count[23]~1_combout\,
	sclr => \volmap|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|divide_clock:count[23]~q\);

-- Location: LCCOMB_X66_Y62_N16
\volmap|divide_clock:count[24]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|divide_clock:count[24]~1_combout\ = (\volmap|divide_clock:count[24]~q\ & (\volmap|divide_clock:count[23]~2\ $ (GND))) # (!\volmap|divide_clock:count[24]~q\ & (!\volmap|divide_clock:count[23]~2\ & VCC))
-- \volmap|divide_clock:count[24]~2\ = CARRY((\volmap|divide_clock:count[24]~q\ & !\volmap|divide_clock:count[23]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \volmap|divide_clock:count[24]~q\,
	datad => VCC,
	cin => \volmap|divide_clock:count[23]~2\,
	combout => \volmap|divide_clock:count[24]~1_combout\,
	cout => \volmap|divide_clock:count[24]~2\);

-- Location: FF_X66_Y62_N17
\volmap|divide_clock:count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \volmap|divide_clock:count[24]~1_combout\,
	sclr => \volmap|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|divide_clock:count[24]~q\);

-- Location: LCCOMB_X66_Y62_N18
\volmap|divide_clock:count[25]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|divide_clock:count[25]~1_combout\ = (\volmap|divide_clock:count[25]~q\ & (!\volmap|divide_clock:count[24]~2\)) # (!\volmap|divide_clock:count[25]~q\ & ((\volmap|divide_clock:count[24]~2\) # (GND)))
-- \volmap|divide_clock:count[25]~2\ = CARRY((!\volmap|divide_clock:count[24]~2\) # (!\volmap|divide_clock:count[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \volmap|divide_clock:count[25]~q\,
	datad => VCC,
	cin => \volmap|divide_clock:count[24]~2\,
	combout => \volmap|divide_clock:count[25]~1_combout\,
	cout => \volmap|divide_clock:count[25]~2\);

-- Location: FF_X66_Y62_N19
\volmap|divide_clock:count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \volmap|divide_clock:count[25]~1_combout\,
	sclr => \volmap|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|divide_clock:count[25]~q\);

-- Location: LCCOMB_X66_Y62_N20
\volmap|divide_clock:count[26]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|divide_clock:count[26]~1_combout\ = (\volmap|divide_clock:count[26]~q\ & (\volmap|divide_clock:count[25]~2\ $ (GND))) # (!\volmap|divide_clock:count[26]~q\ & (!\volmap|divide_clock:count[25]~2\ & VCC))
-- \volmap|divide_clock:count[26]~2\ = CARRY((\volmap|divide_clock:count[26]~q\ & !\volmap|divide_clock:count[25]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \volmap|divide_clock:count[26]~q\,
	datad => VCC,
	cin => \volmap|divide_clock:count[25]~2\,
	combout => \volmap|divide_clock:count[26]~1_combout\,
	cout => \volmap|divide_clock:count[26]~2\);

-- Location: FF_X66_Y62_N21
\volmap|divide_clock:count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \volmap|divide_clock:count[26]~1_combout\,
	sclr => \volmap|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|divide_clock:count[26]~q\);

-- Location: LCCOMB_X66_Y62_N22
\volmap|divide_clock:count[27]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|divide_clock:count[27]~1_combout\ = (\volmap|divide_clock:count[27]~q\ & (!\volmap|divide_clock:count[26]~2\)) # (!\volmap|divide_clock:count[27]~q\ & ((\volmap|divide_clock:count[26]~2\) # (GND)))
-- \volmap|divide_clock:count[27]~2\ = CARRY((!\volmap|divide_clock:count[26]~2\) # (!\volmap|divide_clock:count[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \volmap|divide_clock:count[27]~q\,
	datad => VCC,
	cin => \volmap|divide_clock:count[26]~2\,
	combout => \volmap|divide_clock:count[27]~1_combout\,
	cout => \volmap|divide_clock:count[27]~2\);

-- Location: FF_X66_Y62_N23
\volmap|divide_clock:count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \volmap|divide_clock:count[27]~1_combout\,
	sclr => \volmap|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|divide_clock:count[27]~q\);

-- Location: LCCOMB_X66_Y62_N24
\volmap|divide_clock:count[28]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|divide_clock:count[28]~1_combout\ = (\volmap|divide_clock:count[28]~q\ & (\volmap|divide_clock:count[27]~2\ $ (GND))) # (!\volmap|divide_clock:count[28]~q\ & (!\volmap|divide_clock:count[27]~2\ & VCC))
-- \volmap|divide_clock:count[28]~2\ = CARRY((\volmap|divide_clock:count[28]~q\ & !\volmap|divide_clock:count[27]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \volmap|divide_clock:count[28]~q\,
	datad => VCC,
	cin => \volmap|divide_clock:count[27]~2\,
	combout => \volmap|divide_clock:count[28]~1_combout\,
	cout => \volmap|divide_clock:count[28]~2\);

-- Location: FF_X66_Y62_N25
\volmap|divide_clock:count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \volmap|divide_clock:count[28]~1_combout\,
	sclr => \volmap|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|divide_clock:count[28]~q\);

-- Location: LCCOMB_X66_Y62_N26
\volmap|divide_clock:count[29]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|divide_clock:count[29]~1_combout\ = (\volmap|divide_clock:count[29]~q\ & (!\volmap|divide_clock:count[28]~2\)) # (!\volmap|divide_clock:count[29]~q\ & ((\volmap|divide_clock:count[28]~2\) # (GND)))
-- \volmap|divide_clock:count[29]~2\ = CARRY((!\volmap|divide_clock:count[28]~2\) # (!\volmap|divide_clock:count[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \volmap|divide_clock:count[29]~q\,
	datad => VCC,
	cin => \volmap|divide_clock:count[28]~2\,
	combout => \volmap|divide_clock:count[29]~1_combout\,
	cout => \volmap|divide_clock:count[29]~2\);

-- Location: FF_X66_Y62_N27
\volmap|divide_clock:count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \volmap|divide_clock:count[29]~1_combout\,
	sclr => \volmap|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|divide_clock:count[29]~q\);

-- Location: LCCOMB_X66_Y62_N28
\volmap|divide_clock:count[30]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|divide_clock:count[30]~1_combout\ = (\volmap|divide_clock:count[30]~q\ & (\volmap|divide_clock:count[29]~2\ $ (GND))) # (!\volmap|divide_clock:count[30]~q\ & (!\volmap|divide_clock:count[29]~2\ & VCC))
-- \volmap|divide_clock:count[30]~2\ = CARRY((\volmap|divide_clock:count[30]~q\ & !\volmap|divide_clock:count[29]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \volmap|divide_clock:count[30]~q\,
	datad => VCC,
	cin => \volmap|divide_clock:count[29]~2\,
	combout => \volmap|divide_clock:count[30]~1_combout\,
	cout => \volmap|divide_clock:count[30]~2\);

-- Location: FF_X66_Y62_N29
\volmap|divide_clock:count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \volmap|divide_clock:count[30]~1_combout\,
	sclr => \volmap|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|divide_clock:count[30]~q\);

-- Location: LCCOMB_X66_Y62_N30
\volmap|divide_clock:count[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|divide_clock:count[31]~1_combout\ = \volmap|divide_clock:count[31]~q\ $ (\volmap|divide_clock:count[30]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \volmap|divide_clock:count[31]~q\,
	cin => \volmap|divide_clock:count[30]~2\,
	combout => \volmap|divide_clock:count[31]~1_combout\);

-- Location: FF_X66_Y62_N31
\volmap|divide_clock:count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \volmap|divide_clock:count[31]~1_combout\,
	sclr => \volmap|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|divide_clock:count[31]~q\);

-- Location: LCCOMB_X65_Y63_N22
\volmap|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|LessThan0~0_combout\ = (\volmap|divide_clock:count[25]~q\) # ((\volmap|divide_clock:count[24]~q\) # ((\volmap|divide_clock:count[22]~q\) # (\volmap|divide_clock:count[23]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \volmap|divide_clock:count[25]~q\,
	datab => \volmap|divide_clock:count[24]~q\,
	datac => \volmap|divide_clock:count[22]~q\,
	datad => \volmap|divide_clock:count[23]~q\,
	combout => \volmap|LessThan0~0_combout\);

-- Location: LCCOMB_X65_Y63_N0
\volmap|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|LessThan0~1_combout\ = (\volmap|divide_clock:count[28]~q\) # ((\volmap|divide_clock:count[27]~q\) # ((\volmap|divide_clock:count[26]~q\) # (\volmap|divide_clock:count[29]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \volmap|divide_clock:count[28]~q\,
	datab => \volmap|divide_clock:count[27]~q\,
	datac => \volmap|divide_clock:count[26]~q\,
	datad => \volmap|divide_clock:count[29]~q\,
	combout => \volmap|LessThan0~1_combout\);

-- Location: LCCOMB_X65_Y63_N14
\volmap|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|LessThan0~2_combout\ = (\volmap|divide_clock:count[30]~q\) # ((\volmap|LessThan0~0_combout\) # (\volmap|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \volmap|divide_clock:count[30]~q\,
	datac => \volmap|LessThan0~0_combout\,
	datad => \volmap|LessThan0~1_combout\,
	combout => \volmap|LessThan0~2_combout\);

-- Location: LCCOMB_X65_Y63_N4
\volmap|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|LessThan0~7_combout\ = (\volmap|divide_clock:count[12]~q\) # ((\volmap|divide_clock:count[15]~q\) # ((\volmap|divide_clock:count[14]~q\) # (\volmap|divide_clock:count[13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \volmap|divide_clock:count[12]~q\,
	datab => \volmap|divide_clock:count[15]~q\,
	datac => \volmap|divide_clock:count[14]~q\,
	datad => \volmap|divide_clock:count[13]~q\,
	combout => \volmap|LessThan0~7_combout\);

-- Location: LCCOMB_X65_Y63_N8
\volmap|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|LessThan0~3_combout\ = (\volmap|divide_clock:count[3]~q\) # ((\volmap|divide_clock:count[0]~q\) # ((\volmap|divide_clock:count[1]~q\) # (\volmap|divide_clock:count[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \volmap|divide_clock:count[3]~q\,
	datab => \volmap|divide_clock:count[0]~q\,
	datac => \volmap|divide_clock:count[1]~q\,
	datad => \volmap|divide_clock:count[2]~q\,
	combout => \volmap|LessThan0~3_combout\);

-- Location: LCCOMB_X65_Y63_N24
\volmap|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|LessThan0~4_combout\ = (\volmap|divide_clock:count[5]~q\) # ((\volmap|divide_clock:count[7]~q\) # ((\volmap|divide_clock:count[6]~q\) # (\volmap|divide_clock:count[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \volmap|divide_clock:count[5]~q\,
	datab => \volmap|divide_clock:count[7]~q\,
	datac => \volmap|divide_clock:count[6]~q\,
	datad => \volmap|divide_clock:count[4]~q\,
	combout => \volmap|LessThan0~4_combout\);

-- Location: LCCOMB_X65_Y63_N2
\volmap|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|LessThan0~5_combout\ = (\volmap|divide_clock:count[8]~q\ & ((\volmap|LessThan0~3_combout\) # (\volmap|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \volmap|divide_clock:count[8]~q\,
	datac => \volmap|LessThan0~3_combout\,
	datad => \volmap|LessThan0~4_combout\,
	combout => \volmap|LessThan0~5_combout\);

-- Location: LCCOMB_X65_Y63_N16
\volmap|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|LessThan0~6_combout\ = (\volmap|divide_clock:count[11]~q\ & ((\volmap|divide_clock:count[10]~q\) # ((\volmap|divide_clock:count[9]~q\) # (\volmap|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \volmap|divide_clock:count[10]~q\,
	datab => \volmap|divide_clock:count[9]~q\,
	datac => \volmap|divide_clock:count[11]~q\,
	datad => \volmap|LessThan0~5_combout\,
	combout => \volmap|LessThan0~6_combout\);

-- Location: LCCOMB_X65_Y63_N10
\volmap|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|LessThan0~8_combout\ = (\volmap|divide_clock:count[17]~q\) # ((\volmap|divide_clock:count[16]~q\ & ((\volmap|LessThan0~7_combout\) # (\volmap|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \volmap|divide_clock:count[17]~q\,
	datab => \volmap|divide_clock:count[16]~q\,
	datac => \volmap|LessThan0~7_combout\,
	datad => \volmap|LessThan0~6_combout\,
	combout => \volmap|LessThan0~8_combout\);

-- Location: LCCOMB_X65_Y63_N30
\volmap|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|LessThan0~10_combout\ = (!\volmap|divide_clock:count[31]~q\ & ((\volmap|LessThan0~2_combout\) # ((\volmap|LessThan0~9_combout\ & \volmap|LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \volmap|LessThan0~9_combout\,
	datab => \volmap|divide_clock:count[31]~q\,
	datac => \volmap|LessThan0~2_combout\,
	datad => \volmap|LessThan0~8_combout\,
	combout => \volmap|LessThan0~10_combout\);

-- Location: LCCOMB_X65_Y63_N20
\volmap|div_clk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|div_clk~0_combout\ = \volmap|LessThan0~10_combout\ $ (\volmap|div_clk~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \volmap|LessThan0~10_combout\,
	datad => \volmap|div_clk~q\,
	combout => \volmap|div_clk~0_combout\);

-- Location: LCCOMB_X65_Y63_N12
\volmap|div_clk~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|div_clk~feeder_combout\ = \volmap|div_clk~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \volmap|div_clk~0_combout\,
	combout => \volmap|div_clk~feeder_combout\);

-- Location: FF_X65_Y63_N13
\volmap|div_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \volmap|div_clk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|div_clk~q\);

-- Location: CLKCTRL_G13
\volmap|div_clk~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \volmap|div_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \volmap|div_clk~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y42_N15
\vol_down~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vol_down,
	o => \vol_down~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\vol_up~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vol_up,
	o => \vol_up~input_o\);

-- Location: LCCOMB_X62_Y62_N24
\volmap|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|Mux4~0_combout\ = (\vol_down~input_o\ & (!\vol_up~input_o\ & \volmap|current\(0))) # (!\vol_down~input_o\ & (\vol_up~input_o\ & !\volmap|current\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vol_down~input_o\,
	datab => \vol_up~input_o\,
	datad => \volmap|current\(0),
	combout => \volmap|Mux4~0_combout\);

-- Location: LCCOMB_X62_Y62_N16
\volmap|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|Mux4~1_combout\ = (\volmap|current\(0) & ((\volmap|current\(2)) # (\volmap|current\(1) $ (\volmap|Mux4~0_combout\)))) # (!\volmap|current\(0) & ((\volmap|Mux4~0_combout\ & (\volmap|current\(2))) # (!\volmap|Mux4~0_combout\ & 
-- ((\volmap|current\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \volmap|current\(0),
	datab => \volmap|current\(2),
	datac => \volmap|current\(1),
	datad => \volmap|Mux4~0_combout\,
	combout => \volmap|Mux4~1_combout\);

-- Location: FF_X62_Y62_N17
\volmap|current[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \volmap|div_clk~clkctrl_outclk\,
	d => \volmap|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|current\(1));

-- Location: LCCOMB_X62_Y62_N2
\volmap|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|Mux5~0_combout\ = \volmap|current\(2) $ (((\vol_down~input_o\) # ((\volmap|current\(1)) # (!\vol_up~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vol_down~input_o\,
	datab => \vol_up~input_o\,
	datac => \volmap|current\(2),
	datad => \volmap|current\(1),
	combout => \volmap|Mux5~0_combout\);

-- Location: LCCOMB_X62_Y62_N8
\volmap|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|Mux5~1_combout\ = (\volmap|Mux5~0_combout\ & (\vol_down~input_o\ $ (\vol_up~input_o\ $ (\volmap|current\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vol_down~input_o\,
	datab => \vol_up~input_o\,
	datac => \volmap|current\(0),
	datad => \volmap|Mux5~0_combout\,
	combout => \volmap|Mux5~1_combout\);

-- Location: FF_X62_Y62_N9
\volmap|current[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \volmap|div_clk~clkctrl_outclk\,
	d => \volmap|Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|current\(0));

-- Location: LCCOMB_X62_Y62_N4
\volmap|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|Mux3~0_combout\ = (\vol_down~input_o\ & ((\volmap|current\(2)) # (!\vol_up~input_o\))) # (!\vol_down~input_o\ & (!\vol_up~input_o\ & \volmap|current\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vol_down~input_o\,
	datab => \vol_up~input_o\,
	datac => \volmap|current\(2),
	combout => \volmap|Mux3~0_combout\);

-- Location: LCCOMB_X62_Y62_N14
\volmap|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|Mux3~1_combout\ = (\volmap|Mux3~0_combout\ & ((\volmap|current\(0) & (!\volmap|current\(2) & \volmap|current\(1))) # (!\volmap|current\(0) & (\volmap|current\(2) & !\volmap|current\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \volmap|current\(0),
	datab => \volmap|Mux3~0_combout\,
	datac => \volmap|current\(2),
	datad => \volmap|current\(1),
	combout => \volmap|Mux3~1_combout\);

-- Location: FF_X62_Y62_N15
\volmap|current[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \volmap|div_clk~clkctrl_outclk\,
	d => \volmap|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|current\(2));

-- Location: LCCOMB_X62_Y62_N20
\volmap|z[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|z[2]~0_combout\ = ((!\volmap|current\(0) & !\volmap|current\(1))) # (!\volmap|current\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \volmap|current\(2),
	datac => \volmap|current\(0),
	datad => \volmap|current\(1),
	combout => \volmap|z[2]~0_combout\);

-- Location: FF_X62_Y62_N5
\volmap|z[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \volmap|div_clk~clkctrl_outclk\,
	asdata => \volmap|current\(2),
	sload => VCC,
	ena => \volmap|z[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|z\(2));

-- Location: LCCOMB_X59_Y63_N8
\vgamap|videoGen|LessThan37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan37~0_combout\ = (\vgamap|videoSync|pixel_row\(3) & ((\vgamap|videoSync|pixel_row\(2)) # ((\vgamap|videoSync|pixel_row\(0)) # (\vgamap|videoSync|pixel_row\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(3),
	datab => \vgamap|videoSync|pixel_row\(2),
	datac => \vgamap|videoSync|pixel_row\(0),
	datad => \vgamap|videoSync|pixel_row\(1),
	combout => \vgamap|videoGen|LessThan37~0_combout\);

-- Location: LCCOMB_X59_Y63_N26
\vgamap|videoGen|pixelDraw~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~47_combout\ = (\vgamap|videoSync|pixel_row\(4) & (((!\vgamap|videoSync|pixel_row\(3))) # (!\vgamap|videoSync|pixel_row\(2)))) # (!\vgamap|videoSync|pixel_row\(4) & (((\vgamap|videoGen|LessThan37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(2),
	datab => \vgamap|videoGen|LessThan37~0_combout\,
	datac => \vgamap|videoSync|pixel_row\(4),
	datad => \vgamap|videoSync|pixel_row\(3),
	combout => \vgamap|videoGen|pixelDraw~47_combout\);

-- Location: LCCOMB_X59_Y63_N12
\vgamap|videoGen|pixelDraw~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~48_combout\ = (\vgamap|videoSync|pixel_row\(6) & (\vgamap|videoSync|pixel_row\(7) & !\vgamap|videoSync|pixel_row\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(6),
	datac => \vgamap|videoSync|pixel_row\(7),
	datad => \vgamap|videoSync|pixel_row\(8),
	combout => \vgamap|videoGen|pixelDraw~48_combout\);

-- Location: LCCOMB_X57_Y62_N30
\vgamap|videoGen|pixelDraw~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~50_combout\ = (\vgamap|videoSync|pixel_column\(9) & (!\vgamap|videoSync|pixel_column\(8) & !\vgamap|videoSync|pixel_column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(9),
	datab => \vgamap|videoSync|pixel_column\(8),
	datad => \vgamap|videoSync|pixel_column\(7),
	combout => \vgamap|videoGen|pixelDraw~50_combout\);

-- Location: LCCOMB_X55_Y62_N2
\vgamap|videoGen|pixelDraw~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~102_combout\ = (\vgamap|videoSync|pixel_column\(5) & ((\vgamap|videoSync|pixel_column\(3)) # ((\vgamap|videoSync|pixel_column\(4)) # (\vgamap|videoGen|LessThan44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(3),
	datab => \vgamap|videoSync|pixel_column\(4),
	datac => \vgamap|videoGen|LessThan44~0_combout\,
	datad => \vgamap|videoSync|pixel_column\(5),
	combout => \vgamap|videoGen|pixelDraw~102_combout\);

-- Location: LCCOMB_X55_Y62_N22
\vgamap|videoGen|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan5~1_combout\ = (!\vgamap|videoSync|pixel_column\(5) & !\vgamap|videoSync|pixel_column\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|pixel_column\(5),
	datad => \vgamap|videoSync|pixel_column\(4),
	combout => \vgamap|videoGen|LessThan5~1_combout\);

-- Location: LCCOMB_X57_Y62_N28
\vgamap|videoGen|pixelDraw~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~49_combout\ = (\vgamap|videoSync|pixel_column\(6) & (((\vgamap|videoSync|pixel_column\(1) & \vgamap|videoGen|LessThan5~0_combout\)) # (!\vgamap|videoGen|LessThan5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|LessThan5~1_combout\,
	datab => \vgamap|videoSync|pixel_column\(6),
	datac => \vgamap|videoSync|pixel_column\(1),
	datad => \vgamap|videoGen|LessThan5~0_combout\,
	combout => \vgamap|videoGen|pixelDraw~49_combout\);

-- Location: LCCOMB_X57_Y62_N18
\vgamap|videoGen|pixelDraw~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~51_combout\ = ((\vgamap|videoGen|pixelDraw~102_combout\) # (!\vgamap|videoGen|pixelDraw~49_combout\)) # (!\vgamap|videoGen|pixelDraw~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~50_combout\,
	datac => \vgamap|videoGen|pixelDraw~102_combout\,
	datad => \vgamap|videoGen|pixelDraw~49_combout\,
	combout => \vgamap|videoGen|pixelDraw~51_combout\);

-- Location: LCCOMB_X60_Y62_N4
\vgamap|videoGen|pixelDraw~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~52_combout\ = (\vgamap|videoGen|pixelDraw~47_combout\ & (\vgamap|videoGen|pixelDraw~48_combout\ & (!\vgamap|videoSync|pixel_row\(5) & !\vgamap|videoGen|pixelDraw~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~47_combout\,
	datab => \vgamap|videoGen|pixelDraw~48_combout\,
	datac => \vgamap|videoSync|pixel_row\(5),
	datad => \vgamap|videoGen|pixelDraw~51_combout\,
	combout => \vgamap|videoGen|pixelDraw~52_combout\);

-- Location: LCCOMB_X55_Y62_N12
\vgamap|videoGen|LessThan12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan12~0_combout\ = (!\vgamap|videoSync|pixel_column\(2) & ((!\vgamap|videoSync|pixel_column\(0)) # (!\vgamap|videoSync|pixel_column\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(1),
	datac => \vgamap|videoSync|pixel_column\(0),
	datad => \vgamap|videoSync|pixel_column\(2),
	combout => \vgamap|videoGen|LessThan12~0_combout\);

-- Location: LCCOMB_X57_Y62_N12
\vgamap|videoGen|pixelDraw~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~85_combout\ = ((\vgamap|videoSync|pixel_column\(6)) # ((\vgamap|videoSync|pixel_column\(3) & \vgamap|videoSync|pixel_column\(4)))) # (!\vgamap|videoSync|pixel_column\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(5),
	datab => \vgamap|videoSync|pixel_column\(6),
	datac => \vgamap|videoSync|pixel_column\(3),
	datad => \vgamap|videoSync|pixel_column\(4),
	combout => \vgamap|videoGen|pixelDraw~85_combout\);

-- Location: LCCOMB_X58_Y62_N18
\vgamap|videoGen|pixelDraw~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~86_combout\ = ((\vgamap|videoGen|pixelDraw~85_combout\) # ((\vgamap|videoSync|pixel_column\(4) & !\vgamap|videoGen|LessThan12~0_combout\))) # (!\vgamap|videoGen|pixelDraw~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(4),
	datab => \vgamap|videoGen|pixelDraw~12_combout\,
	datac => \vgamap|videoGen|LessThan12~0_combout\,
	datad => \vgamap|videoGen|pixelDraw~85_combout\,
	combout => \vgamap|videoGen|pixelDraw~86_combout\);

-- Location: LCCOMB_X58_Y62_N28
\vgamap|videoGen|pixelDraw~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~87_combout\ = (\vgamap|videoSync|pixel_row\(8) & (!\vgamap|videoSync|pixel_row\(7) & !\vgamap|videoGen|pixelDraw~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|pixel_row\(8),
	datac => \vgamap|videoSync|pixel_row\(7),
	datad => \vgamap|videoGen|pixelDraw~86_combout\,
	combout => \vgamap|videoGen|pixelDraw~87_combout\);

-- Location: LCCOMB_X59_Y63_N24
\vgamap|videoGen|pixelDraw~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~89_combout\ = (\vgamap|videoSync|pixel_row\(6) & ((\vgamap|videoSync|pixel_row\(2)) # (\vgamap|videoSync|pixel_row\(1)))) # (!\vgamap|videoSync|pixel_row\(6) & (\vgamap|videoSync|pixel_row\(2) & \vgamap|videoSync|pixel_row\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(6),
	datac => \vgamap|videoSync|pixel_row\(2),
	datad => \vgamap|videoSync|pixel_row\(1),
	combout => \vgamap|videoGen|pixelDraw~89_combout\);

-- Location: LCCOMB_X59_Y63_N10
\vgamap|videoGen|pixelDraw~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~90_combout\ = (\vgamap|videoSync|pixel_row\(3) & ((\vgamap|videoSync|pixel_row\(5)) # ((\vgamap|videoGen|pixelDraw~89_combout\)))) # (!\vgamap|videoSync|pixel_row\(3) & (\vgamap|videoSync|pixel_row\(5) & 
-- (\vgamap|videoSync|pixel_row\(0) & \vgamap|videoGen|pixelDraw~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(3),
	datab => \vgamap|videoSync|pixel_row\(5),
	datac => \vgamap|videoSync|pixel_row\(0),
	datad => \vgamap|videoGen|pixelDraw~89_combout\,
	combout => \vgamap|videoGen|pixelDraw~90_combout\);

-- Location: LCCOMB_X59_Y63_N4
\vgamap|videoGen|pixelDraw~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~91_combout\ = (\vgamap|videoSync|pixel_row\(5) & (\vgamap|videoSync|pixel_row\(4) & (!\vgamap|videoSync|pixel_row\(6) & \vgamap|videoGen|pixelDraw~90_combout\))) # (!\vgamap|videoSync|pixel_row\(5) & 
-- (!\vgamap|videoSync|pixel_row\(4) & (\vgamap|videoSync|pixel_row\(6) & !\vgamap|videoGen|pixelDraw~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(5),
	datab => \vgamap|videoSync|pixel_row\(4),
	datac => \vgamap|videoSync|pixel_row\(6),
	datad => \vgamap|videoGen|pixelDraw~90_combout\,
	combout => \vgamap|videoGen|pixelDraw~91_combout\);

-- Location: LCCOMB_X58_Y62_N2
\vgamap|videoGen|pixelDraw~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~88_combout\ = (\vgamap|videoGen|pixelDraw~48_combout\ & (!\vgamap|videoGen|pixelDraw~86_combout\ & (\vgamap|videoSync|pixel_row\(5) & \vgamap|videoGen|LessThan35~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~48_combout\,
	datab => \vgamap|videoGen|pixelDraw~86_combout\,
	datac => \vgamap|videoSync|pixel_row\(5),
	datad => \vgamap|videoGen|LessThan35~1_combout\,
	combout => \vgamap|videoGen|pixelDraw~88_combout\);

-- Location: LCCOMB_X59_Y63_N6
\vgamap|videoGen|colorAddress~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~22_combout\ = (!\vgamap|videoSync|pixel_row\(4) & (\vgamap|videoSync|pixel_row\(5) & ((!\vgamap|videoSync|pixel_row\(2)) # (!\vgamap|videoSync|pixel_row\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(3),
	datab => \vgamap|videoSync|pixel_row\(4),
	datac => \vgamap|videoSync|pixel_row\(2),
	datad => \vgamap|videoSync|pixel_row\(5),
	combout => \vgamap|videoGen|colorAddress~22_combout\);

-- Location: LCCOMB_X58_Y62_N22
\vgamap|videoGen|colorAddress~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~23_combout\ = (!\vgamap|videoSync|pixel_row\(5) & ((\vgamap|videoGen|LessThan36~0_combout\) # ((\vgamap|videoSync|pixel_row\(4) & \vgamap|videoGen|LessThan37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|LessThan36~0_combout\,
	datab => \vgamap|videoSync|pixel_row\(5),
	datac => \vgamap|videoSync|pixel_row\(4),
	datad => \vgamap|videoGen|LessThan37~0_combout\,
	combout => \vgamap|videoGen|colorAddress~23_combout\);

-- Location: LCCOMB_X58_Y62_N24
\vgamap|videoGen|colorAddress~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~24_combout\ = (!\vgamap|videoSync|pixel_row\(6) & (\vgamap|videoGen|pixelDraw~87_combout\ & ((\vgamap|videoGen|colorAddress~22_combout\) # (\vgamap|videoGen|colorAddress~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(6),
	datab => \vgamap|videoGen|colorAddress~22_combout\,
	datac => \vgamap|videoGen|colorAddress~23_combout\,
	datad => \vgamap|videoGen|pixelDraw~87_combout\,
	combout => \vgamap|videoGen|colorAddress~24_combout\);

-- Location: LCCOMB_X60_Y62_N0
\vgamap|videoGen|colorAddress~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~25_combout\ = (\vgamap|videoGen|pixelDraw~88_combout\) # ((\vgamap|videoGen|colorAddress~24_combout\) # ((\vgamap|videoGen|pixelDraw~87_combout\ & \vgamap|videoGen|pixelDraw~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~87_combout\,
	datab => \vgamap|videoGen|pixelDraw~91_combout\,
	datac => \vgamap|videoGen|pixelDraw~88_combout\,
	datad => \vgamap|videoGen|colorAddress~24_combout\,
	combout => \vgamap|videoGen|colorAddress~25_combout\);

-- Location: LCCOMB_X60_Y62_N2
\vgamap|videoGen|colorAddress~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~26_combout\ = (!\vgamap|videoGen|pixelDraw~52_combout\ & \vgamap|videoGen|colorAddress~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoGen|pixelDraw~52_combout\,
	datad => \vgamap|videoGen|colorAddress~25_combout\,
	combout => \vgamap|videoGen|colorAddress~26_combout\);

-- Location: LCCOMB_X61_Y62_N26
\vgamap|videoGen|colorAddress~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~47_combout\ = (\vgamap|videoGen|colorAddress~3_combout\ & (\vgamap|videoGen|colorAddress~2_combout\ & ((\vgamap|videoGen|colorAddress~26_combout\)))) # (!\vgamap|videoGen|colorAddress~3_combout\ & (((\volmap|z\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|colorAddress~3_combout\,
	datab => \vgamap|videoGen|colorAddress~2_combout\,
	datac => \volmap|z\(2),
	datad => \vgamap|videoGen|colorAddress~26_combout\,
	combout => \vgamap|videoGen|colorAddress~47_combout\);

-- Location: LCCOMB_X56_Y62_N14
\vgamap|videoGen|LessThan22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan22~1_combout\ = (!\vgamap|videoSync|pixel_column\(6) & !\vgamap|videoSync|pixel_column\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(6),
	datad => \vgamap|videoSync|pixel_column\(5),
	combout => \vgamap|videoGen|LessThan22~1_combout\);

-- Location: LCCOMB_X58_Y63_N14
\vgamap|videoGen|LessThan34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan34~0_combout\ = (!\vgamap|videoSync|pixel_row\(3) & !\vgamap|videoSync|pixel_row\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|pixel_row\(3),
	datad => \vgamap|videoSync|pixel_row\(4),
	combout => \vgamap|videoGen|LessThan34~0_combout\);

-- Location: LCCOMB_X59_Y63_N14
\vgamap|videoGen|LessThan48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan48~0_combout\ = ((\vgamap|videoSync|pixel_row\(2) & ((\vgamap|videoSync|pixel_row\(1)) # (\vgamap|videoSync|pixel_row\(0))))) # (!\vgamap|videoGen|LessThan34~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(2),
	datab => \vgamap|videoSync|pixel_row\(1),
	datac => \vgamap|videoSync|pixel_row\(0),
	datad => \vgamap|videoGen|LessThan34~0_combout\,
	combout => \vgamap|videoGen|LessThan48~0_combout\);

-- Location: LCCOMB_X58_Y62_N8
\vgamap|videoGen|LessThan22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan22~2_combout\ = (!\vgamap|videoSync|pixel_column\(6) & (((!\vgamap|videoSync|pixel_column\(4) & !\vgamap|videoSync|pixel_column\(3))) # (!\vgamap|videoSync|pixel_column\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(4),
	datab => \vgamap|videoSync|pixel_column\(5),
	datac => \vgamap|videoSync|pixel_column\(3),
	datad => \vgamap|videoSync|pixel_column\(6),
	combout => \vgamap|videoGen|LessThan22~2_combout\);

-- Location: LCCOMB_X58_Y62_N14
\vgamap|videoGen|LessThan22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan22~3_combout\ = (\vgamap|videoGen|LessThan22~2_combout\) # ((!\vgamap|videoSync|pixel_column\(4) & (!\vgamap|videoSync|pixel_column\(6) & !\vgamap|videoGen|LessThan44~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(4),
	datab => \vgamap|videoSync|pixel_column\(6),
	datac => \vgamap|videoGen|LessThan22~2_combout\,
	datad => \vgamap|videoGen|LessThan44~0_combout\,
	combout => \vgamap|videoGen|LessThan22~3_combout\);

-- Location: LCCOMB_X63_Y62_N18
\vgamap|videoGen|pixelDraw~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~92_combout\ = (\vgamap|videoGen|LessThan22~3_combout\ & ((\vgamap|videoSync|pixel_row\(6)) # ((\vgamap|videoSync|pixel_row\(5) & \vgamap|videoGen|LessThan48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(5),
	datab => \vgamap|videoSync|pixel_row\(6),
	datac => \vgamap|videoGen|LessThan48~0_combout\,
	datad => \vgamap|videoGen|LessThan22~3_combout\,
	combout => \vgamap|videoGen|pixelDraw~92_combout\);

-- Location: LCCOMB_X63_Y62_N16
\vgamap|videoGen|pixelDraw~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~93_combout\ = (!\vgamap|videoGen|LessThan22~1_combout\ & (\vgamap|videoGen|pixelDraw~12_combout\ & (\vgamap|videoGen|pixelDraw~13_combout\ & \vgamap|videoGen|pixelDraw~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|LessThan22~1_combout\,
	datab => \vgamap|videoGen|pixelDraw~12_combout\,
	datac => \vgamap|videoGen|pixelDraw~13_combout\,
	datad => \vgamap|videoGen|pixelDraw~92_combout\,
	combout => \vgamap|videoGen|pixelDraw~93_combout\);

-- Location: LCCOMB_X58_Y62_N6
\vgamap|videoGen|colorAddress~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~4_combout\ = (\vgamap|videoGen|colorAddress~2_combout\ & \vgamap|videoGen|colorAddress~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoGen|colorAddress~2_combout\,
	datad => \vgamap|videoGen|colorAddress~3_combout\,
	combout => \vgamap|videoGen|colorAddress~4_combout\);

-- Location: IOIBUF_X115_Y14_N8
\keys[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(16),
	o => \keys[16]~input_o\);

-- Location: LCCOMB_X55_Y62_N30
\vgamap|videoGen|LessThan16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan16~0_combout\ = (!\vgamap|videoSync|pixel_column\(3) & (((!\vgamap|videoSync|pixel_column\(2)) # (!\vgamap|videoSync|pixel_column\(0))) # (!\vgamap|videoSync|pixel_column\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(1),
	datab => \vgamap|videoSync|pixel_column\(0),
	datac => \vgamap|videoSync|pixel_column\(3),
	datad => \vgamap|videoSync|pixel_column\(2),
	combout => \vgamap|videoGen|LessThan16~0_combout\);

-- Location: LCCOMB_X56_Y62_N16
\vgamap|videoGen|pixelDraw~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~58_combout\ = ((!\vgamap|videoSync|pixel_column\(5) & ((\vgamap|videoGen|LessThan16~0_combout\) # (!\vgamap|videoSync|pixel_column\(4))))) # (!\vgamap|videoSync|pixel_column\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(5),
	datab => \vgamap|videoSync|pixel_column\(6),
	datac => \vgamap|videoSync|pixel_column\(4),
	datad => \vgamap|videoGen|LessThan16~0_combout\,
	combout => \vgamap|videoGen|pixelDraw~58_combout\);

-- Location: LCCOMB_X58_Y63_N26
\vgamap|videoGen|LessThan33~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan33~3_combout\ = (!\vgamap|videoSync|pixel_row\(8) & !\vgamap|videoSync|pixel_row\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(8),
	datad => \vgamap|videoSync|pixel_row\(7),
	combout => \vgamap|videoGen|LessThan33~3_combout\);

-- Location: LCCOMB_X58_Y63_N24
\vgamap|videoGen|LessThan33~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan33~4_combout\ = (\vgamap|videoSync|pixel_row\(2) & (\vgamap|videoSync|pixel_row\(4) & ((\vgamap|videoSync|pixel_row\(1)) # (\vgamap|videoSync|pixel_row\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(2),
	datab => \vgamap|videoSync|pixel_row\(1),
	datac => \vgamap|videoSync|pixel_row\(0),
	datad => \vgamap|videoSync|pixel_row\(4),
	combout => \vgamap|videoGen|LessThan33~4_combout\);

-- Location: LCCOMB_X58_Y63_N8
\vgamap|videoGen|pixelDraw~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~56_combout\ = (!\vgamap|videoSync|pixel_row\(8) & (((!\vgamap|videoSync|pixel_row\(5) & !\vgamap|videoSync|pixel_row\(6))) # (!\vgamap|videoSync|pixel_row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(5),
	datab => \vgamap|videoSync|pixel_row\(6),
	datac => \vgamap|videoSync|pixel_row\(8),
	datad => \vgamap|videoSync|pixel_row\(7),
	combout => \vgamap|videoGen|pixelDraw~56_combout\);

-- Location: LCCOMB_X58_Y63_N10
\vgamap|videoGen|pixelDraw~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~57_combout\ = (\vgamap|videoGen|pixelDraw~56_combout\ & (((\vgamap|videoGen|LessThan33~4_combout\) # (!\vgamap|videoGen|LessThan33~2_combout\)) # (!\vgamap|videoGen|LessThan33~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|LessThan33~3_combout\,
	datab => \vgamap|videoGen|LessThan33~4_combout\,
	datac => \vgamap|videoGen|pixelDraw~56_combout\,
	datad => \vgamap|videoGen|LessThan33~2_combout\,
	combout => \vgamap|videoGen|pixelDraw~57_combout\);

-- Location: LCCOMB_X61_Y62_N22
\vgamap|videoGen|pixelDraw~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~59_combout\ = (\vgamap|videoGen|pixelDraw~12_combout\ & (\vgamap|videoGen|pixelDraw~58_combout\ & (\vgamap|videoGen|pixelDraw~57_combout\ & !\vgamap|videoGen|LessThan22~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~12_combout\,
	datab => \vgamap|videoGen|pixelDraw~58_combout\,
	datac => \vgamap|videoGen|pixelDraw~57_combout\,
	datad => \vgamap|videoGen|LessThan22~1_combout\,
	combout => \vgamap|videoGen|pixelDraw~59_combout\);

-- Location: IOIBUF_X115_Y9_N22
\keys[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(12),
	o => \keys[12]~input_o\);

-- Location: LCCOMB_X58_Y63_N12
\vgamap|videoGen|pixelDraw~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~60_combout\ = (!\vgamap|videoSync|pixel_column\(9) & \vgamap|videoGen|pixelDraw~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|pixel_column\(9),
	datad => \vgamap|videoGen|pixelDraw~57_combout\,
	combout => \vgamap|videoGen|pixelDraw~60_combout\);

-- Location: LCCOMB_X54_Y62_N2
\vgamap|videoGen|pixelDraw~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~61_combout\ = ((!\vgamap|videoSync|pixel_column\(2) & ((!\vgamap|videoSync|pixel_column\(1)) # (!\vgamap|videoSync|pixel_column\(0))))) # (!\vgamap|videoSync|pixel_column\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(0),
	datab => \vgamap|videoSync|pixel_column\(3),
	datac => \vgamap|videoSync|pixel_column\(1),
	datad => \vgamap|videoSync|pixel_column\(2),
	combout => \vgamap|videoGen|pixelDraw~61_combout\);

-- Location: LCCOMB_X54_Y62_N4
\vgamap|videoGen|pixelDraw~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~62_combout\ = (\vgamap|videoSync|pixel_column\(5)) # ((\vgamap|videoSync|pixel_column\(4) & ((\vgamap|videoSync|pixel_column\(3)) # (\vgamap|videoSync|pixel_column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(3),
	datab => \vgamap|videoSync|pixel_column\(4),
	datac => \vgamap|videoSync|pixel_column\(5),
	datad => \vgamap|videoSync|pixel_column\(2),
	combout => \vgamap|videoGen|pixelDraw~62_combout\);

-- Location: LCCOMB_X54_Y62_N22
\vgamap|videoGen|pixelDraw~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~63_combout\ = (\vgamap|videoSync|pixel_column\(6) & (\vgamap|videoGen|pixelDraw~61_combout\ & ((\vgamap|videoGen|LessThan5~1_combout\)))) # (!\vgamap|videoSync|pixel_column\(6) & (((\vgamap|videoGen|pixelDraw~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(6),
	datab => \vgamap|videoGen|pixelDraw~61_combout\,
	datac => \vgamap|videoGen|pixelDraw~62_combout\,
	datad => \vgamap|videoGen|LessThan5~1_combout\,
	combout => \vgamap|videoGen|pixelDraw~63_combout\);

-- Location: LCCOMB_X61_Y62_N24
\vgamap|videoGen|pixelDraw~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~64_combout\ = (\vgamap|videoSync|pixel_column\(7) & (!\vgamap|videoSync|pixel_column\(8) & (\vgamap|videoGen|pixelDraw~60_combout\ & \vgamap|videoGen|pixelDraw~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(7),
	datab => \vgamap|videoSync|pixel_column\(8),
	datac => \vgamap|videoGen|pixelDraw~60_combout\,
	datad => \vgamap|videoGen|pixelDraw~63_combout\,
	combout => \vgamap|videoGen|pixelDraw~64_combout\);

-- Location: IOIBUF_X115_Y6_N15
\keys[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(14),
	o => \keys[14]~input_o\);

-- Location: LCCOMB_X56_Y62_N12
\vgamap|videoGen|pixelDraw~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~65_combout\ = (\vgamap|videoSync|pixel_column\(6) & (((\vgamap|videoSync|pixel_column\(5) & !\vgamap|videoSync|pixel_column\(7))))) # (!\vgamap|videoSync|pixel_column\(6) & (!\vgamap|videoSync|pixel_column\(4) & 
-- (!\vgamap|videoSync|pixel_column\(5) & \vgamap|videoSync|pixel_column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(6),
	datab => \vgamap|videoSync|pixel_column\(4),
	datac => \vgamap|videoSync|pixel_column\(5),
	datad => \vgamap|videoSync|pixel_column\(7),
	combout => \vgamap|videoGen|pixelDraw~65_combout\);

-- Location: LCCOMB_X56_Y62_N24
\vgamap|videoGen|pixelDraw~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~32_combout\ = ((!\vgamap|videoSync|pixel_column\(2) & !\vgamap|videoSync|pixel_column\(1))) # (!\vgamap|videoSync|pixel_column\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|pixel_column\(2),
	datac => \vgamap|videoSync|pixel_column\(1),
	datad => \vgamap|videoSync|pixel_column\(3),
	combout => \vgamap|videoGen|pixelDraw~32_combout\);

-- Location: LCCOMB_X56_Y62_N30
\vgamap|videoGen|pixelDraw~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~66_combout\ = (!\vgamap|videoGen|LessThan44~0_combout\ & (!\vgamap|videoSync|pixel_column\(3) & (\vgamap|videoGen|LessThan22~1_combout\ & \vgamap|videoSync|pixel_column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|LessThan44~0_combout\,
	datab => \vgamap|videoSync|pixel_column\(3),
	datac => \vgamap|videoGen|LessThan22~1_combout\,
	datad => \vgamap|videoSync|pixel_column\(7),
	combout => \vgamap|videoGen|pixelDraw~66_combout\);

-- Location: LCCOMB_X56_Y62_N20
\vgamap|videoGen|pixelDraw~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~34_combout\ = (\vgamap|videoSync|pixel_column\(6) & !\vgamap|videoSync|pixel_column\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|pixel_column\(6),
	datad => \vgamap|videoSync|pixel_column\(7),
	combout => \vgamap|videoGen|pixelDraw~34_combout\);

-- Location: LCCOMB_X56_Y62_N0
\vgamap|videoGen|pixelDraw~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~67_combout\ = (\vgamap|videoGen|pixelDraw~66_combout\) # ((\vgamap|videoSync|pixel_column\(4) & (!\vgamap|videoGen|pixelDraw~32_combout\ & \vgamap|videoGen|pixelDraw~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(4),
	datab => \vgamap|videoGen|pixelDraw~32_combout\,
	datac => \vgamap|videoGen|pixelDraw~66_combout\,
	datad => \vgamap|videoGen|pixelDraw~34_combout\,
	combout => \vgamap|videoGen|pixelDraw~67_combout\);

-- Location: LCCOMB_X56_Y62_N6
\vgamap|videoGen|pixelDraw~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~68_combout\ = (!\vgamap|videoSync|pixel_column\(8) & (\vgamap|videoGen|pixelDraw~60_combout\ & ((\vgamap|videoGen|pixelDraw~65_combout\) # (\vgamap|videoGen|pixelDraw~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(8),
	datab => \vgamap|videoGen|pixelDraw~65_combout\,
	datac => \vgamap|videoGen|pixelDraw~60_combout\,
	datad => \vgamap|videoGen|pixelDraw~67_combout\,
	combout => \vgamap|videoGen|pixelDraw~68_combout\);

-- Location: LCCOMB_X61_Y62_N2
\vgamap|videoGen|colorAddress~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~8_combout\ = (\vgamap|videoGen|pixelDraw~68_combout\ & (((!\keys[14]~input_o\)))) # (!\vgamap|videoGen|pixelDraw~68_combout\ & (!\keys[12]~input_o\ & (\vgamap|videoGen|pixelDraw~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keys[12]~input_o\,
	datab => \vgamap|videoGen|pixelDraw~64_combout\,
	datac => \keys[14]~input_o\,
	datad => \vgamap|videoGen|pixelDraw~68_combout\,
	combout => \vgamap|videoGen|colorAddress~8_combout\);

-- Location: LCCOMB_X61_Y62_N4
\vgamap|videoGen|colorAddress~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~9_combout\ = (\vgamap|videoGen|pixelDraw~59_combout\ & (!\keys[16]~input_o\)) # (!\vgamap|videoGen|pixelDraw~59_combout\ & ((\vgamap|videoGen|colorAddress~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keys[16]~input_o\,
	datac => \vgamap|videoGen|pixelDraw~59_combout\,
	datad => \vgamap|videoGen|colorAddress~8_combout\,
	combout => \vgamap|videoGen|colorAddress~9_combout\);

-- Location: LCCOMB_X58_Y63_N0
\vgamap|videoGen|LessThan34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan34~1_combout\ = (((!\vgamap|videoSync|pixel_row\(2) & \vgamap|videoGen|LessThan34~0_combout\)) # (!\vgamap|videoSync|pixel_row\(6))) # (!\vgamap|videoSync|pixel_row\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(2),
	datab => \vgamap|videoSync|pixel_row\(5),
	datac => \vgamap|videoSync|pixel_row\(6),
	datad => \vgamap|videoGen|LessThan34~0_combout\,
	combout => \vgamap|videoGen|LessThan34~1_combout\);

-- Location: LCCOMB_X58_Y63_N6
\vgamap|videoGen|LessThan33~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan33~5_combout\ = (\vgamap|videoSync|pixel_row\(8)) # (((\vgamap|videoSync|pixel_row\(7)) # (\vgamap|videoGen|LessThan33~4_combout\)) # (!\vgamap|videoGen|LessThan33~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(8),
	datab => \vgamap|videoGen|LessThan33~2_combout\,
	datac => \vgamap|videoSync|pixel_row\(7),
	datad => \vgamap|videoGen|LessThan33~4_combout\,
	combout => \vgamap|videoGen|LessThan33~5_combout\);

-- Location: LCCOMB_X58_Y63_N18
\vgamap|videoGen|pixelDraw~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~31_combout\ = (!\vgamap|videoSync|pixel_column\(9) & (\vgamap|videoGen|LessThan33~3_combout\ & (\vgamap|videoGen|LessThan34~1_combout\ & \vgamap|videoGen|LessThan33~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(9),
	datab => \vgamap|videoGen|LessThan33~3_combout\,
	datac => \vgamap|videoGen|LessThan34~1_combout\,
	datad => \vgamap|videoGen|LessThan33~5_combout\,
	combout => \vgamap|videoGen|pixelDraw~31_combout\);

-- Location: LCCOMB_X58_Y62_N4
\vgamap|videoGen|pixelDraw~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~45_combout\ = (\vgamap|videoSync|pixel_column\(7) & \vgamap|videoGen|LessThan22~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(7),
	datac => \vgamap|videoGen|LessThan22~3_combout\,
	combout => \vgamap|videoGen|pixelDraw~45_combout\);

-- Location: LCCOMB_X54_Y62_N18
\vgamap|videoGen|pixelDraw~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~101_combout\ = (\vgamap|videoSync|pixel_column\(6) & (\vgamap|videoGen|LessThan44~0_combout\ & (!\vgamap|videoSync|pixel_column\(7) & \vgamap|videoGen|pixelDraw~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(6),
	datab => \vgamap|videoGen|LessThan44~0_combout\,
	datac => \vgamap|videoSync|pixel_column\(7),
	datad => \vgamap|videoGen|pixelDraw~14_combout\,
	combout => \vgamap|videoGen|pixelDraw~101_combout\);

-- Location: LCCOMB_X59_Y62_N22
\vgamap|videoGen|pixelDraw~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~46_combout\ = (\vgamap|videoGen|pixelDraw~31_combout\ & (!\vgamap|videoSync|pixel_column\(8) & ((\vgamap|videoGen|pixelDraw~45_combout\) # (\vgamap|videoGen|pixelDraw~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~31_combout\,
	datab => \vgamap|videoSync|pixel_column\(8),
	datac => \vgamap|videoGen|pixelDraw~45_combout\,
	datad => \vgamap|videoGen|pixelDraw~101_combout\,
	combout => \vgamap|videoGen|pixelDraw~46_combout\);

-- Location: LCCOMB_X58_Y63_N30
\vgamap|videoGen|pixelDraw~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~99_combout\ = (\vgamap|videoGen|LessThan34~1_combout\ & (!\vgamap|videoSync|pixel_row\(7) & (!\vgamap|videoSync|pixel_row\(8) & \vgamap|videoGen|LessThan33~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|LessThan34~1_combout\,
	datab => \vgamap|videoSync|pixel_row\(7),
	datac => \vgamap|videoSync|pixel_row\(8),
	datad => \vgamap|videoGen|LessThan33~5_combout\,
	combout => \vgamap|videoGen|pixelDraw~99_combout\);

-- Location: LCCOMB_X54_Y62_N6
\vgamap|videoGen|LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan9~0_combout\ = (\vgamap|videoSync|pixel_column\(6) & ((\vgamap|videoSync|pixel_column\(3)) # ((\vgamap|videoSync|pixel_column\(4)) # (\vgamap|videoSync|pixel_column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(3),
	datab => \vgamap|videoSync|pixel_column\(4),
	datac => \vgamap|videoSync|pixel_column\(6),
	datad => \vgamap|videoSync|pixel_column\(2),
	combout => \vgamap|videoGen|LessThan9~0_combout\);

-- Location: LCCOMB_X62_Y62_N22
\vgamap|videoGen|pixelDraw~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~53_combout\ = (!\vgamap|videoSync|pixel_column\(4) & (((!\vgamap|videoSync|pixel_column\(3)) # (!\vgamap|videoSync|pixel_column\(2))) # (!\vgamap|videoSync|pixel_column\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(1),
	datab => \vgamap|videoSync|pixel_column\(2),
	datac => \vgamap|videoSync|pixel_column\(4),
	datad => \vgamap|videoSync|pixel_column\(3),
	combout => \vgamap|videoGen|pixelDraw~53_combout\);

-- Location: LCCOMB_X54_Y62_N16
\vgamap|videoGen|LessThan9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan9~1_combout\ = (\vgamap|videoSync|pixel_column\(7)) # ((\vgamap|videoSync|pixel_column\(6) & ((\vgamap|videoSync|pixel_column\(1)) # (\vgamap|videoSync|pixel_column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(6),
	datab => \vgamap|videoSync|pixel_column\(1),
	datac => \vgamap|videoSync|pixel_column\(5),
	datad => \vgamap|videoSync|pixel_column\(7),
	combout => \vgamap|videoGen|LessThan9~1_combout\);

-- Location: LCCOMB_X59_Y62_N0
\vgamap|videoGen|pixelDraw~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~54_combout\ = (\vgamap|videoGen|LessThan9~0_combout\ & ((\vgamap|videoGen|pixelDraw~53_combout\) # ((!\vgamap|videoSync|pixel_column\(5))))) # (!\vgamap|videoGen|LessThan9~0_combout\ & (\vgamap|videoGen|LessThan9~1_combout\ & 
-- ((\vgamap|videoGen|pixelDraw~53_combout\) # (!\vgamap|videoSync|pixel_column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|LessThan9~0_combout\,
	datab => \vgamap|videoGen|pixelDraw~53_combout\,
	datac => \vgamap|videoSync|pixel_column\(5),
	datad => \vgamap|videoGen|LessThan9~1_combout\,
	combout => \vgamap|videoGen|pixelDraw~54_combout\);

-- Location: LCCOMB_X59_Y62_N2
\vgamap|videoGen|pixelDraw~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~55_combout\ = (\vgamap|videoGen|pixelDraw~99_combout\ & (\vgamap|videoGen|pixelDraw~12_combout\ & \vgamap|videoGen|pixelDraw~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoGen|pixelDraw~99_combout\,
	datac => \vgamap|videoGen|pixelDraw~12_combout\,
	datad => \vgamap|videoGen|pixelDraw~54_combout\,
	combout => \vgamap|videoGen|pixelDraw~55_combout\);

-- Location: LCCOMB_X55_Y62_N10
\vgamap|videoGen|pixelDraw~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~35_combout\ = (\vgamap|videoSync|pixel_column\(3) & (\vgamap|videoSync|pixel_column\(2) & (\vgamap|videoSync|pixel_column\(1) & \vgamap|videoSync|pixel_column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(3),
	datab => \vgamap|videoSync|pixel_column\(2),
	datac => \vgamap|videoSync|pixel_column\(1),
	datad => \vgamap|videoSync|pixel_column\(4),
	combout => \vgamap|videoGen|pixelDraw~35_combout\);

-- Location: LCCOMB_X59_Y62_N6
\vgamap|videoGen|pixelDraw~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~100_combout\ = (!\vgamap|videoSync|pixel_column\(7) & (\vgamap|videoSync|pixel_column\(6) & ((\vgamap|videoGen|pixelDraw~35_combout\) # (\vgamap|videoSync|pixel_column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~35_combout\,
	datab => \vgamap|videoSync|pixel_column\(5),
	datac => \vgamap|videoSync|pixel_column\(7),
	datad => \vgamap|videoSync|pixel_column\(6),
	combout => \vgamap|videoGen|pixelDraw~100_combout\);

-- Location: LCCOMB_X56_Y62_N10
\vgamap|videoGen|pixelDraw~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~33_combout\ = (\vgamap|videoSync|pixel_column\(7) & (\vgamap|videoGen|pixelDraw~32_combout\ & (!\vgamap|videoSync|pixel_column\(6) & \vgamap|videoGen|LessThan5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(7),
	datab => \vgamap|videoGen|pixelDraw~32_combout\,
	datac => \vgamap|videoSync|pixel_column\(6),
	datad => \vgamap|videoGen|LessThan5~1_combout\,
	combout => \vgamap|videoGen|pixelDraw~33_combout\);

-- Location: LCCOMB_X59_Y62_N30
\vgamap|videoGen|pixelDraw~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~36_combout\ = (\vgamap|videoSync|pixel_column\(8) & (\vgamap|videoGen|pixelDraw~31_combout\ & ((\vgamap|videoGen|pixelDraw~100_combout\) # (\vgamap|videoGen|pixelDraw~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~100_combout\,
	datab => \vgamap|videoSync|pixel_column\(8),
	datac => \vgamap|videoGen|pixelDraw~31_combout\,
	datad => \vgamap|videoGen|pixelDraw~33_combout\,
	combout => \vgamap|videoGen|pixelDraw~36_combout\);

-- Location: LCCOMB_X57_Y62_N16
\vgamap|videoGen|pixelDraw~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~28_combout\ = (\vgamap|videoSync|pixel_column\(9) & (!\vgamap|videoSync|pixel_column\(8) & (!\vgamap|videoSync|pixel_column\(7) & !\vgamap|videoSync|pixel_column\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(9),
	datab => \vgamap|videoSync|pixel_column\(8),
	datac => \vgamap|videoSync|pixel_column\(7),
	datad => \vgamap|videoSync|pixel_column\(6),
	combout => \vgamap|videoGen|pixelDraw~28_combout\);

-- Location: LCCOMB_X56_Y62_N28
\vgamap|videoGen|pixelDraw~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~26_combout\ = (\vgamap|videoSync|pixel_column\(8) & ((\vgamap|videoSync|pixel_column\(5)) # ((\vgamap|videoSync|pixel_column\(4) & \vgamap|videoSync|pixel_column\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(5),
	datab => \vgamap|videoSync|pixel_column\(4),
	datac => \vgamap|videoSync|pixel_column\(8),
	datad => \vgamap|videoSync|pixel_column\(3),
	combout => \vgamap|videoGen|pixelDraw~26_combout\);

-- Location: LCCOMB_X56_Y62_N26
\vgamap|videoGen|pixelDraw~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~27_combout\ = (!\vgamap|videoSync|pixel_column\(9) & (\vgamap|videoSync|pixel_column\(6) & (\vgamap|videoSync|pixel_column\(7) & \vgamap|videoGen|pixelDraw~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(9),
	datab => \vgamap|videoSync|pixel_column\(6),
	datac => \vgamap|videoSync|pixel_column\(7),
	datad => \vgamap|videoGen|pixelDraw~26_combout\,
	combout => \vgamap|videoGen|pixelDraw~27_combout\);

-- Location: LCCOMB_X54_Y62_N14
\vgamap|videoGen|pixelDraw~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~29_combout\ = (!\vgamap|videoSync|pixel_column\(3) & (!\vgamap|videoSync|pixel_column\(4) & (!\vgamap|videoSync|pixel_column\(5) & !\vgamap|videoSync|pixel_column\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(3),
	datab => \vgamap|videoSync|pixel_column\(4),
	datac => \vgamap|videoSync|pixel_column\(5),
	datad => \vgamap|videoSync|pixel_column\(2),
	combout => \vgamap|videoGen|pixelDraw~29_combout\);

-- Location: LCCOMB_X59_Y62_N24
\vgamap|videoGen|pixelDraw~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~30_combout\ = (\vgamap|videoGen|pixelDraw~99_combout\ & ((\vgamap|videoGen|pixelDraw~27_combout\) # ((\vgamap|videoGen|pixelDraw~28_combout\ & \vgamap|videoGen|pixelDraw~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~28_combout\,
	datab => \vgamap|videoGen|pixelDraw~99_combout\,
	datac => \vgamap|videoGen|pixelDraw~27_combout\,
	datad => \vgamap|videoGen|pixelDraw~29_combout\,
	combout => \vgamap|videoGen|pixelDraw~30_combout\);

-- Location: LCCOMB_X54_Y62_N12
\vgamap|videoGen|pixelDraw~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~37_combout\ = ((\vgamap|videoGen|LessThan12~0_combout\ & !\vgamap|videoSync|pixel_column\(3))) # (!\vgamap|videoSync|pixel_column\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|pixel_column\(4),
	datac => \vgamap|videoGen|LessThan12~0_combout\,
	datad => \vgamap|videoSync|pixel_column\(3),
	combout => \vgamap|videoGen|pixelDraw~37_combout\);

-- Location: LCCOMB_X55_Y62_N6
\vgamap|videoGen|LessThan22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan22~0_combout\ = (!\vgamap|videoSync|pixel_column\(3) & !\vgamap|videoSync|pixel_column\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|pixel_column\(3),
	datad => \vgamap|videoSync|pixel_column\(4),
	combout => \vgamap|videoGen|LessThan22~0_combout\);

-- Location: LCCOMB_X55_Y62_N8
\vgamap|videoGen|pixelDraw~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~38_combout\ = ((\vgamap|videoSync|pixel_column\(1) & (\vgamap|videoSync|pixel_column\(2) & \vgamap|videoSync|pixel_column\(0)))) # (!\vgamap|videoGen|LessThan22~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(1),
	datab => \vgamap|videoSync|pixel_column\(2),
	datac => \vgamap|videoSync|pixel_column\(0),
	datad => \vgamap|videoGen|LessThan22~0_combout\,
	combout => \vgamap|videoGen|pixelDraw~38_combout\);

-- Location: LCCOMB_X59_Y62_N4
\vgamap|videoGen|pixelDraw~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~39_combout\ = (\vgamap|videoSync|pixel_column\(5) & (((\vgamap|videoGen|pixelDraw~38_combout\ & !\vgamap|videoSync|pixel_column\(6))))) # (!\vgamap|videoSync|pixel_column\(5) & (\vgamap|videoGen|pixelDraw~37_combout\ & 
-- ((\vgamap|videoSync|pixel_column\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~37_combout\,
	datab => \vgamap|videoSync|pixel_column\(5),
	datac => \vgamap|videoGen|pixelDraw~38_combout\,
	datad => \vgamap|videoSync|pixel_column\(6),
	combout => \vgamap|videoGen|pixelDraw~39_combout\);

-- Location: LCCOMB_X59_Y62_N26
\vgamap|videoGen|pixelDraw~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~40_combout\ = (!\vgamap|videoSync|pixel_column\(7) & (\vgamap|videoGen|pixelDraw~39_combout\ & (\vgamap|videoGen|pixelDraw~31_combout\ & \vgamap|videoSync|pixel_column\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(7),
	datab => \vgamap|videoGen|pixelDraw~39_combout\,
	datac => \vgamap|videoGen|pixelDraw~31_combout\,
	datad => \vgamap|videoSync|pixel_column\(8),
	combout => \vgamap|videoGen|pixelDraw~40_combout\);

-- Location: LCCOMB_X54_Y62_N10
\vgamap|videoGen|pixelDraw~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~43_combout\ = (((!\vgamap|videoSync|pixel_column\(2)) # (!\vgamap|videoSync|pixel_column\(1))) # (!\vgamap|videoSync|pixel_column\(3))) # (!\vgamap|videoSync|pixel_column\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(0),
	datab => \vgamap|videoSync|pixel_column\(3),
	datac => \vgamap|videoSync|pixel_column\(1),
	datad => \vgamap|videoSync|pixel_column\(2),
	combout => \vgamap|videoGen|pixelDraw~43_combout\);

-- Location: LCCOMB_X54_Y62_N20
\vgamap|videoGen|pixelDraw~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~44_combout\ = (\vgamap|videoGen|pixelDraw~43_combout\ & ((\vgamap|videoGen|LessThan5~1_combout\) # ((\vgamap|videoGen|pixelDraw~14_combout\ & !\vgamap|videoGen|LessThan12~0_combout\)))) # (!\vgamap|videoGen|pixelDraw~43_combout\ 
-- & (\vgamap|videoGen|pixelDraw~14_combout\ & (!\vgamap|videoGen|LessThan12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~43_combout\,
	datab => \vgamap|videoGen|pixelDraw~14_combout\,
	datac => \vgamap|videoGen|LessThan12~0_combout\,
	datad => \vgamap|videoGen|LessThan5~1_combout\,
	combout => \vgamap|videoGen|pixelDraw~44_combout\);

-- Location: LCCOMB_X56_Y62_N18
\vgamap|videoGen|pixelDraw~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~41_combout\ = (\vgamap|videoSync|pixel_column\(5) & (\vgamap|videoSync|pixel_column\(6) & (\vgamap|videoSync|pixel_column\(7) & \vgamap|videoSync|pixel_column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(5),
	datab => \vgamap|videoSync|pixel_column\(6),
	datac => \vgamap|videoSync|pixel_column\(7),
	datad => \vgamap|videoSync|pixel_column\(4),
	combout => \vgamap|videoGen|pixelDraw~41_combout\);

-- Location: LCCOMB_X56_Y62_N4
\vgamap|videoGen|LessThan24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan24~0_combout\ = (\vgamap|videoGen|LessThan22~1_combout\ & (!\vgamap|videoSync|pixel_column\(7) & ((!\vgamap|videoGen|LessThan5~0_combout\) # (!\vgamap|videoSync|pixel_column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(4),
	datab => \vgamap|videoGen|LessThan22~1_combout\,
	datac => \vgamap|videoSync|pixel_column\(7),
	datad => \vgamap|videoGen|LessThan5~0_combout\,
	combout => \vgamap|videoGen|LessThan24~0_combout\);

-- Location: LCCOMB_X59_Y62_N12
\vgamap|videoGen|pixelDraw~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~42_combout\ = (\vgamap|videoGen|pixelDraw~31_combout\ & ((\vgamap|videoSync|pixel_column\(8) & ((\vgamap|videoGen|LessThan24~0_combout\))) # (!\vgamap|videoSync|pixel_column\(8) & (\vgamap|videoGen|pixelDraw~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~41_combout\,
	datab => \vgamap|videoGen|LessThan24~0_combout\,
	datac => \vgamap|videoGen|pixelDraw~31_combout\,
	datad => \vgamap|videoSync|pixel_column\(8),
	combout => \vgamap|videoGen|pixelDraw~42_combout\);

-- Location: LCCOMB_X59_Y62_N10
\vgamap|videoGen|colorAddress~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~5_combout\ = (!\vgamap|videoGen|pixelDraw~42_combout\ & (((\vgamap|videoGen|pixelDraw~44_combout\) # (!\vgamap|videoGen|pixelDraw~99_combout\)) # (!\vgamap|videoGen|pixelDraw~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~28_combout\,
	datab => \vgamap|videoGen|pixelDraw~99_combout\,
	datac => \vgamap|videoGen|pixelDraw~44_combout\,
	datad => \vgamap|videoGen|pixelDraw~42_combout\,
	combout => \vgamap|videoGen|colorAddress~5_combout\);

-- Location: LCCOMB_X59_Y62_N8
\vgamap|videoGen|colorAddress~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~6_combout\ = (!\vgamap|videoGen|pixelDraw~36_combout\ & (!\vgamap|videoGen|pixelDraw~30_combout\ & (!\vgamap|videoGen|pixelDraw~40_combout\ & \vgamap|videoGen|colorAddress~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~36_combout\,
	datab => \vgamap|videoGen|pixelDraw~30_combout\,
	datac => \vgamap|videoGen|pixelDraw~40_combout\,
	datad => \vgamap|videoGen|colorAddress~5_combout\,
	combout => \vgamap|videoGen|colorAddress~6_combout\);

-- Location: LCCOMB_X59_Y62_N20
\vgamap|videoGen|colorAddress~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~7_combout\ = (!\vgamap|videoGen|pixelDraw~46_combout\ & (!\vgamap|videoGen|pixelDraw~55_combout\ & (\vgamap|videoGen|colorAddress~6_combout\ & !\vgamap|videoGen|pixelDraw~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~46_combout\,
	datab => \vgamap|videoGen|pixelDraw~55_combout\,
	datac => \vgamap|videoGen|colorAddress~6_combout\,
	datad => \vgamap|videoGen|pixelDraw~52_combout\,
	combout => \vgamap|videoGen|colorAddress~7_combout\);

-- Location: IOIBUF_X115_Y10_N1
\keys[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(5),
	o => \keys[5]~input_o\);

-- Location: LCCOMB_X54_Y62_N30
\vgamap|videoGen|pixelDraw~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~74_combout\ = (\vgamap|videoGen|LessThan9~0_combout\ & (((\vgamap|videoGen|LessThan10~0_combout\)) # (!\vgamap|videoSync|pixel_column\(5)))) # (!\vgamap|videoGen|LessThan9~0_combout\ & (\vgamap|videoGen|LessThan9~1_combout\ & 
-- ((\vgamap|videoGen|LessThan10~0_combout\) # (!\vgamap|videoSync|pixel_column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|LessThan9~0_combout\,
	datab => \vgamap|videoSync|pixel_column\(5),
	datac => \vgamap|videoGen|LessThan10~0_combout\,
	datad => \vgamap|videoGen|LessThan9~1_combout\,
	combout => \vgamap|videoGen|pixelDraw~74_combout\);

-- Location: IOIBUF_X115_Y4_N22
\keys[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(7),
	o => \keys[7]~input_o\);

-- Location: LCCOMB_X57_Y62_N20
\vgamap|videoGen|pixelDraw~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~69_combout\ = (!\vgamap|videoSync|pixel_column\(9) & (\vgamap|videoSync|pixel_column\(8) & \vgamap|videoGen|pixelDraw~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(9),
	datac => \vgamap|videoSync|pixel_column\(8),
	datad => \vgamap|videoGen|pixelDraw~57_combout\,
	combout => \vgamap|videoGen|pixelDraw~69_combout\);

-- Location: LCCOMB_X61_Y62_N8
\vgamap|videoGen|colorAddress~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~17_combout\ = (!\vgamap|videoSync|pixel_column\(7) & (\vgamap|videoGen|pixelDraw~74_combout\ & (!\keys[7]~input_o\ & \vgamap|videoGen|pixelDraw~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(7),
	datab => \vgamap|videoGen|pixelDraw~74_combout\,
	datac => \keys[7]~input_o\,
	datad => \vgamap|videoGen|pixelDraw~69_combout\,
	combout => \vgamap|videoGen|colorAddress~17_combout\);

-- Location: LCCOMB_X62_Y62_N12
\vgamap|videoGen|pixelDraw~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~76_combout\ = (\vgamap|videoSync|pixel_column\(2) & (\vgamap|videoSync|pixel_column\(4) & (\vgamap|videoSync|pixel_column\(3) & \vgamap|videoSync|pixel_column\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(2),
	datab => \vgamap|videoSync|pixel_column\(4),
	datac => \vgamap|videoSync|pixel_column\(3),
	datad => \vgamap|videoSync|pixel_column\(5),
	combout => \vgamap|videoGen|pixelDraw~76_combout\);

-- Location: LCCOMB_X62_Y62_N10
\vgamap|videoGen|pixelDraw~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~75_combout\ = (((!\vgamap|videoSync|pixel_column\(3) & \vgamap|videoGen|LessThan12~0_combout\)) # (!\vgamap|videoSync|pixel_column\(4))) # (!\vgamap|videoSync|pixel_column\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(5),
	datab => \vgamap|videoSync|pixel_column\(4),
	datac => \vgamap|videoSync|pixel_column\(3),
	datad => \vgamap|videoGen|LessThan12~0_combout\,
	combout => \vgamap|videoGen|pixelDraw~75_combout\);

-- Location: LCCOMB_X62_Y62_N30
\vgamap|videoGen|pixelDraw~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~77_combout\ = (\vgamap|videoSync|pixel_column\(7) & (!\vgamap|videoSync|pixel_column\(6) & ((\vgamap|videoGen|pixelDraw~75_combout\)))) # (!\vgamap|videoSync|pixel_column\(7) & (\vgamap|videoSync|pixel_column\(6) & 
-- (\vgamap|videoGen|pixelDraw~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(7),
	datab => \vgamap|videoSync|pixel_column\(6),
	datac => \vgamap|videoGen|pixelDraw~76_combout\,
	datad => \vgamap|videoGen|pixelDraw~75_combout\,
	combout => \vgamap|videoGen|pixelDraw~77_combout\);

-- Location: LCCOMB_X62_Y62_N18
\vgamap|videoGen|colorAddress~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~18_combout\ = (\vgamap|videoGen|pixelDraw~77_combout\ & (\vgamap|videoGen|pixelDraw~69_combout\ & ((\vgamap|videoSync|pixel_column\(7)) # (!\vgamap|videoGen|pixelDraw~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~77_combout\,
	datab => \vgamap|videoSync|pixel_column\(7),
	datac => \vgamap|videoGen|pixelDraw~74_combout\,
	datad => \vgamap|videoGen|pixelDraw~69_combout\,
	combout => \vgamap|videoGen|colorAddress~18_combout\);

-- Location: LCCOMB_X61_Y62_N10
\vgamap|videoGen|colorAddress~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~19_combout\ = (\vgamap|videoGen|colorAddress~17_combout\) # ((!\keys[5]~input_o\ & \vgamap|videoGen|colorAddress~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keys[5]~input_o\,
	datac => \vgamap|videoGen|colorAddress~17_combout\,
	datad => \vgamap|videoGen|colorAddress~18_combout\,
	combout => \vgamap|videoGen|colorAddress~19_combout\);

-- Location: IOIBUF_X115_Y4_N15
\keys[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(9),
	o => \keys[9]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\keys[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(11),
	o => \keys[11]~input_o\);

-- Location: LCCOMB_X54_Y62_N24
\vgamap|videoGen|pixelDraw~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~70_combout\ = (\vgamap|videoSync|pixel_column\(4) & ((\vgamap|videoGen|pixelDraw~43_combout\) # ((\vgamap|videoSync|pixel_column\(3) & !\vgamap|videoSync|pixel_column\(5))))) # (!\vgamap|videoSync|pixel_column\(4) & 
-- ((\vgamap|videoSync|pixel_column\(3)) # ((\vgamap|videoSync|pixel_column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(3),
	datab => \vgamap|videoSync|pixel_column\(4),
	datac => \vgamap|videoSync|pixel_column\(5),
	datad => \vgamap|videoGen|pixelDraw~43_combout\,
	combout => \vgamap|videoGen|pixelDraw~70_combout\);

-- Location: LCCOMB_X57_Y62_N4
\vgamap|videoGen|pixelDraw~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~71_combout\ = (!\vgamap|videoSync|pixel_column\(7) & (!\vgamap|videoSync|pixel_column\(6) & (\vgamap|videoGen|pixelDraw~70_combout\ & \vgamap|videoGen|pixelDraw~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(7),
	datab => \vgamap|videoSync|pixel_column\(6),
	datac => \vgamap|videoGen|pixelDraw~70_combout\,
	datad => \vgamap|videoGen|pixelDraw~69_combout\,
	combout => \vgamap|videoGen|pixelDraw~71_combout\);

-- Location: LCCOMB_X55_Y62_N20
\vgamap|videoGen|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan6~0_combout\ = (\vgamap|videoGen|LessThan22~0_combout\ & (((!\vgamap|videoSync|pixel_column\(1) & !\vgamap|videoSync|pixel_column\(0))) # (!\vgamap|videoSync|pixel_column\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(1),
	datab => \vgamap|videoSync|pixel_column\(2),
	datac => \vgamap|videoSync|pixel_column\(0),
	datad => \vgamap|videoGen|LessThan22~0_combout\,
	combout => \vgamap|videoGen|LessThan6~0_combout\);

-- Location: LCCOMB_X57_Y62_N22
\vgamap|videoGen|pixelDraw~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~72_combout\ = (\vgamap|videoSync|pixel_column\(7) & (!\vgamap|videoSync|pixel_column\(8) & ((\vgamap|videoGen|pixelDraw~49_combout\)))) # (!\vgamap|videoSync|pixel_column\(7) & (\vgamap|videoSync|pixel_column\(8) & 
-- (\vgamap|videoGen|LessThan6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(7),
	datab => \vgamap|videoSync|pixel_column\(8),
	datac => \vgamap|videoGen|LessThan6~0_combout\,
	datad => \vgamap|videoGen|pixelDraw~49_combout\,
	combout => \vgamap|videoGen|pixelDraw~72_combout\);

-- Location: LCCOMB_X57_Y62_N24
\vgamap|videoGen|pixelDraw~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~73_combout\ = (\vgamap|videoGen|pixelDraw~72_combout\ & (\vgamap|videoGen|pixelDraw~60_combout\ & ((\vgamap|videoGen|LessThan22~1_combout\) # (!\vgamap|videoSync|pixel_column\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|LessThan22~1_combout\,
	datab => \vgamap|videoSync|pixel_column\(8),
	datac => \vgamap|videoGen|pixelDraw~72_combout\,
	datad => \vgamap|videoGen|pixelDraw~60_combout\,
	combout => \vgamap|videoGen|pixelDraw~73_combout\);

-- Location: LCCOMB_X61_Y62_N14
\vgamap|videoGen|colorAddress~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~10_combout\ = (\vgamap|videoGen|pixelDraw~73_combout\ & (((!\keys[11]~input_o\)))) # (!\vgamap|videoGen|pixelDraw~73_combout\ & (!\keys[9]~input_o\ & ((\vgamap|videoGen|pixelDraw~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keys[9]~input_o\,
	datab => \keys[11]~input_o\,
	datac => \vgamap|videoGen|pixelDraw~71_combout\,
	datad => \vgamap|videoGen|pixelDraw~73_combout\,
	combout => \vgamap|videoGen|colorAddress~10_combout\);

-- Location: LCCOMB_X61_Y62_N28
\vgamap|videoGen|colorAddress~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~11_combout\ = (!\vgamap|videoGen|pixelDraw~59_combout\ & (!\vgamap|videoGen|pixelDraw~64_combout\ & (\vgamap|videoGen|colorAddress~10_combout\ & !\vgamap|videoGen|pixelDraw~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~59_combout\,
	datab => \vgamap|videoGen|pixelDraw~64_combout\,
	datac => \vgamap|videoGen|colorAddress~10_combout\,
	datad => \vgamap|videoGen|pixelDraw~68_combout\,
	combout => \vgamap|videoGen|colorAddress~11_combout\);

-- Location: LCCOMB_X61_Y62_N6
\vgamap|videoGen|colorAddress~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~12_combout\ = (!\vgamap|videoGen|pixelDraw~59_combout\ & !\vgamap|videoGen|pixelDraw~64_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoGen|pixelDraw~59_combout\,
	datad => \vgamap|videoGen|pixelDraw~64_combout\,
	combout => \vgamap|videoGen|colorAddress~12_combout\);

-- Location: LCCOMB_X60_Y62_N6
\vgamap|videoGen|colorAddress~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~13_combout\ = (!\vgamap|videoGen|pixelDraw~73_combout\ & (!\vgamap|videoGen|pixelDraw~71_combout\ & (!\vgamap|videoGen|pixelDraw~68_combout\ & \vgamap|videoGen|colorAddress~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~73_combout\,
	datab => \vgamap|videoGen|pixelDraw~71_combout\,
	datac => \vgamap|videoGen|pixelDraw~68_combout\,
	datad => \vgamap|videoGen|colorAddress~12_combout\,
	combout => \vgamap|videoGen|colorAddress~13_combout\);

-- Location: LCCOMB_X61_Y62_N12
\vgamap|videoGen|colorAddress~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~14_combout\ = ((!\vgamap|videoGen|pixelDraw~77_combout\ & ((\vgamap|videoSync|pixel_column\(7)) # (!\vgamap|videoGen|pixelDraw~74_combout\)))) # (!\vgamap|videoGen|pixelDraw~69_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(7),
	datab => \vgamap|videoGen|pixelDraw~74_combout\,
	datac => \vgamap|videoGen|pixelDraw~77_combout\,
	datad => \vgamap|videoGen|pixelDraw~69_combout\,
	combout => \vgamap|videoGen|colorAddress~14_combout\);

-- Location: IOIBUF_X115_Y11_N8
\keys[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(4),
	o => \keys[4]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\keys[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(2),
	o => \keys[2]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\keys[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(0),
	o => \keys[0]~input_o\);

-- Location: LCCOMB_X57_Y62_N26
\vgamap|videoGen|pixelDraw~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~103_combout\ = (!\vgamap|videoSync|pixel_column\(6) & (((!\vgamap|videoSync|pixel_column\(4) & \vgamap|videoGen|pixelDraw~32_combout\)) # (!\vgamap|videoSync|pixel_column\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(4),
	datab => \vgamap|videoSync|pixel_column\(6),
	datac => \vgamap|videoSync|pixel_column\(5),
	datad => \vgamap|videoGen|pixelDraw~32_combout\,
	combout => \vgamap|videoGen|pixelDraw~103_combout\);

-- Location: LCCOMB_X57_Y62_N2
\vgamap|videoGen|pixelDraw~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~80_combout\ = (\vgamap|videoSync|pixel_column\(6) & (\vgamap|videoSync|pixel_column\(5) & ((\vgamap|videoGen|LessThan44~0_combout\) # (!\vgamap|videoGen|LessThan22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|LessThan44~0_combout\,
	datab => \vgamap|videoSync|pixel_column\(6),
	datac => \vgamap|videoSync|pixel_column\(5),
	datad => \vgamap|videoGen|LessThan22~0_combout\,
	combout => \vgamap|videoGen|pixelDraw~80_combout\);

-- Location: LCCOMB_X57_Y62_N8
\vgamap|videoGen|pixelDraw~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~81_combout\ = (((\vgamap|videoGen|pixelDraw~103_combout\) # (\vgamap|videoGen|pixelDraw~80_combout\)) # (!\vgamap|videoGen|pixelDraw~57_combout\)) # (!\vgamap|videoGen|pixelDraw~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~50_combout\,
	datab => \vgamap|videoGen|pixelDraw~57_combout\,
	datac => \vgamap|videoGen|pixelDraw~103_combout\,
	datad => \vgamap|videoGen|pixelDraw~80_combout\,
	combout => \vgamap|videoGen|pixelDraw~81_combout\);

-- Location: LCCOMB_X57_Y62_N10
\vgamap|videoGen|pixelDraw~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~78_combout\ = (\vgamap|videoGen|pixelDraw~28_combout\ & (((!\vgamap|videoSync|pixel_column\(4) & \vgamap|videoGen|LessThan16~0_combout\)) # (!\vgamap|videoSync|pixel_column\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(4),
	datab => \vgamap|videoSync|pixel_column\(5),
	datac => \vgamap|videoGen|pixelDraw~28_combout\,
	datad => \vgamap|videoGen|LessThan16~0_combout\,
	combout => \vgamap|videoGen|pixelDraw~78_combout\);

-- Location: LCCOMB_X57_Y62_N0
\vgamap|videoGen|pixelDraw~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~79_combout\ = (\vgamap|videoGen|pixelDraw~78_combout\ & ((\vgamap|videoGen|pixelDraw~57_combout\) # ((\vgamap|videoGen|pixelDraw~41_combout\ & \vgamap|videoGen|pixelDraw~69_combout\)))) # (!\vgamap|videoGen|pixelDraw~78_combout\ 
-- & (\vgamap|videoGen|pixelDraw~41_combout\ & ((\vgamap|videoGen|pixelDraw~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~78_combout\,
	datab => \vgamap|videoGen|pixelDraw~41_combout\,
	datac => \vgamap|videoGen|pixelDraw~57_combout\,
	datad => \vgamap|videoGen|pixelDraw~69_combout\,
	combout => \vgamap|videoGen|pixelDraw~79_combout\);

-- Location: LCCOMB_X57_Y62_N14
\vgamap|videoGen|colorAddress~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~15_combout\ = (\vgamap|videoGen|pixelDraw~79_combout\ & (!\keys[2]~input_o\)) # (!\vgamap|videoGen|pixelDraw~79_combout\ & (((!\keys[0]~input_o\ & !\vgamap|videoGen|pixelDraw~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keys[2]~input_o\,
	datab => \keys[0]~input_o\,
	datac => \vgamap|videoGen|pixelDraw~81_combout\,
	datad => \vgamap|videoGen|pixelDraw~79_combout\,
	combout => \vgamap|videoGen|colorAddress~15_combout\);

-- Location: LCCOMB_X55_Y62_N18
\vgamap|videoGen|pixelDraw~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~82_combout\ = (\vgamap|videoSync|pixel_column\(4) & ((\vgamap|videoSync|pixel_column\(3)) # ((\vgamap|videoSync|pixel_column\(1) & \vgamap|videoSync|pixel_column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(1),
	datab => \vgamap|videoSync|pixel_column\(2),
	datac => \vgamap|videoSync|pixel_column\(3),
	datad => \vgamap|videoSync|pixel_column\(4),
	combout => \vgamap|videoGen|pixelDraw~82_combout\);

-- Location: LCCOMB_X55_Y62_N14
\vgamap|videoGen|pixelDraw~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~83_combout\ = (\vgamap|videoSync|pixel_column\(5) & ((\vgamap|videoSync|pixel_column\(6) & ((\vgamap|videoGen|LessThan14~0_combout\))) # (!\vgamap|videoSync|pixel_column\(6) & (\vgamap|videoGen|pixelDraw~82_combout\)))) # 
-- (!\vgamap|videoSync|pixel_column\(5) & (((\vgamap|videoSync|pixel_column\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(5),
	datab => \vgamap|videoGen|pixelDraw~82_combout\,
	datac => \vgamap|videoSync|pixel_column\(6),
	datad => \vgamap|videoGen|LessThan14~0_combout\,
	combout => \vgamap|videoGen|pixelDraw~83_combout\);

-- Location: LCCOMB_X55_Y62_N16
\vgamap|videoGen|pixelDraw~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~84_combout\ = (\vgamap|videoSync|pixel_column\(7) & (\vgamap|videoGen|pixelDraw~83_combout\ & \vgamap|videoGen|pixelDraw~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(7),
	datac => \vgamap|videoGen|pixelDraw~83_combout\,
	datad => \vgamap|videoGen|pixelDraw~69_combout\,
	combout => \vgamap|videoGen|pixelDraw~84_combout\);

-- Location: LCCOMB_X61_Y62_N18
\vgamap|videoGen|colorAddress~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~16_combout\ = (\vgamap|videoGen|colorAddress~14_combout\ & ((\vgamap|videoGen|pixelDraw~84_combout\ & (!\keys[4]~input_o\)) # (!\vgamap|videoGen|pixelDraw~84_combout\ & ((\vgamap|videoGen|colorAddress~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|colorAddress~14_combout\,
	datab => \keys[4]~input_o\,
	datac => \vgamap|videoGen|colorAddress~15_combout\,
	datad => \vgamap|videoGen|pixelDraw~84_combout\,
	combout => \vgamap|videoGen|colorAddress~16_combout\);

-- Location: LCCOMB_X61_Y62_N20
\vgamap|videoGen|colorAddress~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~20_combout\ = (\vgamap|videoGen|colorAddress~11_combout\) # ((\vgamap|videoGen|colorAddress~13_combout\ & ((\vgamap|videoGen|colorAddress~19_combout\) # (\vgamap|videoGen|colorAddress~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|colorAddress~19_combout\,
	datab => \vgamap|videoGen|colorAddress~11_combout\,
	datac => \vgamap|videoGen|colorAddress~13_combout\,
	datad => \vgamap|videoGen|colorAddress~16_combout\,
	combout => \vgamap|videoGen|colorAddress~20_combout\);

-- Location: LCCOMB_X61_Y62_N30
\vgamap|videoGen|colorAddress~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~21_combout\ = (\vgamap|videoGen|colorAddress~4_combout\ & (\vgamap|videoGen|colorAddress~7_combout\ & ((\vgamap|videoGen|colorAddress~9_combout\) # (\vgamap|videoGen|colorAddress~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|colorAddress~4_combout\,
	datab => \vgamap|videoGen|colorAddress~9_combout\,
	datac => \vgamap|videoGen|colorAddress~7_combout\,
	datad => \vgamap|videoGen|colorAddress~20_combout\,
	combout => \vgamap|videoGen|colorAddress~21_combout\);

-- Location: LCCOMB_X54_Y62_N0
\vgamap|videoGen|pixelDraw~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~96_combout\ = (\vgamap|videoSync|pixel_column\(4) & ((\vgamap|videoSync|pixel_column\(3)) # ((\vgamap|videoSync|pixel_column\(1)) # (\vgamap|videoSync|pixel_column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(3),
	datab => \vgamap|videoSync|pixel_column\(4),
	datac => \vgamap|videoSync|pixel_column\(1),
	datad => \vgamap|videoSync|pixel_column\(2),
	combout => \vgamap|videoGen|pixelDraw~96_combout\);

-- Location: LCCOMB_X55_Y62_N0
\vgamap|videoGen|pixelDraw~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~97_combout\ = (\vgamap|videoSync|pixel_column\(5) & ((\vgamap|videoGen|LessThan6~0_combout\))) # (!\vgamap|videoSync|pixel_column\(5) & (\vgamap|videoGen|pixelDraw~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~96_combout\,
	datab => \vgamap|videoGen|LessThan6~0_combout\,
	datad => \vgamap|videoSync|pixel_column\(5),
	combout => \vgamap|videoGen|pixelDraw~97_combout\);

-- Location: LCCOMB_X56_Y62_N8
\vgamap|videoGen|pixelDraw~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~94_combout\ = (\vgamap|videoSync|pixel_column\(4) & \vgamap|videoSync|pixel_column\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|pixel_column\(4),
	datad => \vgamap|videoSync|pixel_column\(5),
	combout => \vgamap|videoGen|pixelDraw~94_combout\);

-- Location: LCCOMB_X56_Y62_N2
\vgamap|videoGen|pixelDraw~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~95_combout\ = (\vgamap|videoSync|pixel_column\(6) & (((\vgamap|videoGen|pixelDraw~15_combout\ & \vgamap|videoGen|LessThan12~0_combout\)))) # (!\vgamap|videoSync|pixel_column\(6) & ((\vgamap|videoGen|pixelDraw~94_combout\) # 
-- ((\vgamap|videoGen|pixelDraw~15_combout\ & \vgamap|videoGen|LessThan12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(6),
	datab => \vgamap|videoGen|pixelDraw~94_combout\,
	datac => \vgamap|videoGen|pixelDraw~15_combout\,
	datad => \vgamap|videoGen|LessThan12~0_combout\,
	combout => \vgamap|videoGen|pixelDraw~95_combout\);

-- Location: LCCOMB_X60_Y62_N24
\vgamap|videoGen|colorAddress~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~29_combout\ = ((\vgamap|videoGen|pixelDraw~51_combout\ & ((!\vgamap|videoGen|pixelDraw~50_combout\) # (!\vgamap|videoGen|pixelDraw~95_combout\)))) # (!\vgamap|videoGen|pixelDraw~98_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~95_combout\,
	datab => \vgamap|videoGen|pixelDraw~50_combout\,
	datac => \vgamap|videoGen|pixelDraw~98_combout\,
	datad => \vgamap|videoGen|pixelDraw~51_combout\,
	combout => \vgamap|videoGen|colorAddress~29_combout\);

-- Location: LCCOMB_X60_Y62_N26
\vgamap|videoGen|colorAddress~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~30_combout\ = (\vgamap|videoGen|colorAddress~29_combout\ & (((!\vgamap|videoGen|pixelDraw~97_combout\) # (!\vgamap|videoGen|pixelDraw~28_combout\)) # (!\vgamap|videoGen|pixelDraw~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~98_combout\,
	datab => \vgamap|videoGen|pixelDraw~28_combout\,
	datac => \vgamap|videoGen|pixelDraw~97_combout\,
	datad => \vgamap|videoGen|colorAddress~29_combout\,
	combout => \vgamap|videoGen|colorAddress~30_combout\);

-- Location: LCCOMB_X62_Y62_N26
\volmap|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|Mux1~0_combout\ = (!\volmap|current\(2) & \volmap|current\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \volmap|current\(2),
	datac => \volmap|current\(1),
	combout => \volmap|Mux1~0_combout\);

-- Location: FF_X62_Y62_N27
\volmap|z[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \volmap|div_clk~clkctrl_outclk\,
	d => \volmap|Mux1~0_combout\,
	ena => \volmap|z[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|z\(1));

-- Location: LCCOMB_X62_Y62_N0
\vgamap|videoGen|colorAddress~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~28_combout\ = (\volmap|z\(1)) # (\volmap|z\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \volmap|z\(1),
	datad => \volmap|z\(2),
	combout => \vgamap|videoGen|colorAddress~28_combout\);

-- Location: LCCOMB_X62_Y62_N28
\volmap|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|Mux2~0_combout\ = (!\volmap|current\(2) & \volmap|current\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \volmap|current\(2),
	datad => \volmap|current\(0),
	combout => \volmap|Mux2~0_combout\);

-- Location: FF_X62_Y62_N29
\volmap|z[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \volmap|div_clk~clkctrl_outclk\,
	d => \volmap|Mux2~0_combout\,
	ena => \volmap|z[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|z\(0));

-- Location: LCCOMB_X62_Y62_N6
\vgamap|videoGen|colorAddress~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~27_combout\ = (\volmap|z\(0) & ((\vgamap|videoGen|pixelDraw~20_combout\) # ((\vgamap|videoGen|pixelDraw~25_combout\ & \volmap|z\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~25_combout\,
	datab => \vgamap|videoGen|pixelDraw~20_combout\,
	datac => \volmap|z\(1),
	datad => \volmap|z\(0),
	combout => \vgamap|videoGen|colorAddress~27_combout\);

-- Location: LCCOMB_X61_Y62_N0
\vgamap|videoGen|colorAddress~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~31_combout\ = ((\vgamap|videoGen|colorAddress~27_combout\) # ((!\vgamap|videoGen|colorAddress~2_combout\ & \vgamap|videoGen|colorAddress~28_combout\))) # (!\vgamap|videoGen|colorAddress~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|colorAddress~30_combout\,
	datab => \vgamap|videoGen|colorAddress~2_combout\,
	datac => \vgamap|videoGen|colorAddress~28_combout\,
	datad => \vgamap|videoGen|colorAddress~27_combout\,
	combout => \vgamap|videoGen|colorAddress~31_combout\);

-- Location: LCCOMB_X61_Y62_N16
\vgamap|videoGen|colorAddress~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~32_combout\ = (\vgamap|videoGen|colorAddress~47_combout\) # ((\vgamap|videoGen|pixelDraw~93_combout\) # ((\vgamap|videoGen|colorAddress~21_combout\) # (\vgamap|videoGen|colorAddress~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|colorAddress~47_combout\,
	datab => \vgamap|videoGen|pixelDraw~93_combout\,
	datac => \vgamap|videoGen|colorAddress~21_combout\,
	datad => \vgamap|videoGen|colorAddress~31_combout\,
	combout => \vgamap|videoGen|colorAddress~32_combout\);

-- Location: FF_X61_Y62_N17
\vgamap|videoGen|colorAddress[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vgamap|videoGen|colorAddress~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoGen|colorAddress\(0));

-- Location: IOIBUF_X115_Y10_N8
\keys[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(13),
	o => \keys[13]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\keys[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(15),
	o => \keys[15]~input_o\);

-- Location: LCCOMB_X60_Y62_N10
\vgamap|videoGen|colorAddress~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~42_combout\ = (\vgamap|videoGen|pixelDraw~55_combout\ & (((!\keys[15]~input_o\)))) # (!\vgamap|videoGen|pixelDraw~55_combout\ & (!\keys[13]~input_o\ & ((\vgamap|videoGen|pixelDraw~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~55_combout\,
	datab => \keys[13]~input_o\,
	datac => \keys[15]~input_o\,
	datad => \vgamap|videoGen|pixelDraw~46_combout\,
	combout => \vgamap|videoGen|colorAddress~42_combout\);

-- Location: LCCOMB_X60_Y62_N16
\vgamap|videoGen|colorAddress~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~43_combout\ = (\vgamap|videoGen|colorAddress~42_combout\ & (!\vgamap|videoGen|pixelDraw~52_combout\ & !\vgamap|videoGen|colorAddress~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|colorAddress~42_combout\,
	datab => \vgamap|videoGen|pixelDraw~52_combout\,
	datad => \vgamap|videoGen|colorAddress~25_combout\,
	combout => \vgamap|videoGen|colorAddress~43_combout\);

-- Location: IOIBUF_X115_Y17_N1
\mute_sel~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mute_sel,
	o => \mute_sel~input_o\);

-- Location: LCCOMB_X60_Y62_N30
\vgamap|videoGen|colorAddress~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~44_combout\ = (!\vgamap|videoGen|pixelDraw~93_combout\ & (\vgamap|videoGen|colorAddress~4_combout\ & ((\mute_sel~input_o\) # (!\vgamap|videoGen|pixelDraw~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mute_sel~input_o\,
	datab => \vgamap|videoGen|pixelDraw~52_combout\,
	datac => \vgamap|videoGen|pixelDraw~93_combout\,
	datad => \vgamap|videoGen|colorAddress~4_combout\,
	combout => \vgamap|videoGen|colorAddress~44_combout\);

-- Location: IOIBUF_X115_Y18_N8
\keys[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(3),
	o => \keys[3]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\keys[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(1),
	o => \keys[1]~input_o\);

-- Location: LCCOMB_X59_Y62_N14
\vgamap|videoGen|colorAddress~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~39_combout\ = (\vgamap|videoGen|pixelDraw~28_combout\ & (\vgamap|videoGen|pixelDraw~99_combout\ & (!\vgamap|videoGen|pixelDraw~44_combout\ & !\keys[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~28_combout\,
	datab => \vgamap|videoGen|pixelDraw~99_combout\,
	datac => \vgamap|videoGen|pixelDraw~44_combout\,
	datad => \keys[1]~input_o\,
	combout => \vgamap|videoGen|colorAddress~39_combout\);

-- Location: LCCOMB_X59_Y62_N28
\vgamap|videoGen|colorAddress~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~38_combout\ = (!\vgamap|videoGen|pixelDraw~36_combout\ & (!\vgamap|videoGen|pixelDraw~40_combout\ & !\vgamap|videoGen|pixelDraw~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~36_combout\,
	datac => \vgamap|videoGen|pixelDraw~40_combout\,
	datad => \vgamap|videoGen|pixelDraw~42_combout\,
	combout => \vgamap|videoGen|colorAddress~38_combout\);

-- Location: LCCOMB_X59_Y62_N16
\vgamap|videoGen|colorAddress~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~40_combout\ = (\vgamap|videoGen|colorAddress~38_combout\ & ((\vgamap|videoGen|pixelDraw~30_combout\ & (!\keys[3]~input_o\)) # (!\vgamap|videoGen|pixelDraw~30_combout\ & ((\vgamap|videoGen|colorAddress~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keys[3]~input_o\,
	datab => \vgamap|videoGen|pixelDraw~30_combout\,
	datac => \vgamap|videoGen|colorAddress~39_combout\,
	datad => \vgamap|videoGen|colorAddress~38_combout\,
	combout => \vgamap|videoGen|colorAddress~40_combout\);

-- Location: LCCOMB_X60_Y62_N8
\vgamap|videoGen|colorAddress~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~33_combout\ = (!\vgamap|videoGen|pixelDraw~55_combout\ & (!\vgamap|videoGen|pixelDraw~46_combout\ & (!\vgamap|videoGen|pixelDraw~52_combout\ & !\vgamap|videoGen|colorAddress~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~55_combout\,
	datab => \vgamap|videoGen|pixelDraw~46_combout\,
	datac => \vgamap|videoGen|pixelDraw~52_combout\,
	datad => \vgamap|videoGen|colorAddress~25_combout\,
	combout => \vgamap|videoGen|colorAddress~33_combout\);

-- Location: IOIBUF_X115_Y5_N15
\keys[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(10),
	o => \keys[10]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\keys[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(8),
	o => \keys[8]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\keys[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(6),
	o => \keys[6]~input_o\);

-- Location: LCCOMB_X59_Y62_N18
\vgamap|videoGen|colorAddress~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~34_combout\ = (\vgamap|videoGen|pixelDraw~40_combout\ & (!\keys[8]~input_o\)) # (!\vgamap|videoGen|pixelDraw~40_combout\ & (((!\keys[6]~input_o\ & \vgamap|videoGen|pixelDraw~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keys[8]~input_o\,
	datab => \keys[6]~input_o\,
	datac => \vgamap|videoGen|pixelDraw~40_combout\,
	datad => \vgamap|videoGen|pixelDraw~36_combout\,
	combout => \vgamap|videoGen|colorAddress~34_combout\);

-- Location: LCCOMB_X60_Y62_N14
\vgamap|videoGen|colorAddress~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~35_combout\ = (\vgamap|videoGen|pixelDraw~42_combout\ & (!\keys[10]~input_o\)) # (!\vgamap|videoGen|pixelDraw~42_combout\ & ((\vgamap|videoGen|colorAddress~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~42_combout\,
	datab => \keys[10]~input_o\,
	datad => \vgamap|videoGen|colorAddress~34_combout\,
	combout => \vgamap|videoGen|colorAddress~35_combout\);

-- Location: LCCOMB_X60_Y62_N20
\vgamap|videoGen|colorAddress~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~36_combout\ = (!\vgamap|videoGen|pixelDraw~79_combout\ & (\vgamap|videoGen|pixelDraw~81_combout\ & !\vgamap|videoGen|pixelDraw~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~79_combout\,
	datac => \vgamap|videoGen|pixelDraw~81_combout\,
	datad => \vgamap|videoGen|pixelDraw~84_combout\,
	combout => \vgamap|videoGen|colorAddress~36_combout\);

-- Location: LCCOMB_X60_Y62_N18
\vgamap|videoGen|colorAddress~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~37_combout\ = (\vgamap|videoGen|colorAddress~6_combout\ & (\vgamap|videoGen|colorAddress~14_combout\ & (\vgamap|videoGen|colorAddress~13_combout\ & \vgamap|videoGen|colorAddress~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|colorAddress~6_combout\,
	datab => \vgamap|videoGen|colorAddress~14_combout\,
	datac => \vgamap|videoGen|colorAddress~13_combout\,
	datad => \vgamap|videoGen|colorAddress~36_combout\,
	combout => \vgamap|videoGen|colorAddress~37_combout\);

-- Location: LCCOMB_X60_Y62_N12
\vgamap|videoGen|colorAddress~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~41_combout\ = (\vgamap|videoGen|colorAddress~33_combout\ & ((\vgamap|videoGen|colorAddress~40_combout\) # ((\vgamap|videoGen|colorAddress~35_combout\) # (\vgamap|videoGen|colorAddress~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|colorAddress~40_combout\,
	datab => \vgamap|videoGen|colorAddress~33_combout\,
	datac => \vgamap|videoGen|colorAddress~35_combout\,
	datad => \vgamap|videoGen|colorAddress~37_combout\,
	combout => \vgamap|videoGen|colorAddress~41_combout\);

-- Location: LCCOMB_X60_Y62_N28
\vgamap|videoGen|colorAddress~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~45_combout\ = (\vgamap|videoGen|colorAddress~30_combout\ & ((\vgamap|videoGen|colorAddress~43_combout\) # ((\vgamap|videoGen|colorAddress~41_combout\) # (!\vgamap|videoGen|colorAddress~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|colorAddress~30_combout\,
	datab => \vgamap|videoGen|colorAddress~43_combout\,
	datac => \vgamap|videoGen|colorAddress~44_combout\,
	datad => \vgamap|videoGen|colorAddress~41_combout\,
	combout => \vgamap|videoGen|colorAddress~45_combout\);

-- Location: FF_X60_Y62_N29
\vgamap|videoGen|colorAddress[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vgamap|videoGen|colorAddress~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoGen|colorAddress\(1));

-- Location: LCCOMB_X60_Y62_N22
\vgamap|videoGen|colorAddress~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~46_combout\ = ((\vgamap|videoGen|colorAddress~26_combout\) # ((\vgamap|videoGen|colorAddress~7_combout\) # (!\vgamap|videoGen|colorAddress~44_combout\))) # (!\vgamap|videoGen|colorAddress~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|colorAddress~30_combout\,
	datab => \vgamap|videoGen|colorAddress~26_combout\,
	datac => \vgamap|videoGen|colorAddress~44_combout\,
	datad => \vgamap|videoGen|colorAddress~7_combout\,
	combout => \vgamap|videoGen|colorAddress~46_combout\);

-- Location: FF_X60_Y62_N23
\vgamap|videoGen|colorAddress[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vgamap|videoGen|colorAddress~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoGen|colorAddress\(2));

-- Location: M9K_X64_Y62_N0
\vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"03FFFFFFF0000000000000FFFFF03FF003FF03FFFFC000000003FF0000FFC0003FF00000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "colorROM.mif",
	init_file_layout => "port_a",
	logical_ram_name => "VGA_top_level:vgamap|pixelGenerator:videoGen|colorROM:colors|altsyncram:altsyncram_component|altsyncram_b481:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 30,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 3,
	port_b_data_width => 36,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	portaaddr => \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X55_Y63_N30
\vgamap|videoSync|process_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|process_1~1_combout\ = (((\vgamap|videoSync|h_count\(8)) # (\vgamap|videoSync|process_1~0_combout\)) # (!\vgamap|videoSync|h_count\(7))) # (!\vgamap|videoSync|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|h_count\(9),
	datab => \vgamap|videoSync|h_count\(7),
	datac => \vgamap|videoSync|h_count\(8),
	datad => \vgamap|videoSync|process_1~0_combout\,
	combout => \vgamap|videoSync|process_1~1_combout\);

-- Location: LCCOMB_X55_Y63_N12
\vgamap|videoSync|process_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|process_1~2_combout\ = (\vgamap|videoSync|h_count\(5) & ((\vgamap|videoSync|h_count\(1)) # ((\vgamap|videoSync|h_count\(0)) # (\vgamap|videoSync|h_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|h_count\(1),
	datab => \vgamap|videoSync|h_count\(0),
	datac => \vgamap|videoSync|h_count\(5),
	datad => \vgamap|videoSync|h_count\(2),
	combout => \vgamap|videoSync|process_1~2_combout\);

-- Location: LCCOMB_X55_Y63_N4
\vgamap|videoSync|process_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|process_1~4_combout\ = (\vgamap|videoSync|process_1~1_combout\) # ((\vgamap|videoSync|h_count\(6) & (\vgamap|videoSync|process_1~3_combout\ & \vgamap|videoSync|process_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|process_1~1_combout\,
	datab => \vgamap|videoSync|h_count\(6),
	datac => \vgamap|videoSync|process_1~3_combout\,
	datad => \vgamap|videoSync|process_1~2_combout\,
	combout => \vgamap|videoSync|process_1~4_combout\);

-- Location: FF_X55_Y63_N5
\vgamap|videoSync|horiz_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|process_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|horiz_sync~q\);

-- Location: LCCOMB_X43_Y63_N28
\vgamap|videoSync|horiz_sync_out~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|horiz_sync_out~feeder_combout\ = \vgamap|videoSync|horiz_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vgamap|videoSync|horiz_sync~q\,
	combout => \vgamap|videoSync|horiz_sync_out~feeder_combout\);

-- Location: FF_X43_Y63_N29
\vgamap|videoSync|horiz_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|horiz_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|horiz_sync_out~q\);

-- Location: LCCOMB_X57_Y63_N14
\vgamap|videoSync|process_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|process_1~5_combout\ = ((\vgamap|videoSync|v_count\(1) & ((\vgamap|videoSync|v_count\(2)) # (!\vgamap|videoSync|v_count\(0)))) # (!\vgamap|videoSync|v_count\(1) & (!\vgamap|videoSync|v_count\(2)))) # (!\vgamap|videoSync|v_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count\(3),
	datab => \vgamap|videoSync|v_count\(1),
	datac => \vgamap|videoSync|v_count\(2),
	datad => \vgamap|videoSync|v_count\(0),
	combout => \vgamap|videoSync|process_1~5_combout\);

-- Location: LCCOMB_X57_Y63_N24
\vgamap|videoSync|process_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|process_1~6_combout\ = (\vgamap|videoSync|v_count\(9)) # (((\vgamap|videoSync|process_1~5_combout\) # (\vgamap|videoSync|v_count\(4))) # (!\vgamap|videoSync|LessThan6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count\(9),
	datab => \vgamap|videoSync|LessThan6~0_combout\,
	datac => \vgamap|videoSync|process_1~5_combout\,
	datad => \vgamap|videoSync|v_count\(4),
	combout => \vgamap|videoSync|process_1~6_combout\);

-- Location: FF_X57_Y63_N25
\vgamap|videoSync|vert_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|process_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|vert_sync~q\);

-- Location: FF_X56_Y63_N7
\vgamap|videoSync|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|vert_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|vert_sync_out~q\);

-- Location: FF_X57_Y63_N29
\vgamap|videoSync|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|LessThan6~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|video_on_v~q\);

-- Location: LCCOMB_X57_Y63_N18
\vgamap|videoSync|video_on_h~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|video_on_h~feeder_combout\ = \vgamap|videoSync|LessThan5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vgamap|videoSync|LessThan5~0_combout\,
	combout => \vgamap|videoSync|video_on_h~feeder_combout\);

-- Location: FF_X57_Y63_N19
\vgamap|videoSync|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|video_on_h~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|video_on_h~q\);

-- Location: LCCOMB_X57_Y63_N28
\vgamap|videoSync|video_on\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|video_on~combout\ = (\vgamap|videoSync|video_on_v~q\ & \vgamap|videoSync|video_on_h~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|video_on_v~q\,
	datad => \vgamap|videoSync|video_on_h~q\,
	combout => \vgamap|videoSync|video_on~combout\);

-- Location: IOIBUF_X56_Y73_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X56_Y73_N22
\oct_sel~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_oct_sel,
	o => \oct_sel~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\synth_sel~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_synth_sel,
	o => \synth_sel~input_o\);

ww_vga_red(0) <= \vga_red[0]~output_o\;

ww_vga_red(1) <= \vga_red[1]~output_o\;

ww_vga_red(2) <= \vga_red[2]~output_o\;

ww_vga_red(3) <= \vga_red[3]~output_o\;

ww_vga_red(4) <= \vga_red[4]~output_o\;

ww_vga_red(5) <= \vga_red[5]~output_o\;

ww_vga_red(6) <= \vga_red[6]~output_o\;

ww_vga_red(7) <= \vga_red[7]~output_o\;

ww_vga_red(8) <= \vga_red[8]~output_o\;

ww_vga_red(9) <= \vga_red[9]~output_o\;

ww_vga_green(0) <= \vga_green[0]~output_o\;

ww_vga_green(1) <= \vga_green[1]~output_o\;

ww_vga_green(2) <= \vga_green[2]~output_o\;

ww_vga_green(3) <= \vga_green[3]~output_o\;

ww_vga_green(4) <= \vga_green[4]~output_o\;

ww_vga_green(5) <= \vga_green[5]~output_o\;

ww_vga_green(6) <= \vga_green[6]~output_o\;

ww_vga_green(7) <= \vga_green[7]~output_o\;

ww_vga_green(8) <= \vga_green[8]~output_o\;

ww_vga_green(9) <= \vga_green[9]~output_o\;

ww_vga_blue(0) <= \vga_blue[0]~output_o\;

ww_vga_blue(1) <= \vga_blue[1]~output_o\;

ww_vga_blue(2) <= \vga_blue[2]~output_o\;

ww_vga_blue(3) <= \vga_blue[3]~output_o\;

ww_vga_blue(4) <= \vga_blue[4]~output_o\;

ww_vga_blue(5) <= \vga_blue[5]~output_o\;

ww_vga_blue(6) <= \vga_blue[6]~output_o\;

ww_vga_blue(7) <= \vga_blue[7]~output_o\;

ww_vga_blue(8) <= \vga_blue[8]~output_o\;

ww_vga_blue(9) <= \vga_blue[9]~output_o\;

ww_horiz_sync <= \horiz_sync~output_o\;

ww_vert_sync <= \vert_sync~output_o\;

ww_vga_blank <= \vga_blank~output_o\;

ww_vga_clk <= \vga_clk~output_o\;
END structure;


