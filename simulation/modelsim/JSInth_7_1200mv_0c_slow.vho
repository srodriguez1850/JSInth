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

-- DATE "05/03/2015 14:30:52"

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
	vga_clk : BUFFER std_logic;
	I2C_SDAT : BUFFER std_logic;
	I2C_SCLK : BUFFER std_logic;
	AUD_ADCLRCK : BUFFER std_logic;
	AUD_ADCDAT : IN std_logic;
	AUD_DACLRCK : BUFFER std_logic;
	AUD_DACDAT : BUFFER std_logic;
	AUD_BCLK : BUFFER std_logic;
	AUD_XCK : BUFFER std_logic
	);
END JSInth;

-- Design Ports Information
-- reset	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_red[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_red[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_red[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_red[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_red[4]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_red[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_red[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_red[7]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_red[8]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_red[9]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_green[0]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_green[1]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_green[2]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_green[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_green[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_green[5]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_green[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_green[7]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_green[8]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_green[9]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blue[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blue[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blue[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blue[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blue[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blue[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blue[6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blue[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blue[8]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blue[9]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horiz_sync	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vert_sync	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blank	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_clk	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I2C_SCLK	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_ADCDAT	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_DACDAT	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_XCK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I2C_SDAT	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_ADCLRCK	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_DACLRCK	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_BCLK	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[4]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[5]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[11]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[12]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[7]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[9]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[0]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[2]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[14]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[16]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[13]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[15]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mute_sel	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[6]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[8]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[10]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- synth_sel	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oct_sel	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vol_down	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vol_up	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_I2C_SDAT : std_logic;
SIGNAL ww_I2C_SCLK : std_logic;
SIGNAL ww_AUD_ADCLRCK : std_logic;
SIGNAL ww_AUD_ADCDAT : std_logic;
SIGNAL ww_AUD_DACLRCK : std_logic;
SIGNAL ww_AUD_DACDAT : std_logic;
SIGNAL ww_AUD_BCLK : std_logic;
SIGNAL ww_AUD_XCK : std_logic;
SIGNAL \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \i2c|Ram0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \i2c|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vgamap|videoSync|pixel_clock_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \audio_clock[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i2c|mI2C_CTRL_CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \AUD_ADCDAT~input_o\ : std_logic;
SIGNAL \AUD_ADCLRCK~input_o\ : std_logic;
SIGNAL \AUD_DACLRCK~input_o\ : std_logic;
SIGNAL \AUD_BCLK~input_o\ : std_logic;
SIGNAL \I2C_SDAT~output_o\ : std_logic;
SIGNAL \AUD_ADCLRCK~output_o\ : std_logic;
SIGNAL \AUD_DACLRCK~output_o\ : std_logic;
SIGNAL \AUD_BCLK~output_o\ : std_logic;
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
SIGNAL \I2C_SCLK~output_o\ : std_logic;
SIGNAL \AUD_DACDAT~output_o\ : std_logic;
SIGNAL \AUD_XCK~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \i2c|mI2C_CLK_DIV[0]~16_combout\ : std_logic;
SIGNAL \i2c|mI2C_CLK_DIV[0]~17\ : std_logic;
SIGNAL \i2c|mI2C_CLK_DIV[1]~18_combout\ : std_logic;
SIGNAL \i2c|mI2C_CLK_DIV[1]~19\ : std_logic;
SIGNAL \i2c|mI2C_CLK_DIV[2]~20_combout\ : std_logic;
SIGNAL \i2c|mI2C_CLK_DIV[2]~21\ : std_logic;
SIGNAL \i2c|mI2C_CLK_DIV[3]~22_combout\ : std_logic;
SIGNAL \i2c|mI2C_CLK_DIV[3]~23\ : std_logic;
SIGNAL \i2c|mI2C_CLK_DIV[4]~24_combout\ : std_logic;
SIGNAL \i2c|mI2C_CLK_DIV[4]~25\ : std_logic;
SIGNAL \i2c|mI2C_CLK_DIV[5]~26_combout\ : std_logic;
SIGNAL \i2c|mI2C_CLK_DIV[5]~27\ : std_logic;
SIGNAL \i2c|mI2C_CLK_DIV[6]~28_combout\ : std_logic;
SIGNAL \i2c|mI2C_CLK_DIV[6]~29\ : std_logic;
SIGNAL \i2c|mI2C_CLK_DIV[7]~30_combout\ : std_logic;
SIGNAL \i2c|mI2C_CLK_DIV[7]~31\ : std_logic;
SIGNAL \i2c|mI2C_CLK_DIV[8]~32_combout\ : std_logic;
SIGNAL \i2c|mI2C_CLK_DIV[8]~33\ : std_logic;
SIGNAL \i2c|mI2C_CLK_DIV[9]~34_combout\ : std_logic;
SIGNAL \i2c|mI2C_CLK_DIV[9]~35\ : std_logic;
SIGNAL \i2c|mI2C_CLK_DIV[10]~36_combout\ : std_logic;
SIGNAL \i2c|mI2C_CLK_DIV[10]~37\ : std_logic;
SIGNAL \i2c|mI2C_CLK_DIV[11]~38_combout\ : std_logic;
SIGNAL \i2c|mI2C_CLK_DIV[11]~39\ : std_logic;
SIGNAL \i2c|mI2C_CLK_DIV[12]~40_combout\ : std_logic;
SIGNAL \i2c|mI2C_CLK_DIV[12]~41\ : std_logic;
SIGNAL \i2c|mI2C_CLK_DIV[13]~42_combout\ : std_logic;
SIGNAL \i2c|mI2C_CLK_DIV[13]~43\ : std_logic;
SIGNAL \i2c|mI2C_CLK_DIV[14]~44_combout\ : std_logic;
SIGNAL \i2c|mI2C_CLK_DIV[14]~45\ : std_logic;
SIGNAL \i2c|mI2C_CLK_DIV[15]~46_combout\ : std_logic;
SIGNAL \i2c|LessThan0~0_combout\ : std_logic;
SIGNAL \i2c|LessThan0~3_combout\ : std_logic;
SIGNAL \i2c|LessThan0~1_combout\ : std_logic;
SIGNAL \i2c|LessThan0~2_combout\ : std_logic;
SIGNAL \i2c|LessThan0~4_combout\ : std_logic;
SIGNAL \i2c|mI2C_CTRL_CLK~0_combout\ : std_logic;
SIGNAL \i2c|mI2C_CTRL_CLK~feeder_combout\ : std_logic;
SIGNAL \i2c|mI2C_CTRL_CLK~q\ : std_logic;
SIGNAL \i2c|mI2C_CTRL_CLK~clkctrl_outclk\ : std_logic;
SIGNAL \i2c|u0|SD_COUNTER[0]~6_combout\ : std_logic;
SIGNAL \i2c|u0|Selector1~0_combout\ : std_logic;
SIGNAL \i2c|u0|END~0_combout\ : std_logic;
SIGNAL \i2c|u0|END~1_combout\ : std_logic;
SIGNAL \i2c|u0|END~q\ : std_logic;
SIGNAL \I2C_SDAT~input_o\ : std_logic;
SIGNAL \i2c|u0|ACK2~0_combout\ : std_logic;
SIGNAL \i2c|u0|ACK2~1_combout\ : std_logic;
SIGNAL \i2c|u0|ACK2~2_combout\ : std_logic;
SIGNAL \i2c|u0|ACK2~q\ : std_logic;
SIGNAL \i2c|u0|ACK3~0_combout\ : std_logic;
SIGNAL \i2c|u0|ACK3~1_combout\ : std_logic;
SIGNAL \i2c|u0|ACK3~2_combout\ : std_logic;
SIGNAL \i2c|u0|ACK3~q\ : std_logic;
SIGNAL \i2c|u0|ACK1~0_combout\ : std_logic;
SIGNAL \i2c|u0|Selector4~0_combout\ : std_logic;
SIGNAL \i2c|u0|ACK1~1_combout\ : std_logic;
SIGNAL \i2c|u0|ACK1~q\ : std_logic;
SIGNAL \i2c|mSetup_ST~12_combout\ : std_logic;
SIGNAL \i2c|mSetup_ST~13_combout\ : std_logic;
SIGNAL \i2c|LUT_INDEX[4]~13\ : std_logic;
SIGNAL \i2c|LUT_INDEX[5]~14_combout\ : std_logic;
SIGNAL \i2c|LUT_INDEX[5]~11_combout\ : std_logic;
SIGNAL \i2c|LUT_INDEX[0]~16_combout\ : std_logic;
SIGNAL \i2c|LUT_INDEX[1]~5_combout\ : std_logic;
SIGNAL \i2c|LUT_INDEX[1]~6\ : std_logic;
SIGNAL \i2c|LUT_INDEX[2]~7_combout\ : std_logic;
SIGNAL \i2c|LUT_INDEX[2]~8\ : std_logic;
SIGNAL \i2c|LUT_INDEX[3]~9_combout\ : std_logic;
SIGNAL \i2c|LUT_INDEX[3]~10\ : std_logic;
SIGNAL \i2c|LUT_INDEX[4]~12_combout\ : std_logic;
SIGNAL \i2c|LessThan1~0_combout\ : std_logic;
SIGNAL \i2c|LessThan1~1_combout\ : std_logic;
SIGNAL \i2c|mSetup_ST.0010~q\ : std_logic;
SIGNAL \i2c|Selector1~0_combout\ : std_logic;
SIGNAL \i2c|mSetup_ST.0000~q\ : std_logic;
SIGNAL \i2c|Selector2~0_combout\ : std_logic;
SIGNAL \i2c|mSetup_ST.0001~q\ : std_logic;
SIGNAL \i2c|Selector0~0_combout\ : std_logic;
SIGNAL \i2c|mI2C_GO~q\ : std_logic;
SIGNAL \i2c|u0|SD_COUNTER[0]~16_combout\ : std_logic;
SIGNAL \i2c|u0|SD_COUNTER[0]~17_combout\ : std_logic;
SIGNAL \i2c|u0|SD_COUNTER[0]~7\ : std_logic;
SIGNAL \i2c|u0|SD_COUNTER[1]~8_combout\ : std_logic;
SIGNAL \i2c|u0|SD_COUNTER[1]~9\ : std_logic;
SIGNAL \i2c|u0|SD_COUNTER[2]~10_combout\ : std_logic;
SIGNAL \i2c|u0|SD_COUNTER[2]~11\ : std_logic;
SIGNAL \i2c|u0|SD_COUNTER[3]~12_combout\ : std_logic;
SIGNAL \i2c|u0|SD_COUNTER[3]~13\ : std_logic;
SIGNAL \i2c|u0|SD_COUNTER[4]~14_combout\ : std_logic;
SIGNAL \i2c|u0|SD_COUNTER[4]~15\ : std_logic;
SIGNAL \i2c|u0|SD_COUNTER[5]~18_combout\ : std_logic;
SIGNAL \i2c|u0|Mux0~3_combout\ : std_logic;
SIGNAL \i2c|mI2C_DATA[22]~1_combout\ : std_logic;
SIGNAL \i2c|mI2C_DATA[0]~0_combout\ : std_logic;
SIGNAL \i2c|mI2C_DATA[22]~2_combout\ : std_logic;
SIGNAL \i2c|u0|SD[22]~feeder_combout\ : std_logic;
SIGNAL \i2c|u0|Decoder0~0_combout\ : std_logic;
SIGNAL \i2c|u0|Decoder0~1_combout\ : std_logic;
SIGNAL \i2c|u0|Mux0~15_combout\ : std_logic;
SIGNAL \i2c|u0|Mux0~2_combout\ : std_logic;
SIGNAL \i2c|u0|Mux0~16_combout\ : std_logic;
SIGNAL \i2c|u0|Mux0~17_combout\ : std_logic;
SIGNAL \i2c|u0|Mux0~21_combout\ : std_logic;
SIGNAL \i2c|u0|Mux0~13_combout\ : std_logic;
SIGNAL \i2c|u0|Mux0~14_combout\ : std_logic;
SIGNAL \i2c|u0|Mux0~18_combout\ : std_logic;
SIGNAL \i2c|u0|Mux0~10_combout\ : std_logic;
SIGNAL \i2c|u0|Mux0~11_combout\ : std_logic;
SIGNAL \i2c|u0|Mux0~4_combout\ : std_logic;
SIGNAL \i2c|u0|Mux0~5_combout\ : std_logic;
SIGNAL \i2c|u0|Mux0~6_combout\ : std_logic;
SIGNAL \i2c|u0|Mux0~7_combout\ : std_logic;
SIGNAL \i2c|u0|Mux0~8_combout\ : std_logic;
SIGNAL \i2c|u0|Mux0~9_combout\ : std_logic;
SIGNAL \i2c|u0|Mux0~12_combout\ : std_logic;
SIGNAL \i2c|u0|Mux0~19_combout\ : std_logic;
SIGNAL \i2c|u0|Mux0~20_combout\ : std_logic;
SIGNAL \i2c|u0|SDO~q\ : std_logic;
SIGNAL \audio_clock[0]~1_combout\ : std_logic;
SIGNAL \audio_clock[1]~0_combout\ : std_logic;
SIGNAL \audio_clock[1]~feeder_combout\ : std_logic;
SIGNAL \audio_clock[1]~clkctrl_outclk\ : std_logic;
SIGNAL \V1|Add0~0_combout\ : std_logic;
SIGNAL \V1|Add0~1\ : std_logic;
SIGNAL \V1|Add0~2_combout\ : std_logic;
SIGNAL \V1|Add0~3\ : std_logic;
SIGNAL \V1|Add0~4_combout\ : std_logic;
SIGNAL \V1|Add0~5\ : std_logic;
SIGNAL \V1|Add0~6_combout\ : std_logic;
SIGNAL \V1|Equal0~0_combout\ : std_logic;
SIGNAL \V1|Add0~7\ : std_logic;
SIGNAL \V1|Add0~8_combout\ : std_logic;
SIGNAL \V1|Add0~9\ : std_logic;
SIGNAL \V1|Add0~10_combout\ : std_logic;
SIGNAL \V1|Add0~11\ : std_logic;
SIGNAL \V1|Add0~12_combout\ : std_logic;
SIGNAL \V1|lrck_divider~1_combout\ : std_logic;
SIGNAL \V1|Add0~13\ : std_logic;
SIGNAL \V1|Add0~14_combout\ : std_logic;
SIGNAL \V1|lrck_divider~0_combout\ : std_logic;
SIGNAL \V1|Equal0~1_combout\ : std_logic;
SIGNAL \V1|lrck~0_combout\ : std_logic;
SIGNAL \V1|lrck~q\ : std_logic;
SIGNAL \V1|bclk_divider~1_combout\ : std_logic;
SIGNAL \V1|bclk_divider~2_combout\ : std_logic;
SIGNAL \V1|Add1~0_combout\ : std_logic;
SIGNAL \V1|Equal0~2_combout\ : std_logic;
SIGNAL \V1|bclk_divider~0_combout\ : std_logic;
SIGNAL \V1|bclk_divider~3_combout\ : std_logic;
SIGNAL \V1|shift_out[14]~17_combout\ : std_logic;
SIGNAL \V1|bclk~0_combout\ : std_logic;
SIGNAL \V1|bclk~1_combout\ : std_logic;
SIGNAL \V1|bclk~q\ : std_logic;
SIGNAL \vgamap|videoSync|pixel_clock_int~0_combout\ : std_logic;
SIGNAL \vgamap|videoSync|pixel_clock_int~feeder_combout\ : std_logic;
SIGNAL \vgamap|videoSync|pixel_clock_int~q\ : std_logic;
SIGNAL \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~7\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~8_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~9\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~10_combout\ : std_logic;
SIGNAL \vgamap|videoSync|h_count~2_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~11\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~12_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~13\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~14_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~15\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~16_combout\ : std_logic;
SIGNAL \vgamap|videoSync|h_count~0_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~17\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~18_combout\ : std_logic;
SIGNAL \vgamap|videoSync|h_count~1_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Equal0~2_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Equal0~0_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Equal0~3_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~0_combout\ : std_logic;
SIGNAL \vgamap|videoSync|h_count~3_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~1\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~2_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~3\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~4_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~5\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~6_combout\ : std_logic;
SIGNAL \vgamap|videoSync|LessThan5~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~15_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~14_combout\ : std_logic;
SIGNAL \vgamap|videoSync|pixel_column[8]~feeder_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~13_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan12~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~16_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~11\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~12_combout\ : std_logic;
SIGNAL \vgamap|videoSync|LessThan1~1_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~0_combout\ : std_logic;
SIGNAL \vgamap|videoSync|v_count~8_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~1\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~2_combout\ : std_logic;
SIGNAL \vgamap|videoSync|v_count~9_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~3\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~4_combout\ : std_logic;
SIGNAL \vgamap|videoSync|v_count[2]~10_combout\ : std_logic;
SIGNAL \vgamap|videoSync|LessThan1~0_combout\ : std_logic;
SIGNAL \vgamap|videoSync|LessThan1~2_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Equal0~1_combout\ : std_logic;
SIGNAL \vgamap|videoSync|process_1~3_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Equal1~0_combout\ : std_logic;
SIGNAL \vgamap|videoSync|v_count[4]~0_combout\ : std_logic;
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
SIGNAL \vgamap|videoSync|v_count[5]~1_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~5\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~6_combout\ : std_logic;
SIGNAL \vgamap|videoSync|v_count[3]~11_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~7\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~8_combout\ : std_logic;
SIGNAL \vgamap|videoSync|v_count[4]~7_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~9\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~10_combout\ : std_logic;
SIGNAL \vgamap|videoSync|v_count[5]~3_combout\ : std_logic;
SIGNAL \vgamap|videoSync|LessThan6~0_combout\ : std_logic;
SIGNAL \vgamap|videoSync|LessThan6~1_combout\ : std_logic;
SIGNAL \vgamap|videoSync|LessThan6~2_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan35~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan35~1_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan65~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan36~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~12_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~115_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~22_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan6~4_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan6~5_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~23_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~24_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~25_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan5~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~19_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~20_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan44~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~116_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~21_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~57_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~54_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~56_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~51_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan22~1_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~55_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~57_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan33~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~26_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan33~2_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan33~1_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~27_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~36_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~58_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan16~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~59_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~60_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~61_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~21_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan34~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~77_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~90_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan9~1_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan9~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~96_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~97_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~98_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~119_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~78_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~88_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~120_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan22~2_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan22~3_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~99_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~100_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~47_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan24~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~83_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~80_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~81_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~79_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~82_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan22~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~85_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~84_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~86_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~87_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~23_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~44_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~89_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~91_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~94_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~93_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan30~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~92_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~95_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~24_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~68_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan37~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~67_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~69_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~70_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~63_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~64_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~65_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~17_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~62_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~66_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~72_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~73_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~71_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~74_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~75_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~76_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~58_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~25_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~109_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~108_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~110_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan10~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~102_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~103_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~101_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~104_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~105_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~106_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan14~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~107_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~111_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~112_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~26_combout\ : std_logic;
SIGNAL \keys[0]~input_o\ : std_logic;
SIGNAL \keys[2]~input_o\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~50_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~118_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~52_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~48_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~28_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~49_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~18_combout\ : std_logic;
SIGNAL \keys[7]~input_o\ : std_logic;
SIGNAL \keys[9]~input_o\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~34_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~35_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~45_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~46_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~16_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~38_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~40_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~41_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~42_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~43_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~37_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~39_combout\ : std_logic;
SIGNAL \keys[12]~input_o\ : std_logic;
SIGNAL \keys[11]~input_o\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~15_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~17_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~31_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~32_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~33_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~29_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~30_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~53_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~13_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~19_combout\ : std_logic;
SIGNAL \keys[5]~input_o\ : std_logic;
SIGNAL \keys[4]~input_o\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~11_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~12_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~14_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~20_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~27_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~18_combout\ : std_logic;
SIGNAL \synth_sel~input_o\ : std_logic;
SIGNAL \synmap|FSM_cycle:pressed~0_combout\ : std_logic;
SIGNAL \synmap|z[0]~0_combout\ : std_logic;
SIGNAL \synmap|FSM_cycle:pressed~q\ : std_logic;
SIGNAL \synmap|Mux3~0_combout\ : std_logic;
SIGNAL \synmap|Mux2~0_combout\ : std_logic;
SIGNAL \synmap|Mux1~0_combout\ : std_logic;
SIGNAL \synmap|z[0]~feeder_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~6_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~117_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~7_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~8_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~9_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~10_combout\ : std_logic;
SIGNAL \keys[14]~input_o\ : std_logic;
SIGNAL \keys[16]~input_o\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~36_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~34_combout\ : std_logic;
SIGNAL \vol_down~input_o\ : std_logic;
SIGNAL \vol_up~input_o\ : std_logic;
SIGNAL \volmap|pressed~0_combout\ : std_logic;
SIGNAL \volmap|Mux5~1_combout\ : std_logic;
SIGNAL \volmap|FSM_cycle~1_combout\ : std_logic;
SIGNAL \volmap|Mux5~2_combout\ : std_logic;
SIGNAL \volmap|Mux5~0_combout\ : std_logic;
SIGNAL \volmap|Mux5~3_combout\ : std_logic;
SIGNAL \volmap|z[2]~0_combout\ : std_logic;
SIGNAL \volmap|FSM_cycle:pressed~q\ : std_logic;
SIGNAL \volmap|FSM_cycle~0_combout\ : std_logic;
SIGNAL \volmap|Mux4~0_combout\ : std_logic;
SIGNAL \volmap|Mux4~2_combout\ : std_logic;
SIGNAL \volmap|Mux4~1_combout\ : std_logic;
SIGNAL \volmap|Mux4~3_combout\ : std_logic;
SIGNAL \volmap|Mux3~0_combout\ : std_logic;
SIGNAL \volmap|Mux3~1_combout\ : std_logic;
SIGNAL \volmap|Mux1~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan48~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~113_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~114_combout\ : std_logic;
SIGNAL \volmap|Mux2~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~31_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~32_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~33_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~22_combout\ : std_logic;
SIGNAL \oct_sel~input_o\ : std_logic;
SIGNAL \octmap|FSM_cycle:pressed~0_combout\ : std_logic;
SIGNAL \octmap|z[0]~0_combout\ : std_logic;
SIGNAL \octmap|FSM_cycle:pressed~q\ : std_logic;
SIGNAL \octmap|Mux3~0_combout\ : std_logic;
SIGNAL \octmap|Mux2~0_combout\ : std_logic;
SIGNAL \octmap|Mux1~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~28_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~29_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~30_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~35_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~37_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~38_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~43_combout\ : std_logic;
SIGNAL \keys[8]~input_o\ : std_logic;
SIGNAL \keys[10]~input_o\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~49_combout\ : std_logic;
SIGNAL \keys[3]~input_o\ : std_logic;
SIGNAL \keys[1]~input_o\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~46_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~47_combout\ : std_logic;
SIGNAL \keys[6]~input_o\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~48_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~44_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~45_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~50_combout\ : std_logic;
SIGNAL \mute_sel~input_o\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~41_combout\ : std_logic;
SIGNAL \keys[15]~input_o\ : std_logic;
SIGNAL \keys[13]~input_o\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~39_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~40_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~42_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~51_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~55_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~52_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~53_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~54_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~56_combout\ : std_logic;
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
SIGNAL \vgamap|videoSync|video_on_h~q\ : std_logic;
SIGNAL \vgamap|videoSync|video_on_v~q\ : std_logic;
SIGNAL \vgamap|videoSync|video_on~combout\ : std_logic;
SIGNAL \i2c|u0|I2C_SCLK~0_combout\ : std_logic;
SIGNAL \i2c|u0|I2C_SCLK~1_combout\ : std_logic;
SIGNAL \i2c|u0|SCLK~0_combout\ : std_logic;
SIGNAL \i2c|u0|SCLK~1_combout\ : std_logic;
SIGNAL \i2c|u0|SCLK~2_combout\ : std_logic;
SIGNAL \i2c|u0|SCLK~3_combout\ : std_logic;
SIGNAL \i2c|u0|SCLK~q\ : std_logic;
SIGNAL \i2c|u0|I2C_SCLK~2_combout\ : std_logic;
SIGNAL \V1|Add2~0_combout\ : std_logic;
SIGNAL \V1|lrck_lat~q\ : std_logic;
SIGNAL \V1|REQ_AUDIO~0_combout\ : std_logic;
SIGNAL \V1|Add2~1\ : std_logic;
SIGNAL \V1|Add2~2_combout\ : std_logic;
SIGNAL \V1|Add2~3\ : std_logic;
SIGNAL \V1|Add2~4_combout\ : std_logic;
SIGNAL \V1|Add2~5\ : std_logic;
SIGNAL \V1|Add2~6_combout\ : std_logic;
SIGNAL \V1|Add2~7\ : std_logic;
SIGNAL \V1|Add2~8_combout\ : std_logic;
SIGNAL \V1|sin_counter~1_combout\ : std_logic;
SIGNAL \V1|Add2~9\ : std_logic;
SIGNAL \V1|Add2~10_combout\ : std_logic;
SIGNAL \V1|sin_counter~0_combout\ : std_logic;
SIGNAL \V1|Equal3~0_combout\ : std_logic;
SIGNAL \V1|Mux9~2_combout\ : std_logic;
SIGNAL \V1|Mux9~1_combout\ : std_logic;
SIGNAL \V1|shift_out~38_combout\ : std_logic;
SIGNAL \V1|Mux10~2_combout\ : std_logic;
SIGNAL \V1|Mux10~1_combout\ : std_logic;
SIGNAL \V1|shift_out~41_combout\ : std_logic;
SIGNAL \V1|shift_out~43_combout\ : std_logic;
SIGNAL \V1|shift_out~44_combout\ : std_logic;
SIGNAL \V1|shift_out~46_combout\ : std_logic;
SIGNAL \V1|Mux15~4_combout\ : std_logic;
SIGNAL \V1|Mux15~0_combout\ : std_logic;
SIGNAL \V1|Mux15~1_combout\ : std_logic;
SIGNAL \V1|Mux15~2_combout\ : std_logic;
SIGNAL \V1|Mux15~3_combout\ : std_logic;
SIGNAL \V1|Mux15~5_combout\ : std_logic;
SIGNAL \V1|shift_out~51_combout\ : std_logic;
SIGNAL \V1|Mux14~2_combout\ : std_logic;
SIGNAL \V1|Mux14~1_combout\ : std_logic;
SIGNAL \V1|shift_out~49_combout\ : std_logic;
SIGNAL \V1|Mux14~0_combout\ : std_logic;
SIGNAL \V1|shift_out~48_combout\ : std_logic;
SIGNAL \V1|shift_out~50_combout\ : std_logic;
SIGNAL \V1|Mux13~4_combout\ : std_logic;
SIGNAL \V1|Mux13~1_combout\ : std_logic;
SIGNAL \V1|Mux13~2_combout\ : std_logic;
SIGNAL \V1|Mux13~3_combout\ : std_logic;
SIGNAL \V1|Mux13~0_combout\ : std_logic;
SIGNAL \V1|Mux13~5_combout\ : std_logic;
SIGNAL \V1|shift_out~59_combout\ : std_logic;
SIGNAL \V1|Mux12~0_combout\ : std_logic;
SIGNAL \V1|Mux12~4_combout\ : std_logic;
SIGNAL \V1|Mux12~2_combout\ : std_logic;
SIGNAL \V1|Mux12~1_combout\ : std_logic;
SIGNAL \V1|Mux12~3_combout\ : std_logic;
SIGNAL \V1|Mux12~5_combout\ : std_logic;
SIGNAL \V1|shift_out~58_combout\ : std_logic;
SIGNAL \V1|shift_out~57_combout\ : std_logic;
SIGNAL \V1|shift_out~45_combout\ : std_logic;
SIGNAL \V1|shift_out~47_combout\ : std_logic;
SIGNAL \V1|Mux10~0_combout\ : std_logic;
SIGNAL \V1|shift_out~40_combout\ : std_logic;
SIGNAL \V1|shift_out~42_combout\ : std_logic;
SIGNAL \V1|Mux9~0_combout\ : std_logic;
SIGNAL \V1|shift_out~37_combout\ : std_logic;
SIGNAL \V1|shift_out~39_combout\ : std_logic;
SIGNAL \V1|Mux8~1_combout\ : std_logic;
SIGNAL \V1|Mux8~2_combout\ : std_logic;
SIGNAL \V1|shift_out~35_combout\ : std_logic;
SIGNAL \V1|Mux8~0_combout\ : std_logic;
SIGNAL \V1|shift_out~34_combout\ : std_logic;
SIGNAL \V1|shift_out~36_combout\ : std_logic;
SIGNAL \V1|Mux7~2_combout\ : std_logic;
SIGNAL \V1|Mux7~0_combout\ : std_logic;
SIGNAL \V1|Mux7~1_combout\ : std_logic;
SIGNAL \V1|shift_out~32_combout\ : std_logic;
SIGNAL \V1|shift_out~33_combout\ : std_logic;
SIGNAL \V1|shift_out~56_combout\ : std_logic;
SIGNAL \V1|shift_out~60_combout\ : std_logic;
SIGNAL \V1|shift_out~61_combout\ : std_logic;
SIGNAL \V1|Mux6~0_combout\ : std_logic;
SIGNAL \V1|shift_out~30_combout\ : std_logic;
SIGNAL \V1|shift_out~31_combout\ : std_logic;
SIGNAL \V1|Mux5~2_combout\ : std_logic;
SIGNAL \V1|Mux5~1_combout\ : std_logic;
SIGNAL \V1|Mux5~0_combout\ : std_logic;
SIGNAL \V1|shift_out~28_combout\ : std_logic;
SIGNAL \V1|shift_out~29_combout\ : std_logic;
SIGNAL \V1|shift_out~55_combout\ : std_logic;
SIGNAL \V1|Mux4~2_combout\ : std_logic;
SIGNAL \V1|Mux4~1_combout\ : std_logic;
SIGNAL \V1|shift_out~26_combout\ : std_logic;
SIGNAL \V1|Mux4~0_combout\ : std_logic;
SIGNAL \V1|shift_out~25_combout\ : std_logic;
SIGNAL \V1|shift_out~27_combout\ : std_logic;
SIGNAL \V1|Mux3~2_combout\ : std_logic;
SIGNAL \V1|Mux3~1_combout\ : std_logic;
SIGNAL \V1|Mux3~0_combout\ : std_logic;
SIGNAL \V1|shift_out~23_combout\ : std_logic;
SIGNAL \V1|shift_out~24_combout\ : std_logic;
SIGNAL \V1|shift_out~54_combout\ : std_logic;
SIGNAL \V1|shift_out~21_combout\ : std_logic;
SIGNAL \V1|shift_out~20_combout\ : std_logic;
SIGNAL \V1|shift_out~22_combout\ : std_logic;
SIGNAL \V1|shift_out~53_combout\ : std_logic;
SIGNAL \V1|Mux1~0_combout\ : std_logic;
SIGNAL \V1|Mux1~1_combout\ : std_logic;
SIGNAL \V1|shift_out~18_combout\ : std_logic;
SIGNAL \V1|shift_out~19_combout\ : std_logic;
SIGNAL \V1|Mux0~0_combout\ : std_logic;
SIGNAL \V1|shift_out~16_combout\ : std_logic;
SIGNAL \V1|shift_out~52_combout\ : std_logic;
SIGNAL \vgamap|videoSync|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \i2c|LUT_INDEX\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\ : std_logic_vector(29 DOWNTO 0);
SIGNAL \i2c|u0|SD_COUNTER\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \V1|shift_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i2c|mI2C_CLK_DIV\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i2c|u0|SD\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \vgamap|videoGen|colorAddress\ : std_logic_vector(2 DOWNTO 0);
SIGNAL audio_clock : std_logic_vector(1 DOWNTO 0);
SIGNAL \vgamap|videoSync|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \V1|sin_counter\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \V1|lrck_divider\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \V1|bclk_divider\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vgamap|videoSync|pixel_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vgamap|videoSync|pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \synmap|z\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \octmap|z\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \volmap|z\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \synmap|current\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \octmap|current\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \volmap|current\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \i2c|mI2C_DATA\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \i2c|ALT_INV_mI2C_GO~q\ : std_logic;

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
I2C_SDAT <= ww_I2C_SDAT;
I2C_SCLK <= ww_I2C_SCLK;
AUD_ADCLRCK <= ww_AUD_ADCLRCK;
ww_AUD_ADCDAT <= AUD_ADCDAT;
AUD_DACLRCK <= ww_AUD_DACLRCK;
AUD_DACDAT <= ww_AUD_DACDAT;
AUD_BCLK <= ww_AUD_BCLK;
AUD_XCK <= ww_AUD_XCK;
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

\i2c|Ram0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\i2c|LUT_INDEX\(5) & \i2c|LUT_INDEX\(4) & \i2c|LUT_INDEX\(3) & \i2c|LUT_INDEX\(2) & \i2c|LUT_INDEX\(1) & \i2c|LUT_INDEX\(0));

\i2c|u0|SD\(0) <= \i2c|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\i2c|u0|SD\(1) <= \i2c|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\i2c|u0|SD\(2) <= \i2c|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\i2c|u0|SD\(3) <= \i2c|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\i2c|u0|SD\(4) <= \i2c|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\i2c|u0|SD\(5) <= \i2c|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\i2c|u0|SD\(6) <= \i2c|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\i2c|u0|SD\(7) <= \i2c|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\i2c|u0|SD\(8) <= \i2c|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\i2c|u0|SD\(9) <= \i2c|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\i2c|u0|SD\(10) <= \i2c|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\i2c|u0|SD\(11) <= \i2c|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\i2c|u0|SD\(12) <= \i2c|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\i2c|u0|SD\(13) <= \i2c|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\i2c|u0|SD\(14) <= \i2c|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\i2c|u0|SD\(15) <= \i2c|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\vgamap|videoSync|pixel_clock_int~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \vgamap|videoSync|pixel_clock_int~q\);

\audio_clock[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & audio_clock(1));

\i2c|mI2C_CTRL_CLK~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i2c|mI2C_CTRL_CLK~q\);
\i2c|ALT_INV_mI2C_GO~q\ <= NOT \i2c|mI2C_GO~q\;

-- Location: IOOBUF_X18_Y73_N23
\I2C_SDAT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \i2c|u0|SDO~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \I2C_SDAT~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\AUD_ADCLRCK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V1|lrck~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \AUD_ADCLRCK~output_o\);

-- Location: IOOBUF_X0_Y66_N16
\AUD_DACLRCK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V1|lrck~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \AUD_DACLRCK~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\AUD_BCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V1|bclk~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \AUD_BCLK~output_o\);

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

-- Location: IOOBUF_X67_Y73_N9
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

-- Location: IOOBUF_X65_Y73_N9
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

-- Location: IOOBUF_X67_Y73_N23
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

-- Location: IOOBUF_X67_Y73_N16
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

-- Location: IOOBUF_X65_Y73_N16
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

-- Location: IOOBUF_X65_Y73_N23
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

-- Location: IOOBUF_X29_Y73_N9
\I2C_SCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2c|u0|I2C_SCLK~2_combout\,
	devoe => ww_devoe,
	o => \I2C_SCLK~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\AUD_DACDAT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V1|shift_out\(15),
	devoe => ww_devoe,
	o => \AUD_DACDAT~output_o\);

-- Location: IOOBUF_X0_Y61_N23
\AUD_XCK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => audio_clock(1),
	devoe => ww_devoe,
	o => \AUD_XCK~output_o\);

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

-- Location: LCCOMB_X32_Y49_N0
\i2c|mI2C_CLK_DIV[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|mI2C_CLK_DIV[0]~16_combout\ = \i2c|mI2C_CLK_DIV\(0) $ (VCC)
-- \i2c|mI2C_CLK_DIV[0]~17\ = CARRY(\i2c|mI2C_CLK_DIV\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c|mI2C_CLK_DIV\(0),
	datad => VCC,
	combout => \i2c|mI2C_CLK_DIV[0]~16_combout\,
	cout => \i2c|mI2C_CLK_DIV[0]~17\);

-- Location: FF_X32_Y49_N1
\i2c|mI2C_CLK_DIV[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c|mI2C_CLK_DIV[0]~16_combout\,
	sclr => \i2c|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|mI2C_CLK_DIV\(0));

-- Location: LCCOMB_X32_Y49_N2
\i2c|mI2C_CLK_DIV[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|mI2C_CLK_DIV[1]~18_combout\ = (\i2c|mI2C_CLK_DIV\(1) & (!\i2c|mI2C_CLK_DIV[0]~17\)) # (!\i2c|mI2C_CLK_DIV\(1) & ((\i2c|mI2C_CLK_DIV[0]~17\) # (GND)))
-- \i2c|mI2C_CLK_DIV[1]~19\ = CARRY((!\i2c|mI2C_CLK_DIV[0]~17\) # (!\i2c|mI2C_CLK_DIV\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c|mI2C_CLK_DIV\(1),
	datad => VCC,
	cin => \i2c|mI2C_CLK_DIV[0]~17\,
	combout => \i2c|mI2C_CLK_DIV[1]~18_combout\,
	cout => \i2c|mI2C_CLK_DIV[1]~19\);

-- Location: FF_X32_Y49_N3
\i2c|mI2C_CLK_DIV[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c|mI2C_CLK_DIV[1]~18_combout\,
	sclr => \i2c|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|mI2C_CLK_DIV\(1));

-- Location: LCCOMB_X32_Y49_N4
\i2c|mI2C_CLK_DIV[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|mI2C_CLK_DIV[2]~20_combout\ = (\i2c|mI2C_CLK_DIV\(2) & (\i2c|mI2C_CLK_DIV[1]~19\ $ (GND))) # (!\i2c|mI2C_CLK_DIV\(2) & (!\i2c|mI2C_CLK_DIV[1]~19\ & VCC))
-- \i2c|mI2C_CLK_DIV[2]~21\ = CARRY((\i2c|mI2C_CLK_DIV\(2) & !\i2c|mI2C_CLK_DIV[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c|mI2C_CLK_DIV\(2),
	datad => VCC,
	cin => \i2c|mI2C_CLK_DIV[1]~19\,
	combout => \i2c|mI2C_CLK_DIV[2]~20_combout\,
	cout => \i2c|mI2C_CLK_DIV[2]~21\);

-- Location: FF_X32_Y49_N5
\i2c|mI2C_CLK_DIV[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c|mI2C_CLK_DIV[2]~20_combout\,
	sclr => \i2c|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|mI2C_CLK_DIV\(2));

-- Location: LCCOMB_X32_Y49_N6
\i2c|mI2C_CLK_DIV[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|mI2C_CLK_DIV[3]~22_combout\ = (\i2c|mI2C_CLK_DIV\(3) & (!\i2c|mI2C_CLK_DIV[2]~21\)) # (!\i2c|mI2C_CLK_DIV\(3) & ((\i2c|mI2C_CLK_DIV[2]~21\) # (GND)))
-- \i2c|mI2C_CLK_DIV[3]~23\ = CARRY((!\i2c|mI2C_CLK_DIV[2]~21\) # (!\i2c|mI2C_CLK_DIV\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|mI2C_CLK_DIV\(3),
	datad => VCC,
	cin => \i2c|mI2C_CLK_DIV[2]~21\,
	combout => \i2c|mI2C_CLK_DIV[3]~22_combout\,
	cout => \i2c|mI2C_CLK_DIV[3]~23\);

-- Location: FF_X32_Y49_N7
\i2c|mI2C_CLK_DIV[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c|mI2C_CLK_DIV[3]~22_combout\,
	sclr => \i2c|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|mI2C_CLK_DIV\(3));

-- Location: LCCOMB_X32_Y49_N8
\i2c|mI2C_CLK_DIV[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|mI2C_CLK_DIV[4]~24_combout\ = (\i2c|mI2C_CLK_DIV\(4) & (\i2c|mI2C_CLK_DIV[3]~23\ $ (GND))) # (!\i2c|mI2C_CLK_DIV\(4) & (!\i2c|mI2C_CLK_DIV[3]~23\ & VCC))
-- \i2c|mI2C_CLK_DIV[4]~25\ = CARRY((\i2c|mI2C_CLK_DIV\(4) & !\i2c|mI2C_CLK_DIV[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c|mI2C_CLK_DIV\(4),
	datad => VCC,
	cin => \i2c|mI2C_CLK_DIV[3]~23\,
	combout => \i2c|mI2C_CLK_DIV[4]~24_combout\,
	cout => \i2c|mI2C_CLK_DIV[4]~25\);

-- Location: FF_X32_Y49_N9
\i2c|mI2C_CLK_DIV[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c|mI2C_CLK_DIV[4]~24_combout\,
	sclr => \i2c|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|mI2C_CLK_DIV\(4));

-- Location: LCCOMB_X32_Y49_N10
\i2c|mI2C_CLK_DIV[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|mI2C_CLK_DIV[5]~26_combout\ = (\i2c|mI2C_CLK_DIV\(5) & (!\i2c|mI2C_CLK_DIV[4]~25\)) # (!\i2c|mI2C_CLK_DIV\(5) & ((\i2c|mI2C_CLK_DIV[4]~25\) # (GND)))
-- \i2c|mI2C_CLK_DIV[5]~27\ = CARRY((!\i2c|mI2C_CLK_DIV[4]~25\) # (!\i2c|mI2C_CLK_DIV\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|mI2C_CLK_DIV\(5),
	datad => VCC,
	cin => \i2c|mI2C_CLK_DIV[4]~25\,
	combout => \i2c|mI2C_CLK_DIV[5]~26_combout\,
	cout => \i2c|mI2C_CLK_DIV[5]~27\);

-- Location: FF_X32_Y49_N11
\i2c|mI2C_CLK_DIV[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c|mI2C_CLK_DIV[5]~26_combout\,
	sclr => \i2c|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|mI2C_CLK_DIV\(5));

-- Location: LCCOMB_X32_Y49_N12
\i2c|mI2C_CLK_DIV[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|mI2C_CLK_DIV[6]~28_combout\ = (\i2c|mI2C_CLK_DIV\(6) & (\i2c|mI2C_CLK_DIV[5]~27\ $ (GND))) # (!\i2c|mI2C_CLK_DIV\(6) & (!\i2c|mI2C_CLK_DIV[5]~27\ & VCC))
-- \i2c|mI2C_CLK_DIV[6]~29\ = CARRY((\i2c|mI2C_CLK_DIV\(6) & !\i2c|mI2C_CLK_DIV[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|mI2C_CLK_DIV\(6),
	datad => VCC,
	cin => \i2c|mI2C_CLK_DIV[5]~27\,
	combout => \i2c|mI2C_CLK_DIV[6]~28_combout\,
	cout => \i2c|mI2C_CLK_DIV[6]~29\);

-- Location: FF_X32_Y49_N13
\i2c|mI2C_CLK_DIV[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c|mI2C_CLK_DIV[6]~28_combout\,
	sclr => \i2c|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|mI2C_CLK_DIV\(6));

-- Location: LCCOMB_X32_Y49_N14
\i2c|mI2C_CLK_DIV[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|mI2C_CLK_DIV[7]~30_combout\ = (\i2c|mI2C_CLK_DIV\(7) & (!\i2c|mI2C_CLK_DIV[6]~29\)) # (!\i2c|mI2C_CLK_DIV\(7) & ((\i2c|mI2C_CLK_DIV[6]~29\) # (GND)))
-- \i2c|mI2C_CLK_DIV[7]~31\ = CARRY((!\i2c|mI2C_CLK_DIV[6]~29\) # (!\i2c|mI2C_CLK_DIV\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c|mI2C_CLK_DIV\(7),
	datad => VCC,
	cin => \i2c|mI2C_CLK_DIV[6]~29\,
	combout => \i2c|mI2C_CLK_DIV[7]~30_combout\,
	cout => \i2c|mI2C_CLK_DIV[7]~31\);

-- Location: FF_X32_Y49_N15
\i2c|mI2C_CLK_DIV[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c|mI2C_CLK_DIV[7]~30_combout\,
	sclr => \i2c|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|mI2C_CLK_DIV\(7));

-- Location: LCCOMB_X32_Y49_N16
\i2c|mI2C_CLK_DIV[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|mI2C_CLK_DIV[8]~32_combout\ = (\i2c|mI2C_CLK_DIV\(8) & (\i2c|mI2C_CLK_DIV[7]~31\ $ (GND))) # (!\i2c|mI2C_CLK_DIV\(8) & (!\i2c|mI2C_CLK_DIV[7]~31\ & VCC))
-- \i2c|mI2C_CLK_DIV[8]~33\ = CARRY((\i2c|mI2C_CLK_DIV\(8) & !\i2c|mI2C_CLK_DIV[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c|mI2C_CLK_DIV\(8),
	datad => VCC,
	cin => \i2c|mI2C_CLK_DIV[7]~31\,
	combout => \i2c|mI2C_CLK_DIV[8]~32_combout\,
	cout => \i2c|mI2C_CLK_DIV[8]~33\);

-- Location: FF_X32_Y49_N17
\i2c|mI2C_CLK_DIV[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c|mI2C_CLK_DIV[8]~32_combout\,
	sclr => \i2c|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|mI2C_CLK_DIV\(8));

-- Location: LCCOMB_X32_Y49_N18
\i2c|mI2C_CLK_DIV[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|mI2C_CLK_DIV[9]~34_combout\ = (\i2c|mI2C_CLK_DIV\(9) & (!\i2c|mI2C_CLK_DIV[8]~33\)) # (!\i2c|mI2C_CLK_DIV\(9) & ((\i2c|mI2C_CLK_DIV[8]~33\) # (GND)))
-- \i2c|mI2C_CLK_DIV[9]~35\ = CARRY((!\i2c|mI2C_CLK_DIV[8]~33\) # (!\i2c|mI2C_CLK_DIV\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c|mI2C_CLK_DIV\(9),
	datad => VCC,
	cin => \i2c|mI2C_CLK_DIV[8]~33\,
	combout => \i2c|mI2C_CLK_DIV[9]~34_combout\,
	cout => \i2c|mI2C_CLK_DIV[9]~35\);

-- Location: FF_X32_Y49_N19
\i2c|mI2C_CLK_DIV[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c|mI2C_CLK_DIV[9]~34_combout\,
	sclr => \i2c|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|mI2C_CLK_DIV\(9));

-- Location: LCCOMB_X32_Y49_N20
\i2c|mI2C_CLK_DIV[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|mI2C_CLK_DIV[10]~36_combout\ = (\i2c|mI2C_CLK_DIV\(10) & (\i2c|mI2C_CLK_DIV[9]~35\ $ (GND))) # (!\i2c|mI2C_CLK_DIV\(10) & (!\i2c|mI2C_CLK_DIV[9]~35\ & VCC))
-- \i2c|mI2C_CLK_DIV[10]~37\ = CARRY((\i2c|mI2C_CLK_DIV\(10) & !\i2c|mI2C_CLK_DIV[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c|mI2C_CLK_DIV\(10),
	datad => VCC,
	cin => \i2c|mI2C_CLK_DIV[9]~35\,
	combout => \i2c|mI2C_CLK_DIV[10]~36_combout\,
	cout => \i2c|mI2C_CLK_DIV[10]~37\);

-- Location: FF_X32_Y49_N21
\i2c|mI2C_CLK_DIV[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c|mI2C_CLK_DIV[10]~36_combout\,
	sclr => \i2c|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|mI2C_CLK_DIV\(10));

-- Location: LCCOMB_X32_Y49_N22
\i2c|mI2C_CLK_DIV[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|mI2C_CLK_DIV[11]~38_combout\ = (\i2c|mI2C_CLK_DIV\(11) & (!\i2c|mI2C_CLK_DIV[10]~37\)) # (!\i2c|mI2C_CLK_DIV\(11) & ((\i2c|mI2C_CLK_DIV[10]~37\) # (GND)))
-- \i2c|mI2C_CLK_DIV[11]~39\ = CARRY((!\i2c|mI2C_CLK_DIV[10]~37\) # (!\i2c|mI2C_CLK_DIV\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|mI2C_CLK_DIV\(11),
	datad => VCC,
	cin => \i2c|mI2C_CLK_DIV[10]~37\,
	combout => \i2c|mI2C_CLK_DIV[11]~38_combout\,
	cout => \i2c|mI2C_CLK_DIV[11]~39\);

-- Location: FF_X32_Y49_N23
\i2c|mI2C_CLK_DIV[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c|mI2C_CLK_DIV[11]~38_combout\,
	sclr => \i2c|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|mI2C_CLK_DIV\(11));

-- Location: LCCOMB_X32_Y49_N24
\i2c|mI2C_CLK_DIV[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|mI2C_CLK_DIV[12]~40_combout\ = (\i2c|mI2C_CLK_DIV\(12) & (\i2c|mI2C_CLK_DIV[11]~39\ $ (GND))) # (!\i2c|mI2C_CLK_DIV\(12) & (!\i2c|mI2C_CLK_DIV[11]~39\ & VCC))
-- \i2c|mI2C_CLK_DIV[12]~41\ = CARRY((\i2c|mI2C_CLK_DIV\(12) & !\i2c|mI2C_CLK_DIV[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c|mI2C_CLK_DIV\(12),
	datad => VCC,
	cin => \i2c|mI2C_CLK_DIV[11]~39\,
	combout => \i2c|mI2C_CLK_DIV[12]~40_combout\,
	cout => \i2c|mI2C_CLK_DIV[12]~41\);

-- Location: FF_X32_Y49_N25
\i2c|mI2C_CLK_DIV[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c|mI2C_CLK_DIV[12]~40_combout\,
	sclr => \i2c|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|mI2C_CLK_DIV\(12));

-- Location: LCCOMB_X32_Y49_N26
\i2c|mI2C_CLK_DIV[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|mI2C_CLK_DIV[13]~42_combout\ = (\i2c|mI2C_CLK_DIV\(13) & (!\i2c|mI2C_CLK_DIV[12]~41\)) # (!\i2c|mI2C_CLK_DIV\(13) & ((\i2c|mI2C_CLK_DIV[12]~41\) # (GND)))
-- \i2c|mI2C_CLK_DIV[13]~43\ = CARRY((!\i2c|mI2C_CLK_DIV[12]~41\) # (!\i2c|mI2C_CLK_DIV\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|mI2C_CLK_DIV\(13),
	datad => VCC,
	cin => \i2c|mI2C_CLK_DIV[12]~41\,
	combout => \i2c|mI2C_CLK_DIV[13]~42_combout\,
	cout => \i2c|mI2C_CLK_DIV[13]~43\);

-- Location: FF_X32_Y49_N27
\i2c|mI2C_CLK_DIV[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c|mI2C_CLK_DIV[13]~42_combout\,
	sclr => \i2c|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|mI2C_CLK_DIV\(13));

-- Location: LCCOMB_X32_Y49_N28
\i2c|mI2C_CLK_DIV[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|mI2C_CLK_DIV[14]~44_combout\ = (\i2c|mI2C_CLK_DIV\(14) & (\i2c|mI2C_CLK_DIV[13]~43\ $ (GND))) # (!\i2c|mI2C_CLK_DIV\(14) & (!\i2c|mI2C_CLK_DIV[13]~43\ & VCC))
-- \i2c|mI2C_CLK_DIV[14]~45\ = CARRY((\i2c|mI2C_CLK_DIV\(14) & !\i2c|mI2C_CLK_DIV[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c|mI2C_CLK_DIV\(14),
	datad => VCC,
	cin => \i2c|mI2C_CLK_DIV[13]~43\,
	combout => \i2c|mI2C_CLK_DIV[14]~44_combout\,
	cout => \i2c|mI2C_CLK_DIV[14]~45\);

-- Location: FF_X32_Y49_N29
\i2c|mI2C_CLK_DIV[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c|mI2C_CLK_DIV[14]~44_combout\,
	sclr => \i2c|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|mI2C_CLK_DIV\(14));

-- Location: LCCOMB_X32_Y49_N30
\i2c|mI2C_CLK_DIV[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|mI2C_CLK_DIV[15]~46_combout\ = \i2c|mI2C_CLK_DIV\(15) $ (\i2c|mI2C_CLK_DIV[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|mI2C_CLK_DIV\(15),
	cin => \i2c|mI2C_CLK_DIV[14]~45\,
	combout => \i2c|mI2C_CLK_DIV[15]~46_combout\);

-- Location: FF_X32_Y49_N31
\i2c|mI2C_CLK_DIV[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c|mI2C_CLK_DIV[15]~46_combout\,
	sclr => \i2c|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|mI2C_CLK_DIV\(15));

-- Location: LCCOMB_X33_Y49_N2
\i2c|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|LessThan0~0_combout\ = (!\i2c|mI2C_CLK_DIV\(14) & (!\i2c|mI2C_CLK_DIV\(15) & (!\i2c|mI2C_CLK_DIV\(13) & !\i2c|mI2C_CLK_DIV\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|mI2C_CLK_DIV\(14),
	datab => \i2c|mI2C_CLK_DIV\(15),
	datac => \i2c|mI2C_CLK_DIV\(13),
	datad => \i2c|mI2C_CLK_DIV\(12),
	combout => \i2c|LessThan0~0_combout\);

-- Location: LCCOMB_X33_Y49_N14
\i2c|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|LessThan0~3_combout\ = (!\i2c|mI2C_CLK_DIV\(9) & !\i2c|mI2C_CLK_DIV\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c|mI2C_CLK_DIV\(9),
	datad => \i2c|mI2C_CLK_DIV\(10),
	combout => \i2c|LessThan0~3_combout\);

-- Location: LCCOMB_X33_Y49_N10
\i2c|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|LessThan0~1_combout\ = (!\i2c|mI2C_CLK_DIV\(5) & (!\i2c|mI2C_CLK_DIV\(3) & (!\i2c|mI2C_CLK_DIV\(2) & !\i2c|mI2C_CLK_DIV\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|mI2C_CLK_DIV\(5),
	datab => \i2c|mI2C_CLK_DIV\(3),
	datac => \i2c|mI2C_CLK_DIV\(2),
	datad => \i2c|mI2C_CLK_DIV\(4),
	combout => \i2c|LessThan0~1_combout\);

-- Location: LCCOMB_X33_Y49_N12
\i2c|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|LessThan0~2_combout\ = (((\i2c|LessThan0~1_combout\) # (!\i2c|mI2C_CLK_DIV\(8))) # (!\i2c|mI2C_CLK_DIV\(6))) # (!\i2c|mI2C_CLK_DIV\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|mI2C_CLK_DIV\(7),
	datab => \i2c|mI2C_CLK_DIV\(6),
	datac => \i2c|mI2C_CLK_DIV\(8),
	datad => \i2c|LessThan0~1_combout\,
	combout => \i2c|LessThan0~2_combout\);

-- Location: LCCOMB_X33_Y49_N0
\i2c|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|LessThan0~4_combout\ = ((\i2c|mI2C_CLK_DIV\(11) & ((!\i2c|LessThan0~2_combout\) # (!\i2c|LessThan0~3_combout\)))) # (!\i2c|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|mI2C_CLK_DIV\(11),
	datab => \i2c|LessThan0~0_combout\,
	datac => \i2c|LessThan0~3_combout\,
	datad => \i2c|LessThan0~2_combout\,
	combout => \i2c|LessThan0~4_combout\);

-- Location: LCCOMB_X33_Y49_N4
\i2c|mI2C_CTRL_CLK~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|mI2C_CTRL_CLK~0_combout\ = \i2c|mI2C_CTRL_CLK~q\ $ (\i2c|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|mI2C_CTRL_CLK~q\,
	datad => \i2c|LessThan0~4_combout\,
	combout => \i2c|mI2C_CTRL_CLK~0_combout\);

-- Location: LCCOMB_X33_Y49_N24
\i2c|mI2C_CTRL_CLK~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|mI2C_CTRL_CLK~feeder_combout\ = \i2c|mI2C_CTRL_CLK~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c|mI2C_CTRL_CLK~0_combout\,
	combout => \i2c|mI2C_CTRL_CLK~feeder_combout\);

-- Location: FF_X33_Y49_N25
\i2c|mI2C_CTRL_CLK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c|mI2C_CTRL_CLK~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|mI2C_CTRL_CLK~q\);

-- Location: CLKCTRL_G2
\i2c|mI2C_CTRL_CLK~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i2c|mI2C_CTRL_CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i2c|mI2C_CTRL_CLK~clkctrl_outclk\);

-- Location: LCCOMB_X36_Y49_N10
\i2c|u0|SD_COUNTER[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|SD_COUNTER[0]~6_combout\ = \i2c|u0|SD_COUNTER\(0) $ (VCC)
-- \i2c|u0|SD_COUNTER[0]~7\ = CARRY(\i2c|u0|SD_COUNTER\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|SD_COUNTER\(0),
	datad => VCC,
	combout => \i2c|u0|SD_COUNTER[0]~6_combout\,
	cout => \i2c|u0|SD_COUNTER[0]~7\);

-- Location: LCCOMB_X33_Y49_N26
\i2c|u0|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|Selector1~0_combout\ = (\i2c|u0|SD_COUNTER\(3)) # (\i2c|u0|SD_COUNTER\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c|u0|SD_COUNTER\(3),
	datad => \i2c|u0|SD_COUNTER\(4),
	combout => \i2c|u0|Selector1~0_combout\);

-- Location: LCCOMB_X33_Y49_N16
\i2c|u0|END~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|END~0_combout\ = (!\i2c|u0|Selector1~0_combout\ & (!\i2c|u0|SD_COUNTER\(0) & (!\i2c|u0|SD_COUNTER\(2) & !\i2c|u0|SD_COUNTER\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|Selector1~0_combout\,
	datab => \i2c|u0|SD_COUNTER\(0),
	datac => \i2c|u0|SD_COUNTER\(2),
	datad => \i2c|u0|SD_COUNTER\(1),
	combout => \i2c|u0|END~0_combout\);

-- Location: LCCOMB_X33_Y49_N6
\i2c|u0|END~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|END~1_combout\ = (\i2c|u0|END~0_combout\ & (\i2c|u0|SD_COUNTER\(5))) # (!\i2c|u0|END~0_combout\ & ((\i2c|u0|END~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|SD_COUNTER\(5),
	datac => \i2c|u0|END~q\,
	datad => \i2c|u0|END~0_combout\,
	combout => \i2c|u0|END~1_combout\);

-- Location: FF_X33_Y49_N7
\i2c|u0|END\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \i2c|u0|END~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|u0|END~q\);

-- Location: IOIBUF_X18_Y73_N22
\I2C_SDAT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I2C_SDAT,
	o => \I2C_SDAT~input_o\);

-- Location: LCCOMB_X34_Y49_N28
\i2c|u0|ACK2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|ACK2~0_combout\ = (\i2c|u0|SD_COUNTER\(1)) # ((\i2c|u0|SD_COUNTER\(5)) # (\i2c|u0|SD_COUNTER\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c|u0|SD_COUNTER\(1),
	datac => \i2c|u0|SD_COUNTER\(5),
	datad => \i2c|u0|SD_COUNTER\(3),
	combout => \i2c|u0|ACK2~0_combout\);

-- Location: LCCOMB_X34_Y49_N10
\i2c|u0|ACK2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|ACK2~1_combout\ = (\i2c|u0|SD_COUNTER\(4) & (!\i2c|u0|ACK2~0_combout\ & (\i2c|u0|SD_COUNTER\(2) & \i2c|u0|SD_COUNTER\(0)))) # (!\i2c|u0|SD_COUNTER\(4) & ((\i2c|u0|ACK2~0_combout\) # ((\i2c|u0|SD_COUNTER\(2)) # (\i2c|u0|SD_COUNTER\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|SD_COUNTER\(4),
	datab => \i2c|u0|ACK2~0_combout\,
	datac => \i2c|u0|SD_COUNTER\(2),
	datad => \i2c|u0|SD_COUNTER\(0),
	combout => \i2c|u0|ACK2~1_combout\);

-- Location: LCCOMB_X34_Y49_N12
\i2c|u0|ACK2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|ACK2~2_combout\ = (\i2c|u0|SD_COUNTER\(4) & ((\i2c|u0|ACK2~1_combout\ & (\I2C_SDAT~input_o\)) # (!\i2c|u0|ACK2~1_combout\ & ((\i2c|u0|ACK2~q\))))) # (!\i2c|u0|SD_COUNTER\(4) & (((\i2c|u0|ACK2~q\ & \i2c|u0|ACK2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|SD_COUNTER\(4),
	datab => \I2C_SDAT~input_o\,
	datac => \i2c|u0|ACK2~q\,
	datad => \i2c|u0|ACK2~1_combout\,
	combout => \i2c|u0|ACK2~2_combout\);

-- Location: FF_X34_Y49_N13
\i2c|u0|ACK2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \i2c|u0|ACK2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|u0|ACK2~q\);

-- Location: LCCOMB_X34_Y49_N24
\i2c|u0|ACK3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|ACK3~0_combout\ = (\i2c|u0|SD_COUNTER\(5) & (!\i2c|u0|SD_COUNTER\(2))) # (!\i2c|u0|SD_COUNTER\(5) & ((\i2c|u0|SD_COUNTER\(0) & (!\i2c|u0|SD_COUNTER\(2))) # (!\i2c|u0|SD_COUNTER\(0) & ((\i2c|u0|SD_COUNTER\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|SD_COUNTER\(2),
	datab => \i2c|u0|SD_COUNTER\(1),
	datac => \i2c|u0|SD_COUNTER\(5),
	datad => \i2c|u0|SD_COUNTER\(0),
	combout => \i2c|u0|ACK3~0_combout\);

-- Location: LCCOMB_X34_Y49_N14
\i2c|u0|ACK3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|ACK3~1_combout\ = (\i2c|u0|SD_COUNTER\(4) & (\i2c|u0|SD_COUNTER\(2) & (\i2c|u0|SD_COUNTER\(3) & \i2c|u0|ACK3~0_combout\))) # (!\i2c|u0|SD_COUNTER\(4) & ((\i2c|u0|SD_COUNTER\(2)) # ((\i2c|u0|SD_COUNTER\(3)) # (\i2c|u0|ACK3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|SD_COUNTER\(4),
	datab => \i2c|u0|SD_COUNTER\(2),
	datac => \i2c|u0|SD_COUNTER\(3),
	datad => \i2c|u0|ACK3~0_combout\,
	combout => \i2c|u0|ACK3~1_combout\);

-- Location: LCCOMB_X34_Y49_N22
\i2c|u0|ACK3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|ACK3~2_combout\ = (\i2c|u0|ACK3~1_combout\ & ((\i2c|u0|SD_COUNTER\(4) & (\I2C_SDAT~input_o\)) # (!\i2c|u0|SD_COUNTER\(4) & ((\i2c|u0|ACK3~q\))))) # (!\i2c|u0|ACK3~1_combout\ & (((\i2c|u0|ACK3~q\ & \i2c|u0|SD_COUNTER\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_SDAT~input_o\,
	datab => \i2c|u0|ACK3~1_combout\,
	datac => \i2c|u0|ACK3~q\,
	datad => \i2c|u0|SD_COUNTER\(4),
	combout => \i2c|u0|ACK3~2_combout\);

-- Location: FF_X34_Y49_N23
\i2c|u0|ACK3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \i2c|u0|ACK3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|u0|ACK3~q\);

-- Location: LCCOMB_X34_Y49_N30
\i2c|u0|ACK1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|ACK1~0_combout\ = (!\i2c|u0|SD_COUNTER\(1) & (!\i2c|u0|SD_COUNTER\(5) & (\i2c|u0|SD_COUNTER\(3) $ (!\i2c|u0|SD_COUNTER\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|SD_COUNTER\(3),
	datab => \i2c|u0|SD_COUNTER\(1),
	datac => \i2c|u0|SD_COUNTER\(5),
	datad => \i2c|u0|SD_COUNTER\(2),
	combout => \i2c|u0|ACK1~0_combout\);

-- Location: LCCOMB_X34_Y49_N0
\i2c|u0|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|Selector4~0_combout\ = (\i2c|u0|SD_COUNTER\(0) & (((\i2c|u0|ACK1~q\)))) # (!\i2c|u0|SD_COUNTER\(0) & (\I2C_SDAT~input_o\ & ((\i2c|u0|SD_COUNTER\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_SDAT~input_o\,
	datab => \i2c|u0|ACK1~q\,
	datac => \i2c|u0|SD_COUNTER\(2),
	datad => \i2c|u0|SD_COUNTER\(0),
	combout => \i2c|u0|Selector4~0_combout\);

-- Location: LCCOMB_X34_Y49_N2
\i2c|u0|ACK1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|ACK1~1_combout\ = (\i2c|u0|ACK1~0_combout\ & ((\i2c|u0|SD_COUNTER\(4) & ((\i2c|u0|ACK1~q\))) # (!\i2c|u0|SD_COUNTER\(4) & (\i2c|u0|Selector4~0_combout\)))) # (!\i2c|u0|ACK1~0_combout\ & (((\i2c|u0|ACK1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|ACK1~0_combout\,
	datab => \i2c|u0|Selector4~0_combout\,
	datac => \i2c|u0|ACK1~q\,
	datad => \i2c|u0|SD_COUNTER\(4),
	combout => \i2c|u0|ACK1~1_combout\);

-- Location: FF_X34_Y49_N3
\i2c|u0|ACK1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \i2c|u0|ACK1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|u0|ACK1~q\);

-- Location: LCCOMB_X34_Y49_N20
\i2c|mSetup_ST~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|mSetup_ST~12_combout\ = (!\i2c|u0|ACK2~q\ & (!\i2c|u0|ACK3~q\ & !\i2c|u0|ACK1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|ACK2~q\,
	datac => \i2c|u0|ACK3~q\,
	datad => \i2c|u0|ACK1~q\,
	combout => \i2c|mSetup_ST~12_combout\);

-- Location: LCCOMB_X34_Y49_N16
\i2c|mSetup_ST~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|mSetup_ST~13_combout\ = (\i2c|u0|END~q\ & (\i2c|mSetup_ST.0001~q\ & \i2c|mSetup_ST~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c|u0|END~q\,
	datac => \i2c|mSetup_ST.0001~q\,
	datad => \i2c|mSetup_ST~12_combout\,
	combout => \i2c|mSetup_ST~13_combout\);

-- Location: LCCOMB_X38_Y49_N20
\i2c|LUT_INDEX[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|LUT_INDEX[4]~12_combout\ = (\i2c|LUT_INDEX\(4) & (!\i2c|LUT_INDEX[3]~10\)) # (!\i2c|LUT_INDEX\(4) & ((\i2c|LUT_INDEX[3]~10\) # (GND)))
-- \i2c|LUT_INDEX[4]~13\ = CARRY((!\i2c|LUT_INDEX[3]~10\) # (!\i2c|LUT_INDEX\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c|LUT_INDEX\(4),
	datad => VCC,
	cin => \i2c|LUT_INDEX[3]~10\,
	combout => \i2c|LUT_INDEX[4]~12_combout\,
	cout => \i2c|LUT_INDEX[4]~13\);

-- Location: LCCOMB_X38_Y49_N22
\i2c|LUT_INDEX[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|LUT_INDEX[5]~14_combout\ = \i2c|LUT_INDEX\(5) $ (!\i2c|LUT_INDEX[4]~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|LUT_INDEX\(5),
	cin => \i2c|LUT_INDEX[4]~13\,
	combout => \i2c|LUT_INDEX[5]~14_combout\);

-- Location: LCCOMB_X38_Y49_N4
\i2c|LUT_INDEX[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|LUT_INDEX[5]~11_combout\ = (\i2c|mSetup_ST.0010~q\ & ((\i2c|LessThan1~0_combout\) # (!\i2c|LUT_INDEX\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c|mSetup_ST.0010~q\,
	datac => \i2c|LUT_INDEX\(5),
	datad => \i2c|LessThan1~0_combout\,
	combout => \i2c|LUT_INDEX[5]~11_combout\);

-- Location: FF_X38_Y49_N23
\i2c|LUT_INDEX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \i2c|LUT_INDEX[5]~14_combout\,
	ena => \i2c|LUT_INDEX[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|LUT_INDEX\(5));

-- Location: LCCOMB_X38_Y49_N30
\i2c|LUT_INDEX[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|LUT_INDEX[0]~16_combout\ = \i2c|LUT_INDEX\(0) $ (((\i2c|mSetup_ST.0010~q\ & ((\i2c|LessThan1~0_combout\) # (!\i2c|LUT_INDEX\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|LUT_INDEX\(5),
	datab => \i2c|mSetup_ST.0010~q\,
	datac => \i2c|LUT_INDEX\(0),
	datad => \i2c|LessThan1~0_combout\,
	combout => \i2c|LUT_INDEX[0]~16_combout\);

-- Location: FF_X38_Y49_N31
\i2c|LUT_INDEX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \i2c|LUT_INDEX[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|LUT_INDEX\(0));

-- Location: LCCOMB_X38_Y49_N14
\i2c|LUT_INDEX[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|LUT_INDEX[1]~5_combout\ = (\i2c|LUT_INDEX\(0) & (\i2c|LUT_INDEX\(1) $ (VCC))) # (!\i2c|LUT_INDEX\(0) & (\i2c|LUT_INDEX\(1) & VCC))
-- \i2c|LUT_INDEX[1]~6\ = CARRY((\i2c|LUT_INDEX\(0) & \i2c|LUT_INDEX\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|LUT_INDEX\(0),
	datab => \i2c|LUT_INDEX\(1),
	datad => VCC,
	combout => \i2c|LUT_INDEX[1]~5_combout\,
	cout => \i2c|LUT_INDEX[1]~6\);

-- Location: FF_X38_Y49_N15
\i2c|LUT_INDEX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \i2c|LUT_INDEX[1]~5_combout\,
	ena => \i2c|LUT_INDEX[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|LUT_INDEX\(1));

-- Location: LCCOMB_X38_Y49_N16
\i2c|LUT_INDEX[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|LUT_INDEX[2]~7_combout\ = (\i2c|LUT_INDEX\(2) & (!\i2c|LUT_INDEX[1]~6\)) # (!\i2c|LUT_INDEX\(2) & ((\i2c|LUT_INDEX[1]~6\) # (GND)))
-- \i2c|LUT_INDEX[2]~8\ = CARRY((!\i2c|LUT_INDEX[1]~6\) # (!\i2c|LUT_INDEX\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c|LUT_INDEX\(2),
	datad => VCC,
	cin => \i2c|LUT_INDEX[1]~6\,
	combout => \i2c|LUT_INDEX[2]~7_combout\,
	cout => \i2c|LUT_INDEX[2]~8\);

-- Location: FF_X38_Y49_N17
\i2c|LUT_INDEX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \i2c|LUT_INDEX[2]~7_combout\,
	ena => \i2c|LUT_INDEX[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|LUT_INDEX\(2));

-- Location: LCCOMB_X38_Y49_N18
\i2c|LUT_INDEX[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|LUT_INDEX[3]~9_combout\ = (\i2c|LUT_INDEX\(3) & (\i2c|LUT_INDEX[2]~8\ $ (GND))) # (!\i2c|LUT_INDEX\(3) & (!\i2c|LUT_INDEX[2]~8\ & VCC))
-- \i2c|LUT_INDEX[3]~10\ = CARRY((\i2c|LUT_INDEX\(3) & !\i2c|LUT_INDEX[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c|LUT_INDEX\(3),
	datad => VCC,
	cin => \i2c|LUT_INDEX[2]~8\,
	combout => \i2c|LUT_INDEX[3]~9_combout\,
	cout => \i2c|LUT_INDEX[3]~10\);

-- Location: FF_X38_Y49_N19
\i2c|LUT_INDEX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \i2c|LUT_INDEX[3]~9_combout\,
	ena => \i2c|LUT_INDEX[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|LUT_INDEX\(3));

-- Location: FF_X38_Y49_N21
\i2c|LUT_INDEX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \i2c|LUT_INDEX[4]~12_combout\,
	ena => \i2c|LUT_INDEX[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|LUT_INDEX\(4));

-- Location: LCCOMB_X38_Y49_N24
\i2c|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|LessThan1~0_combout\ = ((!\i2c|LUT_INDEX\(2) & (!\i2c|LUT_INDEX\(1) & !\i2c|LUT_INDEX\(3)))) # (!\i2c|LUT_INDEX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|LUT_INDEX\(4),
	datab => \i2c|LUT_INDEX\(2),
	datac => \i2c|LUT_INDEX\(1),
	datad => \i2c|LUT_INDEX\(3),
	combout => \i2c|LessThan1~0_combout\);

-- Location: LCCOMB_X34_Y49_N4
\i2c|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|LessThan1~1_combout\ = (\i2c|LessThan1~0_combout\) # (!\i2c|LUT_INDEX\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c|LessThan1~0_combout\,
	datad => \i2c|LUT_INDEX\(5),
	combout => \i2c|LessThan1~1_combout\);

-- Location: FF_X34_Y49_N17
\i2c|mSetup_ST.0010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \i2c|mSetup_ST~13_combout\,
	ena => \i2c|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|mSetup_ST.0010~q\);

-- Location: LCCOMB_X34_Y49_N18
\i2c|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|Selector1~0_combout\ = (!\i2c|mSetup_ST.0010~q\ & (((\i2c|mSetup_ST~12_combout\) # (!\i2c|u0|END~q\)) # (!\i2c|mSetup_ST.0001~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|mSetup_ST.0001~q\,
	datab => \i2c|mSetup_ST~12_combout\,
	datac => \i2c|u0|END~q\,
	datad => \i2c|mSetup_ST.0010~q\,
	combout => \i2c|Selector1~0_combout\);

-- Location: FF_X34_Y49_N19
\i2c|mSetup_ST.0000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \i2c|Selector1~0_combout\,
	ena => \i2c|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|mSetup_ST.0000~q\);

-- Location: LCCOMB_X34_Y49_N26
\i2c|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|Selector2~0_combout\ = ((!\i2c|u0|END~q\ & \i2c|mSetup_ST.0001~q\)) # (!\i2c|mSetup_ST.0000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c|u0|END~q\,
	datac => \i2c|mSetup_ST.0001~q\,
	datad => \i2c|mSetup_ST.0000~q\,
	combout => \i2c|Selector2~0_combout\);

-- Location: FF_X34_Y49_N27
\i2c|mSetup_ST.0001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \i2c|Selector2~0_combout\,
	ena => \i2c|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|mSetup_ST.0001~q\);

-- Location: LCCOMB_X34_Y49_N6
\i2c|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|Selector0~0_combout\ = (\i2c|mSetup_ST.0001~q\ & (!\i2c|u0|END~q\ & (\i2c|mI2C_GO~q\))) # (!\i2c|mSetup_ST.0001~q\ & (((\i2c|mI2C_GO~q\) # (!\i2c|mSetup_ST.0010~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|mSetup_ST.0001~q\,
	datab => \i2c|u0|END~q\,
	datac => \i2c|mI2C_GO~q\,
	datad => \i2c|mSetup_ST.0010~q\,
	combout => \i2c|Selector0~0_combout\);

-- Location: FF_X34_Y49_N7
\i2c|mI2C_GO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \i2c|Selector0~0_combout\,
	ena => \i2c|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|mI2C_GO~q\);

-- Location: LCCOMB_X36_Y49_N8
\i2c|u0|SD_COUNTER[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|SD_COUNTER[0]~16_combout\ = (\i2c|u0|SD_COUNTER\(1) & (\i2c|u0|SD_COUNTER\(3) & (\i2c|u0|SD_COUNTER\(2) & \i2c|mI2C_GO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|SD_COUNTER\(1),
	datab => \i2c|u0|SD_COUNTER\(3),
	datac => \i2c|u0|SD_COUNTER\(2),
	datad => \i2c|mI2C_GO~q\,
	combout => \i2c|u0|SD_COUNTER[0]~16_combout\);

-- Location: LCCOMB_X36_Y49_N26
\i2c|u0|SD_COUNTER[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|SD_COUNTER[0]~17_combout\ = (((!\i2c|u0|SD_COUNTER\(5)) # (!\i2c|u0|SD_COUNTER[0]~16_combout\)) # (!\i2c|u0|SD_COUNTER\(4))) # (!\i2c|u0|SD_COUNTER\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|SD_COUNTER\(0),
	datab => \i2c|u0|SD_COUNTER\(4),
	datac => \i2c|u0|SD_COUNTER[0]~16_combout\,
	datad => \i2c|u0|SD_COUNTER\(5),
	combout => \i2c|u0|SD_COUNTER[0]~17_combout\);

-- Location: FF_X36_Y49_N11
\i2c|u0|SD_COUNTER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \i2c|u0|SD_COUNTER[0]~6_combout\,
	sclr => \i2c|ALT_INV_mI2C_GO~q\,
	ena => \i2c|u0|SD_COUNTER[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|u0|SD_COUNTER\(0));

-- Location: LCCOMB_X36_Y49_N12
\i2c|u0|SD_COUNTER[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|SD_COUNTER[1]~8_combout\ = (\i2c|u0|SD_COUNTER\(1) & (!\i2c|u0|SD_COUNTER[0]~7\)) # (!\i2c|u0|SD_COUNTER\(1) & ((\i2c|u0|SD_COUNTER[0]~7\) # (GND)))
-- \i2c|u0|SD_COUNTER[1]~9\ = CARRY((!\i2c|u0|SD_COUNTER[0]~7\) # (!\i2c|u0|SD_COUNTER\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|SD_COUNTER\(1),
	datad => VCC,
	cin => \i2c|u0|SD_COUNTER[0]~7\,
	combout => \i2c|u0|SD_COUNTER[1]~8_combout\,
	cout => \i2c|u0|SD_COUNTER[1]~9\);

-- Location: FF_X36_Y49_N13
\i2c|u0|SD_COUNTER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \i2c|u0|SD_COUNTER[1]~8_combout\,
	sclr => \i2c|ALT_INV_mI2C_GO~q\,
	ena => \i2c|u0|SD_COUNTER[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|u0|SD_COUNTER\(1));

-- Location: LCCOMB_X36_Y49_N14
\i2c|u0|SD_COUNTER[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|SD_COUNTER[2]~10_combout\ = (\i2c|u0|SD_COUNTER\(2) & (\i2c|u0|SD_COUNTER[1]~9\ $ (GND))) # (!\i2c|u0|SD_COUNTER\(2) & (!\i2c|u0|SD_COUNTER[1]~9\ & VCC))
-- \i2c|u0|SD_COUNTER[2]~11\ = CARRY((\i2c|u0|SD_COUNTER\(2) & !\i2c|u0|SD_COUNTER[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c|u0|SD_COUNTER\(2),
	datad => VCC,
	cin => \i2c|u0|SD_COUNTER[1]~9\,
	combout => \i2c|u0|SD_COUNTER[2]~10_combout\,
	cout => \i2c|u0|SD_COUNTER[2]~11\);

-- Location: FF_X36_Y49_N15
\i2c|u0|SD_COUNTER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \i2c|u0|SD_COUNTER[2]~10_combout\,
	sclr => \i2c|ALT_INV_mI2C_GO~q\,
	ena => \i2c|u0|SD_COUNTER[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|u0|SD_COUNTER\(2));

-- Location: LCCOMB_X36_Y49_N16
\i2c|u0|SD_COUNTER[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|SD_COUNTER[3]~12_combout\ = (\i2c|u0|SD_COUNTER\(3) & (!\i2c|u0|SD_COUNTER[2]~11\)) # (!\i2c|u0|SD_COUNTER\(3) & ((\i2c|u0|SD_COUNTER[2]~11\) # (GND)))
-- \i2c|u0|SD_COUNTER[3]~13\ = CARRY((!\i2c|u0|SD_COUNTER[2]~11\) # (!\i2c|u0|SD_COUNTER\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c|u0|SD_COUNTER\(3),
	datad => VCC,
	cin => \i2c|u0|SD_COUNTER[2]~11\,
	combout => \i2c|u0|SD_COUNTER[3]~12_combout\,
	cout => \i2c|u0|SD_COUNTER[3]~13\);

-- Location: FF_X36_Y49_N17
\i2c|u0|SD_COUNTER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \i2c|u0|SD_COUNTER[3]~12_combout\,
	sclr => \i2c|ALT_INV_mI2C_GO~q\,
	ena => \i2c|u0|SD_COUNTER[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|u0|SD_COUNTER\(3));

-- Location: LCCOMB_X36_Y49_N18
\i2c|u0|SD_COUNTER[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|SD_COUNTER[4]~14_combout\ = (\i2c|u0|SD_COUNTER\(4) & (\i2c|u0|SD_COUNTER[3]~13\ $ (GND))) # (!\i2c|u0|SD_COUNTER\(4) & (!\i2c|u0|SD_COUNTER[3]~13\ & VCC))
-- \i2c|u0|SD_COUNTER[4]~15\ = CARRY((\i2c|u0|SD_COUNTER\(4) & !\i2c|u0|SD_COUNTER[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c|u0|SD_COUNTER\(4),
	datad => VCC,
	cin => \i2c|u0|SD_COUNTER[3]~13\,
	combout => \i2c|u0|SD_COUNTER[4]~14_combout\,
	cout => \i2c|u0|SD_COUNTER[4]~15\);

-- Location: FF_X36_Y49_N19
\i2c|u0|SD_COUNTER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \i2c|u0|SD_COUNTER[4]~14_combout\,
	sclr => \i2c|ALT_INV_mI2C_GO~q\,
	ena => \i2c|u0|SD_COUNTER[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|u0|SD_COUNTER\(4));

-- Location: LCCOMB_X36_Y49_N20
\i2c|u0|SD_COUNTER[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|SD_COUNTER[5]~18_combout\ = \i2c|u0|SD_COUNTER[4]~15\ $ (\i2c|u0|SD_COUNTER\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i2c|u0|SD_COUNTER\(5),
	cin => \i2c|u0|SD_COUNTER[4]~15\,
	combout => \i2c|u0|SD_COUNTER[5]~18_combout\);

-- Location: FF_X36_Y49_N21
\i2c|u0|SD_COUNTER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \i2c|u0|SD_COUNTER[5]~18_combout\,
	sclr => \i2c|ALT_INV_mI2C_GO~q\,
	ena => \i2c|u0|SD_COUNTER[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|u0|SD_COUNTER\(5));

-- Location: LCCOMB_X35_Y49_N14
\i2c|u0|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|Mux0~3_combout\ = (!\i2c|u0|SD_COUNTER\(3) & (!\i2c|u0|SD_COUNTER\(2) & (!\i2c|u0|SD_COUNTER\(1) & !\i2c|u0|SD_COUNTER\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|SD_COUNTER\(3),
	datab => \i2c|u0|SD_COUNTER\(2),
	datac => \i2c|u0|SD_COUNTER\(1),
	datad => \i2c|u0|SD_COUNTER\(0),
	combout => \i2c|u0|Mux0~3_combout\);

-- Location: LCCOMB_X38_Y49_N2
\i2c|mI2C_DATA[22]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|mI2C_DATA[22]~1_combout\ = (\i2c|LUT_INDEX\(4)) # ((\i2c|LUT_INDEX\(3) & ((\i2c|LUT_INDEX\(2)) # (\i2c|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|LUT_INDEX\(4),
	datab => \i2c|LUT_INDEX\(2),
	datac => \i2c|LUT_INDEX\(1),
	datad => \i2c|LUT_INDEX\(3),
	combout => \i2c|mI2C_DATA[22]~1_combout\);

-- Location: LCCOMB_X38_Y49_N12
\i2c|mI2C_DATA[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|mI2C_DATA[0]~0_combout\ = (!\i2c|mSetup_ST.0000~q\ & ((\i2c|LessThan1~0_combout\) # (!\i2c|LUT_INDEX\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c|mSetup_ST.0000~q\,
	datac => \i2c|LUT_INDEX\(5),
	datad => \i2c|LessThan1~0_combout\,
	combout => \i2c|mI2C_DATA[0]~0_combout\);

-- Location: LCCOMB_X38_Y49_N26
\i2c|mI2C_DATA[22]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|mI2C_DATA[22]~2_combout\ = (\i2c|mI2C_DATA[0]~0_combout\ & ((\i2c|LUT_INDEX\(5)) # ((\i2c|mI2C_DATA[22]~1_combout\)))) # (!\i2c|mI2C_DATA[0]~0_combout\ & (((\i2c|mI2C_DATA\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|LUT_INDEX\(5),
	datab => \i2c|mI2C_DATA[22]~1_combout\,
	datac => \i2c|mI2C_DATA\(22),
	datad => \i2c|mI2C_DATA[0]~0_combout\,
	combout => \i2c|mI2C_DATA[22]~2_combout\);

-- Location: FF_X38_Y49_N27
\i2c|mI2C_DATA[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \i2c|mI2C_DATA[22]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|mI2C_DATA\(22));

-- Location: LCCOMB_X35_Y49_N0
\i2c|u0|SD[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|SD[22]~feeder_combout\ = \i2c|mI2C_DATA\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c|mI2C_DATA\(22),
	combout => \i2c|u0|SD[22]~feeder_combout\);

-- Location: LCCOMB_X35_Y49_N6
\i2c|u0|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|Decoder0~0_combout\ = (!\i2c|u0|SD_COUNTER\(3) & (!\i2c|u0|SD_COUNTER\(2) & (!\i2c|u0|SD_COUNTER\(1) & !\i2c|u0|SD_COUNTER\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|SD_COUNTER\(3),
	datab => \i2c|u0|SD_COUNTER\(2),
	datac => \i2c|u0|SD_COUNTER\(1),
	datad => \i2c|u0|SD_COUNTER\(4),
	combout => \i2c|u0|Decoder0~0_combout\);

-- Location: LCCOMB_X35_Y49_N26
\i2c|u0|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|Decoder0~1_combout\ = (\i2c|u0|SD_COUNTER\(0) & (!\i2c|u0|SD_COUNTER\(5) & \i2c|u0|Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c|u0|SD_COUNTER\(0),
	datac => \i2c|u0|SD_COUNTER\(5),
	datad => \i2c|u0|Decoder0~0_combout\,
	combout => \i2c|u0|Decoder0~1_combout\);

-- Location: FF_X35_Y49_N1
\i2c|u0|SD[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \i2c|u0|SD[22]~feeder_combout\,
	ena => \i2c|u0|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|u0|SD\(22));

-- Location: LCCOMB_X35_Y49_N12
\i2c|u0|Mux0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|Mux0~15_combout\ = (\i2c|u0|SD_COUNTER\(3) & (!\i2c|u0|SD\(22) & (!\i2c|u0|SD_COUNTER\(1)))) # (!\i2c|u0|SD_COUNTER\(3) & (((\i2c|u0|SDO~q\) # (!\i2c|u0|SD_COUNTER\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|SD_COUNTER\(3),
	datab => \i2c|u0|SD\(22),
	datac => \i2c|u0|SD_COUNTER\(1),
	datad => \i2c|u0|SDO~q\,
	combout => \i2c|u0|Mux0~15_combout\);

-- Location: LCCOMB_X35_Y49_N24
\i2c|u0|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|Mux0~2_combout\ = (\i2c|u0|SD_COUNTER\(1) & \i2c|u0|SD_COUNTER\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c|u0|SD_COUNTER\(1),
	datad => \i2c|u0|SD_COUNTER\(3),
	combout => \i2c|u0|Mux0~2_combout\);

-- Location: LCCOMB_X35_Y49_N30
\i2c|u0|Mux0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|Mux0~16_combout\ = (\i2c|u0|SD_COUNTER\(2) & (((\i2c|u0|SD_COUNTER\(0))))) # (!\i2c|u0|SD_COUNTER\(2) & ((\i2c|u0|SD_COUNTER\(0) & ((\i2c|u0|Mux0~2_combout\))) # (!\i2c|u0|SD_COUNTER\(0) & (\i2c|u0|Mux0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|Mux0~15_combout\,
	datab => \i2c|u0|SD_COUNTER\(2),
	datac => \i2c|u0|SD_COUNTER\(0),
	datad => \i2c|u0|Mux0~2_combout\,
	combout => \i2c|u0|Mux0~16_combout\);

-- Location: M9K_X37_Y49_N0
\i2c|Ram0_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000381430D20BFD02EEE0B7C82C8C0AC001100028800B0001008100000140510014000E7853980CE5800DE8033840CA0431123A83CE43E35FA8D5A0341207D001F24C77C5163B45218140800E8031200C305140103A1605D041500048041002038040C000281808F8019EC047B00868001A",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/JSInth.rom0_de2_i2c_av_config_dd5cf7bb.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "de2_i2c_av_config:i2c|altsyncram:Ram0_rtl_0|altsyncram_hl81:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock1",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 6,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \i2c|mI2C_CTRL_CLK~clkctrl_outclk\,
	clk1 => \i2c|mI2C_CTRL_CLK~clkctrl_outclk\,
	ena0 => \i2c|mI2C_DATA[0]~0_combout\,
	ena1 => \i2c|u0|Decoder0~1_combout\,
	portaaddr => \i2c|Ram0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \i2c|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X35_Y49_N16
\i2c|u0|Mux0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|Mux0~17_combout\ = (!\i2c|u0|SD_COUNTER\(1) & ((\i2c|u0|SD_COUNTER\(3) & ((\i2c|u0|SD\(14)))) # (!\i2c|u0|SD_COUNTER\(3) & (!\i2c|u0|SD\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|SD_COUNTER\(3),
	datab => \i2c|u0|SD\(22),
	datac => \i2c|u0|SD_COUNTER\(1),
	datad => \i2c|u0|SD\(14),
	combout => \i2c|u0|Mux0~17_combout\);

-- Location: LCCOMB_X35_Y49_N8
\i2c|u0|Mux0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|Mux0~21_combout\ = (\i2c|u0|Mux0~17_combout\) # ((\i2c|u0|SD_COUNTER\(3) & (\i2c|u0|SD_COUNTER\(1) & \i2c|u0|SD\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|SD_COUNTER\(3),
	datab => \i2c|u0|SD_COUNTER\(1),
	datac => \i2c|u0|SD\(12),
	datad => \i2c|u0|Mux0~17_combout\,
	combout => \i2c|u0|Mux0~21_combout\);

-- Location: LCCOMB_X36_Y49_N2
\i2c|u0|Mux0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|Mux0~13_combout\ = (\i2c|u0|SD_COUNTER\(3) & ((\i2c|u0|SD_COUNTER\(1) & (\i2c|u0|SD\(13))) # (!\i2c|u0|SD_COUNTER\(1) & ((\i2c|u0|SD\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|SD_COUNTER\(1),
	datab => \i2c|u0|SD_COUNTER\(3),
	datac => \i2c|u0|SD\(13),
	datad => \i2c|u0|SD\(15),
	combout => \i2c|u0|Mux0~13_combout\);

-- Location: LCCOMB_X35_Y49_N2
\i2c|u0|Mux0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|Mux0~14_combout\ = (\i2c|u0|Mux0~13_combout\) # ((!\i2c|u0|SD_COUNTER\(3) & (\i2c|u0|SD\(22) $ (\i2c|u0|SD_COUNTER\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|SD_COUNTER\(3),
	datab => \i2c|u0|SD\(22),
	datac => \i2c|u0|SD_COUNTER\(1),
	datad => \i2c|u0|Mux0~13_combout\,
	combout => \i2c|u0|Mux0~14_combout\);

-- Location: LCCOMB_X35_Y49_N22
\i2c|u0|Mux0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|Mux0~18_combout\ = (\i2c|u0|Mux0~16_combout\ & (((\i2c|u0|Mux0~21_combout\)) # (!\i2c|u0|SD_COUNTER\(2)))) # (!\i2c|u0|Mux0~16_combout\ & (\i2c|u0|SD_COUNTER\(2) & ((\i2c|u0|Mux0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|Mux0~16_combout\,
	datab => \i2c|u0|SD_COUNTER\(2),
	datac => \i2c|u0|Mux0~21_combout\,
	datad => \i2c|u0|Mux0~14_combout\,
	combout => \i2c|u0|Mux0~18_combout\);

-- Location: LCCOMB_X36_Y49_N28
\i2c|u0|Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|Mux0~10_combout\ = (!\i2c|u0|SD_COUNTER\(3) & ((\i2c|u0|SD_COUNTER\(0) & ((\i2c|u0|SD\(5)))) # (!\i2c|u0|SD_COUNTER\(0) & (\i2c|u0|SD\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|SD_COUNTER\(0),
	datab => \i2c|u0|SD_COUNTER\(3),
	datac => \i2c|u0|SD\(6),
	datad => \i2c|u0|SD\(5),
	combout => \i2c|u0|Mux0~10_combout\);

-- Location: LCCOMB_X35_Y49_N4
\i2c|u0|Mux0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|Mux0~11_combout\ = (\i2c|u0|Mux0~10_combout\) # ((\i2c|u0|SD_COUNTER\(3) & (\i2c|u0|SDO~q\ & \i2c|u0|SD_COUNTER\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|SD_COUNTER\(3),
	datab => \i2c|u0|SDO~q\,
	datac => \i2c|u0|SD_COUNTER\(0),
	datad => \i2c|u0|Mux0~10_combout\,
	combout => \i2c|u0|Mux0~11_combout\);

-- Location: LCCOMB_X36_Y49_N24
\i2c|u0|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|Mux0~4_combout\ = (\i2c|u0|SD_COUNTER\(0) & ((\i2c|u0|SD_COUNTER\(3)) # ((\i2c|u0|SD\(8))))) # (!\i2c|u0|SD_COUNTER\(0) & (!\i2c|u0|SD_COUNTER\(3) & (\i2c|u0|SD\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|SD_COUNTER\(0),
	datab => \i2c|u0|SD_COUNTER\(3),
	datac => \i2c|u0|SD\(9),
	datad => \i2c|u0|SD\(8),
	combout => \i2c|u0|Mux0~4_combout\);

-- Location: LCCOMB_X36_Y49_N30
\i2c|u0|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|Mux0~5_combout\ = (\i2c|u0|SD_COUNTER\(3) & ((\i2c|u0|Mux0~4_combout\ & (\i2c|u0|SD\(1))) # (!\i2c|u0|Mux0~4_combout\ & ((\i2c|u0|SD\(2)))))) # (!\i2c|u0|SD_COUNTER\(3) & (((\i2c|u0|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|SD_COUNTER\(3),
	datab => \i2c|u0|SD\(1),
	datac => \i2c|u0|SD\(2),
	datad => \i2c|u0|Mux0~4_combout\,
	combout => \i2c|u0|Mux0~5_combout\);

-- Location: LCCOMB_X36_Y49_N4
\i2c|u0|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|Mux0~6_combout\ = (\i2c|u0|SD_COUNTER\(0) & ((\i2c|u0|SD_COUNTER\(3)) # ((\i2c|u0|SD\(7))))) # (!\i2c|u0|SD_COUNTER\(0) & (((\i2c|u0|SD\(0))) # (!\i2c|u0|SD_COUNTER\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|SD_COUNTER\(0),
	datab => \i2c|u0|SD_COUNTER\(3),
	datac => \i2c|u0|SD\(7),
	datad => \i2c|u0|SD\(0),
	combout => \i2c|u0|Mux0~6_combout\);

-- Location: LCCOMB_X36_Y49_N6
\i2c|u0|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|Mux0~7_combout\ = (\i2c|u0|SD_COUNTER\(3) & ((\i2c|u0|SD\(4)) # ((\i2c|u0|SD_COUNTER\(0))))) # (!\i2c|u0|SD_COUNTER\(3) & (((!\i2c|u0|SD_COUNTER\(0) & \i2c|u0|SD\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|SD\(4),
	datab => \i2c|u0|SD_COUNTER\(3),
	datac => \i2c|u0|SD_COUNTER\(0),
	datad => \i2c|u0|SD\(11),
	combout => \i2c|u0|Mux0~7_combout\);

-- Location: LCCOMB_X36_Y49_N0
\i2c|u0|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|Mux0~8_combout\ = (\i2c|u0|SD_COUNTER\(0) & ((\i2c|u0|Mux0~7_combout\ & (\i2c|u0|SD\(3))) # (!\i2c|u0|Mux0~7_combout\ & ((\i2c|u0|SD\(10)))))) # (!\i2c|u0|SD_COUNTER\(0) & (((\i2c|u0|Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|SD_COUNTER\(0),
	datab => \i2c|u0|SD\(3),
	datac => \i2c|u0|SD\(10),
	datad => \i2c|u0|Mux0~7_combout\,
	combout => \i2c|u0|Mux0~8_combout\);

-- Location: LCCOMB_X36_Y49_N22
\i2c|u0|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|Mux0~9_combout\ = (\i2c|u0|SD_COUNTER\(1) & (\i2c|u0|SD_COUNTER\(2))) # (!\i2c|u0|SD_COUNTER\(1) & ((\i2c|u0|SD_COUNTER\(2) & (\i2c|u0|Mux0~6_combout\)) # (!\i2c|u0|SD_COUNTER\(2) & ((\i2c|u0|Mux0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|SD_COUNTER\(1),
	datab => \i2c|u0|SD_COUNTER\(2),
	datac => \i2c|u0|Mux0~6_combout\,
	datad => \i2c|u0|Mux0~8_combout\,
	combout => \i2c|u0|Mux0~9_combout\);

-- Location: LCCOMB_X35_Y49_N18
\i2c|u0|Mux0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|Mux0~12_combout\ = (\i2c|u0|SD_COUNTER\(1) & ((\i2c|u0|Mux0~9_combout\ & (\i2c|u0|Mux0~11_combout\)) # (!\i2c|u0|Mux0~9_combout\ & ((\i2c|u0|Mux0~5_combout\))))) # (!\i2c|u0|SD_COUNTER\(1) & (((\i2c|u0|Mux0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|SD_COUNTER\(1),
	datab => \i2c|u0|Mux0~11_combout\,
	datac => \i2c|u0|Mux0~5_combout\,
	datad => \i2c|u0|Mux0~9_combout\,
	combout => \i2c|u0|Mux0~12_combout\);

-- Location: LCCOMB_X35_Y49_N28
\i2c|u0|Mux0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|Mux0~19_combout\ = (\i2c|u0|SD_COUNTER\(5) & (\i2c|u0|SD_COUNTER\(4))) # (!\i2c|u0|SD_COUNTER\(5) & ((\i2c|u0|SD_COUNTER\(4) & ((\i2c|u0|Mux0~12_combout\))) # (!\i2c|u0|SD_COUNTER\(4) & (\i2c|u0|Mux0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|SD_COUNTER\(5),
	datab => \i2c|u0|SD_COUNTER\(4),
	datac => \i2c|u0|Mux0~18_combout\,
	datad => \i2c|u0|Mux0~12_combout\,
	combout => \i2c|u0|Mux0~19_combout\);

-- Location: LCCOMB_X35_Y49_N20
\i2c|u0|Mux0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|Mux0~20_combout\ = (\i2c|u0|SD_COUNTER\(5) & ((\i2c|u0|SDO~q\) # ((\i2c|u0|Mux0~3_combout\ & !\i2c|u0|Mux0~19_combout\)))) # (!\i2c|u0|SD_COUNTER\(5) & (((\i2c|u0|Mux0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|SD_COUNTER\(5),
	datab => \i2c|u0|Mux0~3_combout\,
	datac => \i2c|u0|SDO~q\,
	datad => \i2c|u0|Mux0~19_combout\,
	combout => \i2c|u0|Mux0~20_combout\);

-- Location: FF_X35_Y49_N21
\i2c|u0|SDO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \i2c|u0|Mux0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|u0|SDO~q\);

-- Location: LCCOMB_X55_Y71_N18
\audio_clock[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_clock[0]~1_combout\ = !audio_clock(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => audio_clock(0),
	combout => \audio_clock[0]~1_combout\);

-- Location: FF_X55_Y71_N19
\audio_clock[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \audio_clock[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => audio_clock(0));

-- Location: LCCOMB_X55_Y71_N10
\audio_clock[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_clock[1]~0_combout\ = audio_clock(1) $ (audio_clock(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => audio_clock(1),
	datad => audio_clock(0),
	combout => \audio_clock[1]~0_combout\);

-- Location: LCCOMB_X55_Y71_N4
\audio_clock[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_clock[1]~feeder_combout\ = \audio_clock[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \audio_clock[1]~0_combout\,
	combout => \audio_clock[1]~feeder_combout\);

-- Location: FF_X55_Y71_N5
\audio_clock[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \audio_clock[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => audio_clock(1));

-- Location: CLKCTRL_G13
\audio_clock[1]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \audio_clock[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \audio_clock[1]~clkctrl_outclk\);

-- Location: LCCOMB_X11_Y65_N8
\V1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Add0~0_combout\ = \V1|lrck_divider\(0) $ (VCC)
-- \V1|Add0~1\ = CARRY(\V1|lrck_divider\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V1|lrck_divider\(0),
	datad => VCC,
	combout => \V1|Add0~0_combout\,
	cout => \V1|Add0~1\);

-- Location: FF_X11_Y65_N9
\V1|lrck_divider[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_clock[1]~clkctrl_outclk\,
	d => \V1|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|lrck_divider\(0));

-- Location: LCCOMB_X11_Y65_N10
\V1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Add0~2_combout\ = (\V1|lrck_divider\(1) & (!\V1|Add0~1\)) # (!\V1|lrck_divider\(1) & ((\V1|Add0~1\) # (GND)))
-- \V1|Add0~3\ = CARRY((!\V1|Add0~1\) # (!\V1|lrck_divider\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \V1|lrck_divider\(1),
	datad => VCC,
	cin => \V1|Add0~1\,
	combout => \V1|Add0~2_combout\,
	cout => \V1|Add0~3\);

-- Location: FF_X11_Y65_N11
\V1|lrck_divider[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_clock[1]~clkctrl_outclk\,
	d => \V1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|lrck_divider\(1));

-- Location: LCCOMB_X11_Y65_N12
\V1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Add0~4_combout\ = (\V1|lrck_divider\(2) & (\V1|Add0~3\ $ (GND))) # (!\V1|lrck_divider\(2) & (!\V1|Add0~3\ & VCC))
-- \V1|Add0~5\ = CARRY((\V1|lrck_divider\(2) & !\V1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|lrck_divider\(2),
	datad => VCC,
	cin => \V1|Add0~3\,
	combout => \V1|Add0~4_combout\,
	cout => \V1|Add0~5\);

-- Location: FF_X11_Y65_N13
\V1|lrck_divider[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_clock[1]~clkctrl_outclk\,
	d => \V1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|lrck_divider\(2));

-- Location: LCCOMB_X11_Y65_N14
\V1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Add0~6_combout\ = (\V1|lrck_divider\(3) & (!\V1|Add0~5\)) # (!\V1|lrck_divider\(3) & ((\V1|Add0~5\) # (GND)))
-- \V1|Add0~7\ = CARRY((!\V1|Add0~5\) # (!\V1|lrck_divider\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|lrck_divider\(3),
	datad => VCC,
	cin => \V1|Add0~5\,
	combout => \V1|Add0~6_combout\,
	cout => \V1|Add0~7\);

-- Location: FF_X11_Y65_N15
\V1|lrck_divider[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_clock[1]~clkctrl_outclk\,
	d => \V1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|lrck_divider\(3));

-- Location: LCCOMB_X11_Y65_N0
\V1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Equal0~0_combout\ = (\V1|lrck_divider\(1) & (\V1|lrck_divider\(0) & (\V1|lrck_divider\(3) & \V1|lrck_divider\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|lrck_divider\(1),
	datab => \V1|lrck_divider\(0),
	datac => \V1|lrck_divider\(3),
	datad => \V1|lrck_divider\(2),
	combout => \V1|Equal0~0_combout\);

-- Location: LCCOMB_X11_Y65_N16
\V1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Add0~8_combout\ = (\V1|lrck_divider\(4) & (\V1|Add0~7\ $ (GND))) # (!\V1|lrck_divider\(4) & (!\V1|Add0~7\ & VCC))
-- \V1|Add0~9\ = CARRY((\V1|lrck_divider\(4) & !\V1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \V1|lrck_divider\(4),
	datad => VCC,
	cin => \V1|Add0~7\,
	combout => \V1|Add0~8_combout\,
	cout => \V1|Add0~9\);

-- Location: FF_X11_Y65_N17
\V1|lrck_divider[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_clock[1]~clkctrl_outclk\,
	d => \V1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|lrck_divider\(4));

-- Location: LCCOMB_X11_Y65_N18
\V1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Add0~10_combout\ = (\V1|lrck_divider\(5) & (!\V1|Add0~9\)) # (!\V1|lrck_divider\(5) & ((\V1|Add0~9\) # (GND)))
-- \V1|Add0~11\ = CARRY((!\V1|Add0~9\) # (!\V1|lrck_divider\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|lrck_divider\(5),
	datad => VCC,
	cin => \V1|Add0~9\,
	combout => \V1|Add0~10_combout\,
	cout => \V1|Add0~11\);

-- Location: FF_X11_Y65_N19
\V1|lrck_divider[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_clock[1]~clkctrl_outclk\,
	d => \V1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|lrck_divider\(5));

-- Location: LCCOMB_X11_Y65_N20
\V1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Add0~12_combout\ = (\V1|lrck_divider\(6) & (\V1|Add0~11\ $ (GND))) # (!\V1|lrck_divider\(6) & (!\V1|Add0~11\ & VCC))
-- \V1|Add0~13\ = CARRY((\V1|lrck_divider\(6) & !\V1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|lrck_divider\(6),
	datad => VCC,
	cin => \V1|Add0~11\,
	combout => \V1|Add0~12_combout\,
	cout => \V1|Add0~13\);

-- Location: LCCOMB_X11_Y65_N4
\V1|lrck_divider~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|lrck_divider~1_combout\ = (\V1|Add0~12_combout\ & ((!\V1|Equal0~0_combout\) # (!\V1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V1|Equal0~1_combout\,
	datac => \V1|Equal0~0_combout\,
	datad => \V1|Add0~12_combout\,
	combout => \V1|lrck_divider~1_combout\);

-- Location: FF_X11_Y65_N5
\V1|lrck_divider[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_clock[1]~clkctrl_outclk\,
	d => \V1|lrck_divider~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|lrck_divider\(6));

-- Location: LCCOMB_X11_Y65_N22
\V1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Add0~14_combout\ = \V1|Add0~13\ $ (\V1|lrck_divider\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \V1|lrck_divider\(7),
	cin => \V1|Add0~13\,
	combout => \V1|Add0~14_combout\);

-- Location: LCCOMB_X11_Y65_N26
\V1|lrck_divider~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|lrck_divider~0_combout\ = (\V1|Add0~14_combout\ & ((!\V1|Equal0~1_combout\) # (!\V1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|Equal0~0_combout\,
	datac => \V1|Add0~14_combout\,
	datad => \V1|Equal0~1_combout\,
	combout => \V1|lrck_divider~0_combout\);

-- Location: FF_X11_Y65_N27
\V1|lrck_divider[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_clock[1]~clkctrl_outclk\,
	d => \V1|lrck_divider~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|lrck_divider\(7));

-- Location: LCCOMB_X11_Y65_N30
\V1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Equal0~1_combout\ = (\V1|lrck_divider\(7) & (\V1|lrck_divider\(5) & (!\V1|lrck_divider\(6) & \V1|lrck_divider\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|lrck_divider\(7),
	datab => \V1|lrck_divider\(5),
	datac => \V1|lrck_divider\(6),
	datad => \V1|lrck_divider\(4),
	combout => \V1|Equal0~1_combout\);

-- Location: LCCOMB_X11_Y65_N24
\V1|lrck~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|lrck~0_combout\ = \V1|lrck~q\ $ (((\V1|Equal0~0_combout\ & \V1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|Equal0~0_combout\,
	datac => \V1|lrck~q\,
	datad => \V1|Equal0~1_combout\,
	combout => \V1|lrck~0_combout\);

-- Location: FF_X11_Y65_N25
\V1|lrck\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_clock[1]~clkctrl_outclk\,
	d => \V1|lrck~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|lrck~q\);

-- Location: LCCOMB_X10_Y65_N10
\V1|bclk_divider~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|bclk_divider~1_combout\ = (!\V1|shift_out[14]~17_combout\ & !\V1|bclk_divider\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|shift_out[14]~17_combout\,
	datac => \V1|bclk_divider\(0),
	combout => \V1|bclk_divider~1_combout\);

-- Location: FF_X10_Y65_N11
\V1|bclk_divider[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_clock[1]~clkctrl_outclk\,
	d => \V1|bclk_divider~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|bclk_divider\(0));

-- Location: LCCOMB_X10_Y65_N8
\V1|bclk_divider~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|bclk_divider~2_combout\ = (!\V1|shift_out[14]~17_combout\ & (\V1|bclk_divider\(1) $ (\V1|bclk_divider\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|shift_out[14]~17_combout\,
	datac => \V1|bclk_divider\(1),
	datad => \V1|bclk_divider\(0),
	combout => \V1|bclk_divider~2_combout\);

-- Location: FF_X10_Y65_N9
\V1|bclk_divider[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_clock[1]~clkctrl_outclk\,
	d => \V1|bclk_divider~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|bclk_divider\(1));

-- Location: LCCOMB_X10_Y65_N14
\V1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Add1~0_combout\ = (\V1|bclk_divider\(1) & \V1|bclk_divider\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V1|bclk_divider\(1),
	datad => \V1|bclk_divider\(0),
	combout => \V1|Add1~0_combout\);

-- Location: LCCOMB_X11_Y65_N28
\V1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Equal0~2_combout\ = (\V1|Equal0~1_combout\ & \V1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V1|Equal0~1_combout\,
	datad => \V1|Equal0~0_combout\,
	combout => \V1|Equal0~2_combout\);

-- Location: LCCOMB_X10_Y65_N0
\V1|bclk_divider~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|bclk_divider~0_combout\ = (!\V1|Equal0~2_combout\ & ((\V1|Add1~0_combout\ & (!\V1|bclk_divider\(3) & !\V1|bclk_divider\(2))) # (!\V1|Add1~0_combout\ & ((\V1|bclk_divider\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|Add1~0_combout\,
	datab => \V1|bclk_divider\(3),
	datac => \V1|bclk_divider\(2),
	datad => \V1|Equal0~2_combout\,
	combout => \V1|bclk_divider~0_combout\);

-- Location: FF_X10_Y65_N1
\V1|bclk_divider[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_clock[1]~clkctrl_outclk\,
	d => \V1|bclk_divider~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|bclk_divider\(2));

-- Location: LCCOMB_X10_Y65_N4
\V1|bclk_divider~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|bclk_divider~3_combout\ = (!\V1|Equal0~2_combout\ & ((\V1|Add1~0_combout\ & (\V1|bclk_divider\(2) & !\V1|bclk_divider\(3))) # (!\V1|Add1~0_combout\ & ((\V1|bclk_divider\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|Add1~0_combout\,
	datab => \V1|bclk_divider\(2),
	datac => \V1|bclk_divider\(3),
	datad => \V1|Equal0~2_combout\,
	combout => \V1|bclk_divider~3_combout\);

-- Location: FF_X10_Y65_N5
\V1|bclk_divider[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_clock[1]~clkctrl_outclk\,
	d => \V1|bclk_divider~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|bclk_divider\(3));

-- Location: LCCOMB_X10_Y65_N30
\V1|shift_out[14]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out[14]~17_combout\ = (\V1|Equal0~2_combout\) # ((\V1|bclk_divider\(3) & (!\V1|bclk_divider\(2) & \V1|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|bclk_divider\(3),
	datab => \V1|bclk_divider\(2),
	datac => \V1|Add1~0_combout\,
	datad => \V1|Equal0~2_combout\,
	combout => \V1|shift_out[14]~17_combout\);

-- Location: LCCOMB_X10_Y65_N28
\V1|bclk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|bclk~0_combout\ = (\V1|bclk_divider\(0) & (\V1|bclk_divider\(2) & (!\V1|bclk_divider\(1) & !\V1|bclk_divider\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|bclk_divider\(0),
	datab => \V1|bclk_divider\(2),
	datac => \V1|bclk_divider\(1),
	datad => \V1|bclk_divider\(3),
	combout => \V1|bclk~0_combout\);

-- Location: LCCOMB_X10_Y65_N22
\V1|bclk~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|bclk~1_combout\ = (!\V1|shift_out[14]~17_combout\ & ((\V1|bclk~0_combout\) # (\V1|bclk~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|shift_out[14]~17_combout\,
	datab => \V1|bclk~0_combout\,
	datac => \V1|bclk~q\,
	combout => \V1|bclk~1_combout\);

-- Location: FF_X10_Y65_N23
\V1|bclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_clock[1]~clkctrl_outclk\,
	d => \V1|bclk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|bclk~q\);

-- Location: LCCOMB_X1_Y36_N22
\vgamap|videoSync|pixel_clock_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|pixel_clock_int~0_combout\ = !\vgamap|videoSync|pixel_clock_int~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|pixel_clock_int~q\,
	combout => \vgamap|videoSync|pixel_clock_int~0_combout\);

-- Location: LCCOMB_X1_Y36_N30
\vgamap|videoSync|pixel_clock_int~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|pixel_clock_int~feeder_combout\ = \vgamap|videoSync|pixel_clock_int~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|pixel_clock_int~0_combout\,
	combout => \vgamap|videoSync|pixel_clock_int~feeder_combout\);

-- Location: FF_X1_Y36_N31
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

-- Location: CLKCTRL_G3
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

-- Location: LCCOMB_X62_Y51_N8
\vgamap|videoSync|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add0~6_combout\ = (\vgamap|videoSync|h_count\(3) & (!\vgamap|videoSync|Add0~5\)) # (!\vgamap|videoSync|h_count\(3) & ((\vgamap|videoSync|Add0~5\) # (GND)))
-- \vgamap|videoSync|Add0~7\ = CARRY((!\vgamap|videoSync|Add0~5\) # (!\vgamap|videoSync|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|h_count\(3),
	datad => VCC,
	cin => \vgamap|videoSync|Add0~5\,
	combout => \vgamap|videoSync|Add0~6_combout\,
	cout => \vgamap|videoSync|Add0~7\);

-- Location: LCCOMB_X62_Y51_N10
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

-- Location: FF_X62_Y51_N11
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

-- Location: LCCOMB_X62_Y51_N12
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

-- Location: LCCOMB_X62_Y51_N22
\vgamap|videoSync|h_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|h_count~2_combout\ = (!\vgamap|videoSync|Equal0~3_combout\ & \vgamap|videoSync|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|Equal0~3_combout\,
	datad => \vgamap|videoSync|Add0~10_combout\,
	combout => \vgamap|videoSync|h_count~2_combout\);

-- Location: FF_X62_Y51_N23
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

-- Location: LCCOMB_X62_Y51_N14
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

-- Location: FF_X62_Y51_N15
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

-- Location: LCCOMB_X62_Y51_N16
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

-- Location: FF_X62_Y51_N17
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

-- Location: LCCOMB_X62_Y51_N18
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

-- Location: LCCOMB_X61_Y51_N28
\vgamap|videoSync|h_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|h_count~0_combout\ = (!\vgamap|videoSync|Equal0~3_combout\ & \vgamap|videoSync|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|Equal0~3_combout\,
	datad => \vgamap|videoSync|Add0~16_combout\,
	combout => \vgamap|videoSync|h_count~0_combout\);

-- Location: FF_X61_Y51_N29
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

-- Location: LCCOMB_X62_Y51_N20
\vgamap|videoSync|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add0~18_combout\ = \vgamap|videoSync|Add0~17\ $ (\vgamap|videoSync|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vgamap|videoSync|h_count\(9),
	cin => \vgamap|videoSync|Add0~17\,
	combout => \vgamap|videoSync|Add0~18_combout\);

-- Location: LCCOMB_X62_Y51_N24
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

-- Location: FF_X62_Y51_N25
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

-- Location: LCCOMB_X61_Y51_N14
\vgamap|videoSync|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Equal0~2_combout\ = (!\vgamap|videoSync|h_count\(7) & (!\vgamap|videoSync|h_count\(3) & (!\vgamap|videoSync|h_count\(4) & \vgamap|videoSync|h_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|h_count\(7),
	datab => \vgamap|videoSync|h_count\(3),
	datac => \vgamap|videoSync|h_count\(4),
	datad => \vgamap|videoSync|h_count\(5),
	combout => \vgamap|videoSync|Equal0~2_combout\);

-- Location: LCCOMB_X62_Y51_N28
\vgamap|videoSync|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Equal0~0_combout\ = (!\vgamap|videoSync|h_count\(0) & (!\vgamap|videoSync|h_count\(6) & (!\vgamap|videoSync|h_count\(1) & !\vgamap|videoSync|h_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|h_count\(0),
	datab => \vgamap|videoSync|h_count\(6),
	datac => \vgamap|videoSync|h_count\(1),
	datad => \vgamap|videoSync|h_count\(2),
	combout => \vgamap|videoSync|Equal0~0_combout\);

-- Location: LCCOMB_X61_Y51_N16
\vgamap|videoSync|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Equal0~3_combout\ = (\vgamap|videoSync|h_count\(8) & (\vgamap|videoSync|h_count\(9) & (\vgamap|videoSync|Equal0~2_combout\ & \vgamap|videoSync|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|h_count\(8),
	datab => \vgamap|videoSync|h_count\(9),
	datac => \vgamap|videoSync|Equal0~2_combout\,
	datad => \vgamap|videoSync|Equal0~0_combout\,
	combout => \vgamap|videoSync|Equal0~3_combout\);

-- Location: LCCOMB_X62_Y51_N2
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

-- Location: LCCOMB_X62_Y51_N30
\vgamap|videoSync|h_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|h_count~3_combout\ = (!\vgamap|videoSync|Equal0~3_combout\ & \vgamap|videoSync|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|Equal0~3_combout\,
	datad => \vgamap|videoSync|Add0~0_combout\,
	combout => \vgamap|videoSync|h_count~3_combout\);

-- Location: FF_X62_Y51_N31
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

-- Location: LCCOMB_X62_Y51_N4
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

-- Location: FF_X62_Y51_N5
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

-- Location: LCCOMB_X62_Y51_N6
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

-- Location: FF_X62_Y51_N7
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

-- Location: FF_X62_Y51_N9
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

-- Location: LCCOMB_X61_Y53_N4
\vgamap|videoSync|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|LessThan5~0_combout\ = ((!\vgamap|videoSync|h_count\(8) & !\vgamap|videoSync|h_count\(7))) # (!\vgamap|videoSync|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|h_count\(8),
	datac => \vgamap|videoSync|h_count\(9),
	datad => \vgamap|videoSync|h_count\(7),
	combout => \vgamap|videoSync|LessThan5~0_combout\);

-- Location: FF_X60_Y53_N17
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

-- Location: FF_X61_Y53_N9
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

-- Location: FF_X61_Y53_N31
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

-- Location: FF_X60_Y53_N23
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

-- Location: LCCOMB_X61_Y53_N6
\vgamap|videoGen|pixelDraw~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~15_combout\ = (!\vgamap|videoSync|pixel_column\(3) & (\vgamap|videoSync|pixel_column\(6) & (!\vgamap|videoSync|pixel_column\(5) & !\vgamap|videoSync|pixel_column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(3),
	datab => \vgamap|videoSync|pixel_column\(6),
	datac => \vgamap|videoSync|pixel_column\(5),
	datad => \vgamap|videoSync|pixel_column\(4),
	combout => \vgamap|videoGen|pixelDraw~15_combout\);

-- Location: LCCOMB_X59_Y53_N20
\vgamap|videoGen|pixelDraw~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~14_combout\ = (\vgamap|videoSync|pixel_column\(4) & (!\vgamap|videoSync|pixel_column\(6) & \vgamap|videoSync|pixel_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(4),
	datac => \vgamap|videoSync|pixel_column\(6),
	datad => \vgamap|videoSync|pixel_column\(5),
	combout => \vgamap|videoGen|pixelDraw~14_combout\);

-- Location: FF_X60_Y52_N23
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

-- Location: LCCOMB_X61_Y52_N4
\vgamap|videoSync|pixel_column[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|pixel_column[8]~feeder_combout\ = \vgamap|videoSync|h_count\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|h_count\(8),
	combout => \vgamap|videoSync|pixel_column[8]~feeder_combout\);

-- Location: FF_X61_Y52_N5
\vgamap|videoSync|pixel_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|pixel_column[8]~feeder_combout\,
	ena => \vgamap|videoSync|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_column\(8));

-- Location: FF_X60_Y53_N1
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

-- Location: LCCOMB_X61_Y52_N6
\vgamap|videoGen|pixelDraw~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~13_combout\ = (\vgamap|videoSync|pixel_column\(9) & (!\vgamap|videoSync|pixel_column\(8) & !\vgamap|videoSync|pixel_column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(9),
	datab => \vgamap|videoSync|pixel_column\(8),
	datac => \vgamap|videoSync|pixel_column\(7),
	combout => \vgamap|videoGen|pixelDraw~13_combout\);

-- Location: FF_X60_Y53_N9
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

-- Location: FF_X61_Y52_N27
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

-- Location: FF_X60_Y53_N19
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

-- Location: LCCOMB_X61_Y52_N8
\vgamap|videoGen|LessThan12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan12~0_combout\ = (!\vgamap|videoSync|pixel_column\(2) & ((!\vgamap|videoSync|pixel_column\(0)) # (!\vgamap|videoSync|pixel_column\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(1),
	datab => \vgamap|videoSync|pixel_column\(2),
	datad => \vgamap|videoSync|pixel_column\(0),
	combout => \vgamap|videoGen|LessThan12~0_combout\);

-- Location: LCCOMB_X66_Y53_N22
\vgamap|videoGen|pixelDraw~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~16_combout\ = (\vgamap|videoGen|pixelDraw~13_combout\ & ((\vgamap|videoGen|pixelDraw~14_combout\) # ((\vgamap|videoGen|pixelDraw~15_combout\ & \vgamap|videoGen|LessThan12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~15_combout\,
	datab => \vgamap|videoGen|pixelDraw~14_combout\,
	datac => \vgamap|videoGen|pixelDraw~13_combout\,
	datad => \vgamap|videoGen|LessThan12~0_combout\,
	combout => \vgamap|videoGen|pixelDraw~16_combout\);

-- Location: LCCOMB_X63_Y52_N22
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

-- Location: LCCOMB_X63_Y52_N24
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

-- Location: LCCOMB_X62_Y52_N18
\vgamap|videoSync|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|LessThan1~1_combout\ = (!\vgamap|videoSync|v_count\(4) & (!\vgamap|videoSync|v_count\(5) & (!\vgamap|videoSync|v_count\(6) & !\vgamap|videoSync|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count\(4),
	datab => \vgamap|videoSync|v_count\(5),
	datac => \vgamap|videoSync|v_count\(6),
	datad => \vgamap|videoSync|v_count\(7),
	combout => \vgamap|videoSync|LessThan1~1_combout\);

-- Location: LCCOMB_X63_Y52_N12
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

-- Location: LCCOMB_X62_Y52_N0
\vgamap|videoSync|v_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|v_count~8_combout\ = (\vgamap|videoSync|Add1~0_combout\ & ((\vgamap|videoSync|process_1~8_combout\) # (\vgamap|videoSync|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|process_1~8_combout\,
	datac => \vgamap|videoSync|Add1~0_combout\,
	datad => \vgamap|videoSync|LessThan1~2_combout\,
	combout => \vgamap|videoSync|v_count~8_combout\);

-- Location: FF_X62_Y52_N1
\vgamap|videoSync|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|v_count~8_combout\,
	ena => \vgamap|videoSync|v_count[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|v_count\(0));

-- Location: LCCOMB_X63_Y52_N14
\vgamap|videoSync|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add1~2_combout\ = (\vgamap|videoSync|v_count\(1) & (!\vgamap|videoSync|Add1~1\)) # (!\vgamap|videoSync|v_count\(1) & ((\vgamap|videoSync|Add1~1\) # (GND)))
-- \vgamap|videoSync|Add1~3\ = CARRY((!\vgamap|videoSync|Add1~1\) # (!\vgamap|videoSync|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count\(1),
	datad => VCC,
	cin => \vgamap|videoSync|Add1~1\,
	combout => \vgamap|videoSync|Add1~2_combout\,
	cout => \vgamap|videoSync|Add1~3\);

-- Location: LCCOMB_X62_Y52_N10
\vgamap|videoSync|v_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|v_count~9_combout\ = (\vgamap|videoSync|Add1~2_combout\ & ((\vgamap|videoSync|process_1~8_combout\) # (\vgamap|videoSync|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|process_1~8_combout\,
	datab => \vgamap|videoSync|LessThan1~2_combout\,
	datad => \vgamap|videoSync|Add1~2_combout\,
	combout => \vgamap|videoSync|v_count~9_combout\);

-- Location: FF_X62_Y52_N11
\vgamap|videoSync|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|v_count~9_combout\,
	ena => \vgamap|videoSync|v_count[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|v_count\(1));

-- Location: LCCOMB_X63_Y52_N16
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

-- Location: LCCOMB_X62_Y52_N4
\vgamap|videoSync|v_count[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|v_count[2]~10_combout\ = (\vgamap|videoSync|Add1~4_combout\ & ((\vgamap|videoSync|v_count[4]~0_combout\) # ((!\vgamap|videoSync|v_count[5]~1_combout\ & \vgamap|videoSync|v_count\(2))))) # (!\vgamap|videoSync|Add1~4_combout\ & 
-- (!\vgamap|videoSync|v_count[5]~1_combout\ & (\vgamap|videoSync|v_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|Add1~4_combout\,
	datab => \vgamap|videoSync|v_count[5]~1_combout\,
	datac => \vgamap|videoSync|v_count\(2),
	datad => \vgamap|videoSync|v_count[4]~0_combout\,
	combout => \vgamap|videoSync|v_count[2]~10_combout\);

-- Location: FF_X62_Y52_N5
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

-- Location: LCCOMB_X62_Y52_N28
\vgamap|videoSync|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|LessThan1~0_combout\ = (((!\vgamap|videoSync|v_count\(1) & !\vgamap|videoSync|v_count\(0))) # (!\vgamap|videoSync|v_count\(3))) # (!\vgamap|videoSync|v_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count\(1),
	datab => \vgamap|videoSync|v_count\(0),
	datac => \vgamap|videoSync|v_count\(2),
	datad => \vgamap|videoSync|v_count\(3),
	combout => \vgamap|videoSync|LessThan1~0_combout\);

-- Location: LCCOMB_X62_Y52_N24
\vgamap|videoSync|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|LessThan1~2_combout\ = (!\vgamap|videoSync|v_count\(8) & (\vgamap|videoSync|LessThan1~1_combout\ & \vgamap|videoSync|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count\(8),
	datab => \vgamap|videoSync|LessThan1~1_combout\,
	datad => \vgamap|videoSync|LessThan1~0_combout\,
	combout => \vgamap|videoSync|LessThan1~2_combout\);

-- Location: LCCOMB_X62_Y51_N26
\vgamap|videoSync|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Equal0~1_combout\ = (\vgamap|videoSync|h_count\(9) & \vgamap|videoSync|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|h_count\(9),
	datad => \vgamap|videoSync|Equal0~0_combout\,
	combout => \vgamap|videoSync|Equal0~1_combout\);

-- Location: LCCOMB_X61_Y51_N18
\vgamap|videoSync|process_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|process_1~3_combout\ = (\vgamap|videoSync|h_count\(3) & \vgamap|videoSync|h_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|h_count\(3),
	datad => \vgamap|videoSync|h_count\(4),
	combout => \vgamap|videoSync|process_1~3_combout\);

-- Location: LCCOMB_X61_Y51_N24
\vgamap|videoSync|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Equal1~0_combout\ = (\vgamap|videoSync|h_count\(8)) # ((\vgamap|videoSync|h_count\(5)) # ((!\vgamap|videoSync|process_1~3_combout\) # (!\vgamap|videoSync|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|h_count\(8),
	datab => \vgamap|videoSync|h_count\(5),
	datac => \vgamap|videoSync|h_count\(7),
	datad => \vgamap|videoSync|process_1~3_combout\,
	combout => \vgamap|videoSync|Equal1~0_combout\);

-- Location: LCCOMB_X62_Y52_N12
\vgamap|videoSync|v_count[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|v_count[4]~0_combout\ = (\vgamap|videoSync|Equal0~1_combout\ & (!\vgamap|videoSync|Equal1~0_combout\ & ((\vgamap|videoSync|process_1~8_combout\) # (\vgamap|videoSync|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|process_1~8_combout\,
	datab => \vgamap|videoSync|LessThan1~2_combout\,
	datac => \vgamap|videoSync|Equal0~1_combout\,
	datad => \vgamap|videoSync|Equal1~0_combout\,
	combout => \vgamap|videoSync|v_count[4]~0_combout\);

-- Location: LCCOMB_X62_Y52_N14
\vgamap|videoSync|v_count[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|v_count[6]~4_combout\ = (\vgamap|videoSync|Add1~12_combout\ & ((\vgamap|videoSync|v_count[4]~0_combout\) # ((!\vgamap|videoSync|v_count[5]~1_combout\ & \vgamap|videoSync|v_count\(6))))) # (!\vgamap|videoSync|Add1~12_combout\ & 
-- (!\vgamap|videoSync|v_count[5]~1_combout\ & (\vgamap|videoSync|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|Add1~12_combout\,
	datab => \vgamap|videoSync|v_count[5]~1_combout\,
	datac => \vgamap|videoSync|v_count\(6),
	datad => \vgamap|videoSync|v_count[4]~0_combout\,
	combout => \vgamap|videoSync|v_count[6]~4_combout\);

-- Location: FF_X62_Y52_N15
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

-- Location: LCCOMB_X63_Y52_N26
\vgamap|videoSync|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add1~14_combout\ = (\vgamap|videoSync|v_count\(7) & (!\vgamap|videoSync|Add1~13\)) # (!\vgamap|videoSync|v_count\(7) & ((\vgamap|videoSync|Add1~13\) # (GND)))
-- \vgamap|videoSync|Add1~15\ = CARRY((!\vgamap|videoSync|Add1~13\) # (!\vgamap|videoSync|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count\(7),
	datad => VCC,
	cin => \vgamap|videoSync|Add1~13\,
	combout => \vgamap|videoSync|Add1~14_combout\,
	cout => \vgamap|videoSync|Add1~15\);

-- Location: LCCOMB_X62_Y52_N16
\vgamap|videoSync|v_count[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|v_count[7]~5_combout\ = (\vgamap|videoSync|Add1~14_combout\ & ((\vgamap|videoSync|v_count[4]~0_combout\) # ((!\vgamap|videoSync|v_count[5]~1_combout\ & \vgamap|videoSync|v_count\(7))))) # (!\vgamap|videoSync|Add1~14_combout\ & 
-- (!\vgamap|videoSync|v_count[5]~1_combout\ & (\vgamap|videoSync|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|Add1~14_combout\,
	datab => \vgamap|videoSync|v_count[5]~1_combout\,
	datac => \vgamap|videoSync|v_count\(7),
	datad => \vgamap|videoSync|v_count[4]~0_combout\,
	combout => \vgamap|videoSync|v_count[7]~5_combout\);

-- Location: FF_X62_Y52_N17
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

-- Location: LCCOMB_X63_Y52_N28
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

-- Location: LCCOMB_X63_Y52_N6
\vgamap|videoSync|v_count[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|v_count[8]~6_combout\ = (\vgamap|videoSync|v_count[5]~1_combout\ & (\vgamap|videoSync|Add1~16_combout\ & ((\vgamap|videoSync|v_count[4]~0_combout\)))) # (!\vgamap|videoSync|v_count[5]~1_combout\ & ((\vgamap|videoSync|v_count\(8)) # 
-- ((\vgamap|videoSync|Add1~16_combout\ & \vgamap|videoSync|v_count[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count[5]~1_combout\,
	datab => \vgamap|videoSync|Add1~16_combout\,
	datac => \vgamap|videoSync|v_count\(8),
	datad => \vgamap|videoSync|v_count[4]~0_combout\,
	combout => \vgamap|videoSync|v_count[8]~6_combout\);

-- Location: FF_X63_Y52_N7
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

-- Location: LCCOMB_X63_Y52_N30
\vgamap|videoSync|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add1~18_combout\ = \vgamap|videoSync|v_count\(9) $ (\vgamap|videoSync|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count\(9),
	cin => \vgamap|videoSync|Add1~17\,
	combout => \vgamap|videoSync|Add1~18_combout\);

-- Location: LCCOMB_X62_Y52_N26
\vgamap|videoSync|v_count[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|v_count[9]~2_combout\ = (\vgamap|videoSync|Add1~18_combout\ & ((\vgamap|videoSync|v_count[4]~0_combout\) # ((!\vgamap|videoSync|v_count[5]~1_combout\ & \vgamap|videoSync|v_count\(9))))) # (!\vgamap|videoSync|Add1~18_combout\ & 
-- (!\vgamap|videoSync|v_count[5]~1_combout\ & (\vgamap|videoSync|v_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|Add1~18_combout\,
	datab => \vgamap|videoSync|v_count[5]~1_combout\,
	datac => \vgamap|videoSync|v_count\(9),
	datad => \vgamap|videoSync|v_count[4]~0_combout\,
	combout => \vgamap|videoSync|v_count[9]~2_combout\);

-- Location: FF_X62_Y52_N27
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

-- Location: LCCOMB_X62_Y52_N8
\vgamap|videoSync|process_1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|process_1~7_combout\ = (!\vgamap|videoSync|h_count\(9)) # (!\vgamap|videoSync|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|v_count\(9),
	datad => \vgamap|videoSync|h_count\(9),
	combout => \vgamap|videoSync|process_1~7_combout\);

-- Location: LCCOMB_X62_Y51_N0
\vgamap|videoSync|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|process_1~0_combout\ = (!\vgamap|videoSync|h_count\(5) & (!\vgamap|videoSync|h_count\(6) & ((!\vgamap|videoSync|h_count\(4)) # (!\vgamap|videoSync|h_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|h_count\(5),
	datab => \vgamap|videoSync|h_count\(3),
	datac => \vgamap|videoSync|h_count\(6),
	datad => \vgamap|videoSync|h_count\(4),
	combout => \vgamap|videoSync|process_1~0_combout\);

-- Location: LCCOMB_X62_Y52_N6
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

-- Location: LCCOMB_X62_Y52_N2
\vgamap|videoSync|v_count[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|v_count[5]~1_combout\ = (\vgamap|videoSync|process_1~8_combout\ & (((\vgamap|videoSync|Equal0~1_combout\ & !\vgamap|videoSync|Equal1~0_combout\)))) # (!\vgamap|videoSync|process_1~8_combout\ & (((\vgamap|videoSync|Equal0~1_combout\ & 
-- !\vgamap|videoSync|Equal1~0_combout\)) # (!\vgamap|videoSync|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|process_1~8_combout\,
	datab => \vgamap|videoSync|LessThan1~2_combout\,
	datac => \vgamap|videoSync|Equal0~1_combout\,
	datad => \vgamap|videoSync|Equal1~0_combout\,
	combout => \vgamap|videoSync|v_count[5]~1_combout\);

-- Location: LCCOMB_X63_Y52_N18
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

-- Location: LCCOMB_X63_Y52_N2
\vgamap|videoSync|v_count[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|v_count[3]~11_combout\ = (\vgamap|videoSync|v_count[5]~1_combout\ & (\vgamap|videoSync|Add1~6_combout\ & ((\vgamap|videoSync|v_count[4]~0_combout\)))) # (!\vgamap|videoSync|v_count[5]~1_combout\ & ((\vgamap|videoSync|v_count\(3)) # 
-- ((\vgamap|videoSync|Add1~6_combout\ & \vgamap|videoSync|v_count[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count[5]~1_combout\,
	datab => \vgamap|videoSync|Add1~6_combout\,
	datac => \vgamap|videoSync|v_count\(3),
	datad => \vgamap|videoSync|v_count[4]~0_combout\,
	combout => \vgamap|videoSync|v_count[3]~11_combout\);

-- Location: FF_X63_Y52_N3
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

-- Location: LCCOMB_X63_Y52_N20
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

-- Location: LCCOMB_X62_Y52_N22
\vgamap|videoSync|v_count[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|v_count[4]~7_combout\ = (\vgamap|videoSync|Add1~8_combout\ & ((\vgamap|videoSync|v_count[4]~0_combout\) # ((!\vgamap|videoSync|v_count[5]~1_combout\ & \vgamap|videoSync|v_count\(4))))) # (!\vgamap|videoSync|Add1~8_combout\ & 
-- (!\vgamap|videoSync|v_count[5]~1_combout\ & (\vgamap|videoSync|v_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|Add1~8_combout\,
	datab => \vgamap|videoSync|v_count[5]~1_combout\,
	datac => \vgamap|videoSync|v_count\(4),
	datad => \vgamap|videoSync|v_count[4]~0_combout\,
	combout => \vgamap|videoSync|v_count[4]~7_combout\);

-- Location: FF_X62_Y52_N23
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

-- Location: LCCOMB_X62_Y52_N20
\vgamap|videoSync|v_count[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|v_count[5]~3_combout\ = (\vgamap|videoSync|Add1~10_combout\ & ((\vgamap|videoSync|v_count[4]~0_combout\) # ((!\vgamap|videoSync|v_count[5]~1_combout\ & \vgamap|videoSync|v_count\(5))))) # (!\vgamap|videoSync|Add1~10_combout\ & 
-- (!\vgamap|videoSync|v_count[5]~1_combout\ & (\vgamap|videoSync|v_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|Add1~10_combout\,
	datab => \vgamap|videoSync|v_count[5]~1_combout\,
	datac => \vgamap|videoSync|v_count\(5),
	datad => \vgamap|videoSync|v_count[4]~0_combout\,
	combout => \vgamap|videoSync|v_count[5]~3_combout\);

-- Location: FF_X62_Y52_N21
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

-- Location: LCCOMB_X63_Y52_N8
\vgamap|videoSync|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|LessThan6~0_combout\ = (\vgamap|videoSync|v_count\(6) & (\vgamap|videoSync|v_count\(8) & (\vgamap|videoSync|v_count\(7) & \vgamap|videoSync|v_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count\(6),
	datab => \vgamap|videoSync|v_count\(8),
	datac => \vgamap|videoSync|v_count\(7),
	datad => \vgamap|videoSync|v_count\(5),
	combout => \vgamap|videoSync|LessThan6~0_combout\);

-- Location: LCCOMB_X63_Y52_N0
\vgamap|videoSync|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|LessThan6~1_combout\ = (\vgamap|videoSync|v_count\(0)) # ((\vgamap|videoSync|v_count\(3)) # ((\vgamap|videoSync|v_count\(2)) # (\vgamap|videoSync|v_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count\(0),
	datab => \vgamap|videoSync|v_count\(3),
	datac => \vgamap|videoSync|v_count\(2),
	datad => \vgamap|videoSync|v_count\(1),
	combout => \vgamap|videoSync|LessThan6~1_combout\);

-- Location: LCCOMB_X63_Y52_N10
\vgamap|videoSync|LessThan6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|LessThan6~2_combout\ = (!\vgamap|videoSync|v_count\(9) & (((!\vgamap|videoSync|v_count\(4) & !\vgamap|videoSync|LessThan6~1_combout\)) # (!\vgamap|videoSync|LessThan6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count\(9),
	datab => \vgamap|videoSync|v_count\(4),
	datac => \vgamap|videoSync|LessThan6~0_combout\,
	datad => \vgamap|videoSync|LessThan6~1_combout\,
	combout => \vgamap|videoSync|LessThan6~2_combout\);

-- Location: FF_X60_Y52_N7
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

-- Location: FF_X60_Y52_N5
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

-- Location: FF_X59_Y52_N23
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

-- Location: FF_X59_Y52_N5
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

-- Location: FF_X59_Y52_N27
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

-- Location: FF_X59_Y52_N25
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

-- Location: LCCOMB_X59_Y52_N2
\vgamap|videoGen|LessThan35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan35~0_combout\ = (\vgamap|videoSync|pixel_row\(2)) # ((\vgamap|videoSync|pixel_row\(0) & \vgamap|videoSync|pixel_row\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|pixel_row\(0),
	datac => \vgamap|videoSync|pixel_row\(2),
	datad => \vgamap|videoSync|pixel_row\(1),
	combout => \vgamap|videoGen|LessThan35~0_combout\);

-- Location: LCCOMB_X59_Y52_N16
\vgamap|videoGen|LessThan35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan35~1_combout\ = (\vgamap|videoSync|pixel_row\(3) & (\vgamap|videoSync|pixel_row\(4) & \vgamap|videoGen|LessThan35~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(3),
	datac => \vgamap|videoSync|pixel_row\(4),
	datad => \vgamap|videoGen|LessThan35~0_combout\,
	combout => \vgamap|videoGen|LessThan35~1_combout\);

-- Location: FF_X60_Y52_N13
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

-- Location: FF_X60_Y52_N31
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

-- Location: FF_X60_Y52_N9
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

-- Location: LCCOMB_X59_Y52_N8
\vgamap|videoGen|LessThan65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan65~0_combout\ = (\vgamap|videoSync|pixel_row\(8) & \vgamap|videoSync|pixel_row\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|pixel_row\(8),
	datad => \vgamap|videoSync|pixel_row\(7),
	combout => \vgamap|videoGen|LessThan65~0_combout\);

-- Location: LCCOMB_X59_Y52_N20
\vgamap|videoGen|LessThan36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan36~0_combout\ = (!\vgamap|videoSync|pixel_row\(4) & (((!\vgamap|videoSync|pixel_row\(3)) # (!\vgamap|videoSync|pixel_row\(2))) # (!\vgamap|videoSync|pixel_row\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(4),
	datab => \vgamap|videoSync|pixel_row\(1),
	datac => \vgamap|videoSync|pixel_row\(2),
	datad => \vgamap|videoSync|pixel_row\(3),
	combout => \vgamap|videoGen|LessThan36~0_combout\);

-- Location: LCCOMB_X59_Y52_N18
\vgamap|videoGen|pixelDraw~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~12_combout\ = (!\vgamap|videoSync|pixel_row\(6) & (\vgamap|videoGen|LessThan65~0_combout\ & ((\vgamap|videoGen|LessThan36~0_combout\) # (!\vgamap|videoSync|pixel_row\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(5),
	datab => \vgamap|videoSync|pixel_row\(6),
	datac => \vgamap|videoGen|LessThan65~0_combout\,
	datad => \vgamap|videoGen|LessThan36~0_combout\,
	combout => \vgamap|videoGen|pixelDraw~12_combout\);

-- Location: LCCOMB_X59_Y52_N6
\vgamap|videoGen|pixelDraw~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~115_combout\ = (\vgamap|videoGen|pixelDraw~12_combout\ & ((\vgamap|videoSync|pixel_row\(5)) # ((\vgamap|videoGen|LessThan35~1_combout\) # (\vgamap|videoSync|pixel_row\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(5),
	datab => \vgamap|videoGen|LessThan35~1_combout\,
	datac => \vgamap|videoSync|pixel_row\(6),
	datad => \vgamap|videoGen|pixelDraw~12_combout\,
	combout => \vgamap|videoGen|pixelDraw~115_combout\);

-- Location: LCCOMB_X61_Y52_N12
\vgamap|videoGen|pixelDraw~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~22_combout\ = (\vgamap|videoSync|pixel_column\(9) & (!\vgamap|videoSync|pixel_column\(8) & (!\vgamap|videoSync|pixel_column\(7) & !\vgamap|videoSync|pixel_column\(6))))

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
	combout => \vgamap|videoGen|pixelDraw~22_combout\);

-- Location: LCCOMB_X60_Y53_N24
\vgamap|videoGen|LessThan6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan6~4_combout\ = (!\vgamap|videoSync|pixel_column\(0) & !\vgamap|videoSync|pixel_column\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(0),
	datac => \vgamap|videoSync|pixel_column\(1),
	combout => \vgamap|videoGen|LessThan6~4_combout\);

-- Location: LCCOMB_X60_Y53_N6
\vgamap|videoGen|LessThan6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan6~5_combout\ = (!\vgamap|videoSync|pixel_column\(4) & (!\vgamap|videoSync|pixel_column\(3) & ((\vgamap|videoGen|LessThan6~4_combout\) # (!\vgamap|videoSync|pixel_column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(4),
	datab => \vgamap|videoSync|pixel_column\(3),
	datac => \vgamap|videoGen|LessThan6~4_combout\,
	datad => \vgamap|videoSync|pixel_column\(2),
	combout => \vgamap|videoGen|LessThan6~5_combout\);

-- Location: LCCOMB_X61_Y52_N22
\vgamap|videoGen|pixelDraw~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~23_combout\ = (\vgamap|videoSync|pixel_column\(4) & ((\vgamap|videoSync|pixel_column\(2)) # ((\vgamap|videoSync|pixel_column\(3)) # (\vgamap|videoSync|pixel_column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(2),
	datab => \vgamap|videoSync|pixel_column\(4),
	datac => \vgamap|videoSync|pixel_column\(3),
	datad => \vgamap|videoSync|pixel_column\(1),
	combout => \vgamap|videoGen|pixelDraw~23_combout\);

-- Location: LCCOMB_X61_Y53_N20
\vgamap|videoGen|pixelDraw~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~24_combout\ = (\vgamap|videoSync|pixel_column\(5) & (\vgamap|videoGen|LessThan6~5_combout\)) # (!\vgamap|videoSync|pixel_column\(5) & ((\vgamap|videoGen|pixelDraw~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoGen|LessThan6~5_combout\,
	datac => \vgamap|videoGen|pixelDraw~23_combout\,
	datad => \vgamap|videoSync|pixel_column\(5),
	combout => \vgamap|videoGen|pixelDraw~24_combout\);

-- Location: LCCOMB_X66_Y53_N14
\vgamap|videoGen|pixelDraw~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~25_combout\ = (\vgamap|videoGen|pixelDraw~22_combout\ & (\vgamap|videoGen|pixelDraw~115_combout\ & \vgamap|videoGen|pixelDraw~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoGen|pixelDraw~22_combout\,
	datac => \vgamap|videoGen|pixelDraw~115_combout\,
	datad => \vgamap|videoGen|pixelDraw~24_combout\,
	combout => \vgamap|videoGen|pixelDraw~25_combout\);

-- Location: LCCOMB_X59_Y53_N4
\vgamap|videoGen|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan5~0_combout\ = (!\vgamap|videoSync|pixel_column\(4) & !\vgamap|videoSync|pixel_column\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|pixel_column\(4),
	datad => \vgamap|videoSync|pixel_column\(5),
	combout => \vgamap|videoGen|LessThan5~0_combout\);

-- Location: LCCOMB_X59_Y53_N10
\vgamap|videoGen|pixelDraw~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~19_combout\ = (\vgamap|videoSync|pixel_column\(3) & \vgamap|videoSync|pixel_column\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|pixel_column\(3),
	datad => \vgamap|videoSync|pixel_column\(2),
	combout => \vgamap|videoGen|pixelDraw~19_combout\);

-- Location: LCCOMB_X59_Y53_N14
\vgamap|videoGen|pixelDraw~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~20_combout\ = (\vgamap|videoSync|pixel_column\(6) & (((\vgamap|videoSync|pixel_column\(1) & \vgamap|videoGen|pixelDraw~19_combout\)) # (!\vgamap|videoGen|LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(1),
	datab => \vgamap|videoSync|pixel_column\(6),
	datac => \vgamap|videoGen|LessThan5~0_combout\,
	datad => \vgamap|videoGen|pixelDraw~19_combout\,
	combout => \vgamap|videoGen|pixelDraw~20_combout\);

-- Location: LCCOMB_X60_Y53_N26
\vgamap|videoGen|LessThan44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan44~0_combout\ = (\vgamap|videoSync|pixel_column\(1)) # ((\vgamap|videoSync|pixel_column\(0)) # (\vgamap|videoSync|pixel_column\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|pixel_column\(1),
	datac => \vgamap|videoSync|pixel_column\(0),
	datad => \vgamap|videoSync|pixel_column\(2),
	combout => \vgamap|videoGen|LessThan44~0_combout\);

-- Location: LCCOMB_X58_Y53_N10
\vgamap|videoGen|pixelDraw~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~116_combout\ = (\vgamap|videoSync|pixel_column\(5) & ((\vgamap|videoSync|pixel_column\(3)) # ((\vgamap|videoSync|pixel_column\(4)) # (\vgamap|videoGen|LessThan44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(3),
	datab => \vgamap|videoSync|pixel_column\(4),
	datac => \vgamap|videoSync|pixel_column\(5),
	datad => \vgamap|videoGen|LessThan44~0_combout\,
	combout => \vgamap|videoGen|pixelDraw~116_combout\);

-- Location: LCCOMB_X66_Y53_N10
\vgamap|videoGen|pixelDraw~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~21_combout\ = ((\vgamap|videoGen|pixelDraw~116_combout\) # (!\vgamap|videoGen|pixelDraw~20_combout\)) # (!\vgamap|videoGen|pixelDraw~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoGen|pixelDraw~13_combout\,
	datac => \vgamap|videoGen|pixelDraw~20_combout\,
	datad => \vgamap|videoGen|pixelDraw~116_combout\,
	combout => \vgamap|videoGen|pixelDraw~21_combout\);

-- Location: LCCOMB_X66_Y53_N26
\vgamap|videoGen|colorAddress~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~57_combout\ = (!\vgamap|videoGen|pixelDraw~25_combout\ & (((!\vgamap|videoGen|pixelDraw~16_combout\ & \vgamap|videoGen|pixelDraw~21_combout\)) # (!\vgamap|videoGen|pixelDraw~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~16_combout\,
	datab => \vgamap|videoGen|pixelDraw~115_combout\,
	datac => \vgamap|videoGen|pixelDraw~25_combout\,
	datad => \vgamap|videoGen|pixelDraw~21_combout\,
	combout => \vgamap|videoGen|colorAddress~57_combout\);

-- Location: LCCOMB_X65_Y53_N30
\vgamap|videoGen|pixelDraw~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~54_combout\ = (\vgamap|videoSync|pixel_column\(6) & (((\vgamap|videoSync|pixel_column\(5) & !\vgamap|videoSync|pixel_column\(7))))) # (!\vgamap|videoSync|pixel_column\(6) & (!\vgamap|videoSync|pixel_column\(4) & 
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
	combout => \vgamap|videoGen|pixelDraw~54_combout\);

-- Location: LCCOMB_X65_Y53_N22
\vgamap|videoGen|pixelDraw~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~56_combout\ = (\vgamap|videoSync|pixel_column\(6) & !\vgamap|videoSync|pixel_column\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(6),
	datad => \vgamap|videoSync|pixel_column\(7),
	combout => \vgamap|videoGen|pixelDraw~56_combout\);

-- Location: LCCOMB_X60_Y53_N28
\vgamap|videoGen|pixelDraw~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~51_combout\ = ((!\vgamap|videoSync|pixel_column\(1) & !\vgamap|videoSync|pixel_column\(2))) # (!\vgamap|videoSync|pixel_column\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|pixel_column\(3),
	datac => \vgamap|videoSync|pixel_column\(1),
	datad => \vgamap|videoSync|pixel_column\(2),
	combout => \vgamap|videoGen|pixelDraw~51_combout\);

-- Location: LCCOMB_X61_Y53_N14
\vgamap|videoGen|LessThan22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan22~1_combout\ = (!\vgamap|videoSync|pixel_column\(6) & !\vgamap|videoSync|pixel_column\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|pixel_column\(6),
	datad => \vgamap|videoSync|pixel_column\(5),
	combout => \vgamap|videoGen|LessThan22~1_combout\);

-- Location: LCCOMB_X65_Y53_N28
\vgamap|videoGen|pixelDraw~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~55_combout\ = (!\vgamap|videoSync|pixel_column\(3) & (\vgamap|videoSync|pixel_column\(7) & (\vgamap|videoGen|LessThan22~1_combout\ & !\vgamap|videoGen|LessThan44~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(3),
	datab => \vgamap|videoSync|pixel_column\(7),
	datac => \vgamap|videoGen|LessThan22~1_combout\,
	datad => \vgamap|videoGen|LessThan44~0_combout\,
	combout => \vgamap|videoGen|pixelDraw~55_combout\);

-- Location: LCCOMB_X65_Y53_N4
\vgamap|videoGen|pixelDraw~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~57_combout\ = (\vgamap|videoGen|pixelDraw~55_combout\) # ((\vgamap|videoGen|pixelDraw~56_combout\ & (\vgamap|videoSync|pixel_column\(4) & !\vgamap|videoGen|pixelDraw~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~56_combout\,
	datab => \vgamap|videoSync|pixel_column\(4),
	datac => \vgamap|videoGen|pixelDraw~51_combout\,
	datad => \vgamap|videoGen|pixelDraw~55_combout\,
	combout => \vgamap|videoGen|pixelDraw~57_combout\);

-- Location: LCCOMB_X59_Y52_N10
\vgamap|videoGen|LessThan33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan33~0_combout\ = (\vgamap|videoSync|pixel_row\(2) & (\vgamap|videoSync|pixel_row\(4) & ((\vgamap|videoSync|pixel_row\(1)) # (\vgamap|videoSync|pixel_row\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(2),
	datab => \vgamap|videoSync|pixel_row\(1),
	datac => \vgamap|videoSync|pixel_row\(4),
	datad => \vgamap|videoSync|pixel_row\(0),
	combout => \vgamap|videoGen|LessThan33~0_combout\);

-- Location: LCCOMB_X60_Y52_N16
\vgamap|videoGen|pixelDraw~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~26_combout\ = (!\vgamap|videoSync|pixel_row\(8) & (((!\vgamap|videoSync|pixel_row\(5) & !\vgamap|videoSync|pixel_row\(6))) # (!\vgamap|videoSync|pixel_row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(8),
	datab => \vgamap|videoSync|pixel_row\(7),
	datac => \vgamap|videoSync|pixel_row\(5),
	datad => \vgamap|videoSync|pixel_row\(6),
	combout => \vgamap|videoGen|pixelDraw~26_combout\);

-- Location: LCCOMB_X60_Y52_N22
\vgamap|videoGen|LessThan33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan33~2_combout\ = (!\vgamap|videoSync|pixel_row\(8) & !\vgamap|videoSync|pixel_row\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(8),
	datad => \vgamap|videoSync|pixel_row\(7),
	combout => \vgamap|videoGen|LessThan33~2_combout\);

-- Location: LCCOMB_X60_Y52_N6
\vgamap|videoGen|LessThan33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan33~1_combout\ = (\vgamap|videoSync|pixel_row\(6)) # ((\vgamap|videoSync|pixel_row\(5)) # ((\vgamap|videoSync|pixel_row\(3) & \vgamap|videoSync|pixel_row\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(6),
	datab => \vgamap|videoSync|pixel_row\(3),
	datac => \vgamap|videoSync|pixel_row\(5),
	datad => \vgamap|videoSync|pixel_row\(4),
	combout => \vgamap|videoGen|LessThan33~1_combout\);

-- Location: LCCOMB_X60_Y52_N10
\vgamap|videoGen|pixelDraw~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~27_combout\ = (\vgamap|videoGen|pixelDraw~26_combout\ & ((\vgamap|videoGen|LessThan33~0_combout\) # ((\vgamap|videoGen|LessThan33~1_combout\) # (!\vgamap|videoGen|LessThan33~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|LessThan33~0_combout\,
	datab => \vgamap|videoGen|pixelDraw~26_combout\,
	datac => \vgamap|videoGen|LessThan33~2_combout\,
	datad => \vgamap|videoGen|LessThan33~1_combout\,
	combout => \vgamap|videoGen|pixelDraw~27_combout\);

-- Location: LCCOMB_X60_Y52_N8
\vgamap|videoGen|pixelDraw~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~36_combout\ = (!\vgamap|videoSync|pixel_column\(9) & \vgamap|videoGen|pixelDraw~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|pixel_column\(9),
	datad => \vgamap|videoGen|pixelDraw~27_combout\,
	combout => \vgamap|videoGen|pixelDraw~36_combout\);

-- Location: LCCOMB_X65_Y53_N6
\vgamap|videoGen|pixelDraw~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~58_combout\ = (!\vgamap|videoSync|pixel_column\(8) & (\vgamap|videoGen|pixelDraw~36_combout\ & ((\vgamap|videoGen|pixelDraw~54_combout\) # (\vgamap|videoGen|pixelDraw~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~54_combout\,
	datab => \vgamap|videoSync|pixel_column\(8),
	datac => \vgamap|videoGen|pixelDraw~57_combout\,
	datad => \vgamap|videoGen|pixelDraw~36_combout\,
	combout => \vgamap|videoGen|pixelDraw~58_combout\);

-- Location: LCCOMB_X61_Y52_N28
\vgamap|videoGen|LessThan16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan16~0_combout\ = (!\vgamap|videoSync|pixel_column\(3) & (((!\vgamap|videoSync|pixel_column\(1)) # (!\vgamap|videoSync|pixel_column\(0))) # (!\vgamap|videoSync|pixel_column\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(2),
	datab => \vgamap|videoSync|pixel_column\(0),
	datac => \vgamap|videoSync|pixel_column\(3),
	datad => \vgamap|videoSync|pixel_column\(1),
	combout => \vgamap|videoGen|LessThan16~0_combout\);

-- Location: LCCOMB_X65_Y53_N0
\vgamap|videoGen|pixelDraw~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~59_combout\ = ((!\vgamap|videoSync|pixel_column\(5) & ((\vgamap|videoGen|LessThan16~0_combout\) # (!\vgamap|videoSync|pixel_column\(4))))) # (!\vgamap|videoSync|pixel_column\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(6),
	datab => \vgamap|videoSync|pixel_column\(4),
	datac => \vgamap|videoSync|pixel_column\(5),
	datad => \vgamap|videoGen|LessThan16~0_combout\,
	combout => \vgamap|videoGen|pixelDraw~59_combout\);

-- Location: LCCOMB_X60_Y52_N12
\vgamap|videoGen|pixelDraw~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~60_combout\ = (!\vgamap|videoSync|pixel_column\(8) & (!\vgamap|videoSync|pixel_column\(9) & !\vgamap|videoSync|pixel_column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(8),
	datab => \vgamap|videoSync|pixel_column\(9),
	datad => \vgamap|videoSync|pixel_column\(7),
	combout => \vgamap|videoGen|pixelDraw~60_combout\);

-- Location: LCCOMB_X65_Y53_N10
\vgamap|videoGen|pixelDraw~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~61_combout\ = (!\vgamap|videoGen|LessThan22~1_combout\ & (\vgamap|videoGen|pixelDraw~59_combout\ & (\vgamap|videoGen|pixelDraw~60_combout\ & \vgamap|videoGen|pixelDraw~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|LessThan22~1_combout\,
	datab => \vgamap|videoGen|pixelDraw~59_combout\,
	datac => \vgamap|videoGen|pixelDraw~60_combout\,
	datad => \vgamap|videoGen|pixelDraw~27_combout\,
	combout => \vgamap|videoGen|pixelDraw~61_combout\);

-- Location: LCCOMB_X65_Y53_N24
\vgamap|videoGen|colorAddress~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~21_combout\ = (!\vgamap|videoGen|pixelDraw~58_combout\ & !\vgamap|videoGen|pixelDraw~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoGen|pixelDraw~58_combout\,
	datad => \vgamap|videoGen|pixelDraw~61_combout\,
	combout => \vgamap|videoGen|colorAddress~21_combout\);

-- Location: LCCOMB_X60_Y52_N18
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

-- Location: LCCOMB_X60_Y52_N28
\vgamap|videoGen|pixelDraw~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~77_combout\ = (((!\vgamap|videoSync|pixel_row\(2) & \vgamap|videoGen|LessThan34~0_combout\)) # (!\vgamap|videoSync|pixel_row\(5))) # (!\vgamap|videoSync|pixel_row\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(6),
	datab => \vgamap|videoSync|pixel_row\(5),
	datac => \vgamap|videoSync|pixel_row\(2),
	datad => \vgamap|videoGen|LessThan34~0_combout\,
	combout => \vgamap|videoGen|pixelDraw~77_combout\);

-- Location: LCCOMB_X57_Y53_N8
\vgamap|videoGen|pixelDraw~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~90_combout\ = (\vgamap|videoGen|LessThan33~2_combout\ & (\vgamap|videoGen|pixelDraw~77_combout\ & ((\vgamap|videoGen|LessThan33~0_combout\) # (\vgamap|videoGen|LessThan33~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|LessThan33~0_combout\,
	datab => \vgamap|videoGen|LessThan33~1_combout\,
	datac => \vgamap|videoGen|LessThan33~2_combout\,
	datad => \vgamap|videoGen|pixelDraw~77_combout\,
	combout => \vgamap|videoGen|pixelDraw~90_combout\);

-- Location: LCCOMB_X60_Y53_N0
\vgamap|videoGen|LessThan9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan9~1_combout\ = (\vgamap|videoSync|pixel_column\(7)) # ((\vgamap|videoSync|pixel_column\(6) & ((\vgamap|videoSync|pixel_column\(5)) # (\vgamap|videoSync|pixel_column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(5),
	datab => \vgamap|videoSync|pixel_column\(6),
	datac => \vgamap|videoSync|pixel_column\(7),
	datad => \vgamap|videoSync|pixel_column\(1),
	combout => \vgamap|videoGen|LessThan9~1_combout\);

-- Location: LCCOMB_X60_Y53_N16
\vgamap|videoGen|LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan9~0_combout\ = (\vgamap|videoSync|pixel_column\(6) & ((\vgamap|videoSync|pixel_column\(4)) # ((\vgamap|videoSync|pixel_column\(3)) # (\vgamap|videoSync|pixel_column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(4),
	datab => \vgamap|videoSync|pixel_column\(6),
	datac => \vgamap|videoSync|pixel_column\(3),
	datad => \vgamap|videoSync|pixel_column\(2),
	combout => \vgamap|videoGen|LessThan9~0_combout\);

-- Location: LCCOMB_X61_Y53_N0
\vgamap|videoGen|pixelDraw~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~96_combout\ = (!\vgamap|videoSync|pixel_column\(4) & (((!\vgamap|videoSync|pixel_column\(1)) # (!\vgamap|videoSync|pixel_column\(2))) # (!\vgamap|videoSync|pixel_column\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(3),
	datab => \vgamap|videoSync|pixel_column\(4),
	datac => \vgamap|videoSync|pixel_column\(2),
	datad => \vgamap|videoSync|pixel_column\(1),
	combout => \vgamap|videoGen|pixelDraw~96_combout\);

-- Location: LCCOMB_X57_Y53_N28
\vgamap|videoGen|pixelDraw~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~97_combout\ = (\vgamap|videoSync|pixel_column\(5) & (\vgamap|videoGen|pixelDraw~96_combout\ & ((\vgamap|videoGen|LessThan9~1_combout\) # (\vgamap|videoGen|LessThan9~0_combout\)))) # (!\vgamap|videoSync|pixel_column\(5) & 
-- ((\vgamap|videoGen|LessThan9~1_combout\) # ((\vgamap|videoGen|LessThan9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(5),
	datab => \vgamap|videoGen|LessThan9~1_combout\,
	datac => \vgamap|videoGen|LessThan9~0_combout\,
	datad => \vgamap|videoGen|pixelDraw~96_combout\,
	combout => \vgamap|videoGen|pixelDraw~97_combout\);

-- Location: LCCOMB_X57_Y53_N22
\vgamap|videoGen|pixelDraw~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~98_combout\ = (\vgamap|videoGen|pixelDraw~60_combout\ & (\vgamap|videoGen|pixelDraw~90_combout\ & \vgamap|videoGen|pixelDraw~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~60_combout\,
	datac => \vgamap|videoGen|pixelDraw~90_combout\,
	datad => \vgamap|videoGen|pixelDraw~97_combout\,
	combout => \vgamap|videoGen|pixelDraw~98_combout\);

-- Location: LCCOMB_X60_Y52_N30
\vgamap|videoGen|pixelDraw~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~119_combout\ = (!\vgamap|videoSync|pixel_row\(7) & (!\vgamap|videoSync|pixel_row\(8) & !\vgamap|videoSync|pixel_column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|pixel_row\(7),
	datac => \vgamap|videoSync|pixel_row\(8),
	datad => \vgamap|videoSync|pixel_column\(9),
	combout => \vgamap|videoGen|pixelDraw~119_combout\);

-- Location: LCCOMB_X60_Y52_N26
\vgamap|videoGen|pixelDraw~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~78_combout\ = (\vgamap|videoGen|pixelDraw~77_combout\ & (\vgamap|videoGen|pixelDraw~119_combout\ & ((\vgamap|videoGen|LessThan33~1_combout\) # (\vgamap|videoGen|LessThan33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|LessThan33~1_combout\,
	datab => \vgamap|videoGen|pixelDraw~77_combout\,
	datac => \vgamap|videoGen|pixelDraw~119_combout\,
	datad => \vgamap|videoGen|LessThan33~0_combout\,
	combout => \vgamap|videoGen|pixelDraw~78_combout\);

-- Location: LCCOMB_X57_Y53_N12
\vgamap|videoGen|pixelDraw~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~88_combout\ = (\vgamap|videoSync|pixel_column\(5) & (\vgamap|videoSync|pixel_column\(3) & \vgamap|videoSync|pixel_column\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(5),
	datab => \vgamap|videoSync|pixel_column\(3),
	datac => \vgamap|videoSync|pixel_column\(4),
	combout => \vgamap|videoGen|pixelDraw~88_combout\);

-- Location: LCCOMB_X57_Y53_N26
\vgamap|videoGen|pixelDraw~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~120_combout\ = (\vgamap|videoGen|pixelDraw~88_combout\ & (\vgamap|videoSync|pixel_column\(6) & (!\vgamap|videoSync|pixel_column\(7) & \vgamap|videoGen|LessThan44~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~88_combout\,
	datab => \vgamap|videoSync|pixel_column\(6),
	datac => \vgamap|videoSync|pixel_column\(7),
	datad => \vgamap|videoGen|LessThan44~0_combout\,
	combout => \vgamap|videoGen|pixelDraw~120_combout\);

-- Location: LCCOMB_X61_Y53_N10
\vgamap|videoGen|LessThan22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan22~2_combout\ = (!\vgamap|videoSync|pixel_column\(6) & (((!\vgamap|videoSync|pixel_column\(3) & !\vgamap|videoSync|pixel_column\(4))) # (!\vgamap|videoSync|pixel_column\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(3),
	datab => \vgamap|videoSync|pixel_column\(6),
	datac => \vgamap|videoSync|pixel_column\(5),
	datad => \vgamap|videoSync|pixel_column\(4),
	combout => \vgamap|videoGen|LessThan22~2_combout\);

-- Location: LCCOMB_X61_Y53_N24
\vgamap|videoGen|LessThan22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan22~3_combout\ = (\vgamap|videoGen|LessThan22~2_combout\) # ((!\vgamap|videoGen|LessThan44~0_combout\ & (!\vgamap|videoSync|pixel_column\(4) & !\vgamap|videoSync|pixel_column\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|LessThan44~0_combout\,
	datab => \vgamap|videoSync|pixel_column\(4),
	datac => \vgamap|videoSync|pixel_column\(6),
	datad => \vgamap|videoGen|LessThan22~2_combout\,
	combout => \vgamap|videoGen|LessThan22~3_combout\);

-- Location: LCCOMB_X57_Y53_N20
\vgamap|videoGen|pixelDraw~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~99_combout\ = (\vgamap|videoGen|pixelDraw~120_combout\) # ((\vgamap|videoSync|pixel_column\(7) & \vgamap|videoGen|LessThan22~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(7),
	datac => \vgamap|videoGen|pixelDraw~120_combout\,
	datad => \vgamap|videoGen|LessThan22~3_combout\,
	combout => \vgamap|videoGen|pixelDraw~99_combout\);

-- Location: LCCOMB_X57_Y53_N30
\vgamap|videoGen|pixelDraw~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~100_combout\ = (!\vgamap|videoSync|pixel_column\(8) & (\vgamap|videoGen|pixelDraw~78_combout\ & \vgamap|videoGen|pixelDraw~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(8),
	datac => \vgamap|videoGen|pixelDraw~78_combout\,
	datad => \vgamap|videoGen|pixelDraw~99_combout\,
	combout => \vgamap|videoGen|pixelDraw~100_combout\);

-- Location: LCCOMB_X61_Y53_N30
\vgamap|videoGen|pixelDraw~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~47_combout\ = (\vgamap|videoSync|pixel_column\(7) & (\vgamap|videoSync|pixel_column\(6) & (\vgamap|videoSync|pixel_column\(5) & \vgamap|videoSync|pixel_column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(7),
	datab => \vgamap|videoSync|pixel_column\(6),
	datac => \vgamap|videoSync|pixel_column\(5),
	datad => \vgamap|videoSync|pixel_column\(4),
	combout => \vgamap|videoGen|pixelDraw~47_combout\);

-- Location: LCCOMB_X62_Y53_N8
\vgamap|videoGen|LessThan24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan24~0_combout\ = (\vgamap|videoGen|LessThan22~1_combout\ & (!\vgamap|videoSync|pixel_column\(7) & ((!\vgamap|videoGen|pixelDraw~19_combout\) # (!\vgamap|videoSync|pixel_column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|LessThan22~1_combout\,
	datab => \vgamap|videoSync|pixel_column\(4),
	datac => \vgamap|videoSync|pixel_column\(7),
	datad => \vgamap|videoGen|pixelDraw~19_combout\,
	combout => \vgamap|videoGen|LessThan24~0_combout\);

-- Location: LCCOMB_X62_Y53_N18
\vgamap|videoGen|pixelDraw~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~83_combout\ = (\vgamap|videoGen|pixelDraw~78_combout\ & ((\vgamap|videoSync|pixel_column\(8) & ((\vgamap|videoGen|LessThan24~0_combout\))) # (!\vgamap|videoSync|pixel_column\(8) & (\vgamap|videoGen|pixelDraw~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(8),
	datab => \vgamap|videoGen|pixelDraw~47_combout\,
	datac => \vgamap|videoGen|LessThan24~0_combout\,
	datad => \vgamap|videoGen|pixelDraw~78_combout\,
	combout => \vgamap|videoGen|pixelDraw~83_combout\);

-- Location: LCCOMB_X60_Y53_N8
\vgamap|videoGen|pixelDraw~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~80_combout\ = (\vgamap|videoSync|pixel_column\(4) & (\vgamap|videoSync|pixel_column\(3) & (\vgamap|videoSync|pixel_column\(1) & \vgamap|videoSync|pixel_column\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(4),
	datab => \vgamap|videoSync|pixel_column\(3),
	datac => \vgamap|videoSync|pixel_column\(1),
	datad => \vgamap|videoSync|pixel_column\(2),
	combout => \vgamap|videoGen|pixelDraw~80_combout\);

-- Location: LCCOMB_X61_Y53_N18
\vgamap|videoGen|pixelDraw~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~81_combout\ = (\vgamap|videoSync|pixel_column\(6) & (!\vgamap|videoSync|pixel_column\(7) & ((\vgamap|videoSync|pixel_column\(5)) # (\vgamap|videoGen|pixelDraw~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(5),
	datab => \vgamap|videoSync|pixel_column\(6),
	datac => \vgamap|videoSync|pixel_column\(7),
	datad => \vgamap|videoGen|pixelDraw~80_combout\,
	combout => \vgamap|videoGen|pixelDraw~81_combout\);

-- Location: LCCOMB_X59_Y53_N2
\vgamap|videoGen|pixelDraw~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~79_combout\ = (\vgamap|videoSync|pixel_column\(7) & (!\vgamap|videoSync|pixel_column\(6) & (\vgamap|videoGen|LessThan5~0_combout\ & \vgamap|videoGen|pixelDraw~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(7),
	datab => \vgamap|videoSync|pixel_column\(6),
	datac => \vgamap|videoGen|LessThan5~0_combout\,
	datad => \vgamap|videoGen|pixelDraw~51_combout\,
	combout => \vgamap|videoGen|pixelDraw~79_combout\);

-- Location: LCCOMB_X62_Y53_N30
\vgamap|videoGen|pixelDraw~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~82_combout\ = (\vgamap|videoSync|pixel_column\(8) & (\vgamap|videoGen|pixelDraw~78_combout\ & ((\vgamap|videoGen|pixelDraw~81_combout\) # (\vgamap|videoGen|pixelDraw~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(8),
	datab => \vgamap|videoGen|pixelDraw~81_combout\,
	datac => \vgamap|videoGen|pixelDraw~79_combout\,
	datad => \vgamap|videoGen|pixelDraw~78_combout\,
	combout => \vgamap|videoGen|pixelDraw~82_combout\);

-- Location: LCCOMB_X60_Y53_N22
\vgamap|videoGen|LessThan22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan22~0_combout\ = (!\vgamap|videoSync|pixel_column\(4) & !\vgamap|videoSync|pixel_column\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|pixel_column\(4),
	datad => \vgamap|videoSync|pixel_column\(3),
	combout => \vgamap|videoGen|LessThan22~0_combout\);

-- Location: LCCOMB_X61_Y53_N28
\vgamap|videoGen|pixelDraw~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~85_combout\ = ((\vgamap|videoSync|pixel_column\(1) & (\vgamap|videoSync|pixel_column\(0) & \vgamap|videoSync|pixel_column\(2)))) # (!\vgamap|videoGen|LessThan22~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(1),
	datab => \vgamap|videoSync|pixel_column\(0),
	datac => \vgamap|videoSync|pixel_column\(2),
	datad => \vgamap|videoGen|LessThan22~0_combout\,
	combout => \vgamap|videoGen|pixelDraw~85_combout\);

-- Location: LCCOMB_X62_Y53_N24
\vgamap|videoGen|pixelDraw~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~84_combout\ = ((!\vgamap|videoSync|pixel_column\(3) & \vgamap|videoGen|LessThan12~0_combout\)) # (!\vgamap|videoSync|pixel_column\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(4),
	datac => \vgamap|videoSync|pixel_column\(3),
	datad => \vgamap|videoGen|LessThan12~0_combout\,
	combout => \vgamap|videoGen|pixelDraw~84_combout\);

-- Location: LCCOMB_X62_Y53_N26
\vgamap|videoGen|pixelDraw~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~86_combout\ = (\vgamap|videoSync|pixel_column\(5) & (\vgamap|videoGen|pixelDraw~85_combout\ & (!\vgamap|videoSync|pixel_column\(6)))) # (!\vgamap|videoSync|pixel_column\(5) & (((\vgamap|videoSync|pixel_column\(6) & 
-- \vgamap|videoGen|pixelDraw~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(5),
	datab => \vgamap|videoGen|pixelDraw~85_combout\,
	datac => \vgamap|videoSync|pixel_column\(6),
	datad => \vgamap|videoGen|pixelDraw~84_combout\,
	combout => \vgamap|videoGen|pixelDraw~86_combout\);

-- Location: LCCOMB_X62_Y53_N20
\vgamap|videoGen|pixelDraw~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~87_combout\ = (\vgamap|videoSync|pixel_column\(8) & (!\vgamap|videoSync|pixel_column\(7) & (\vgamap|videoGen|pixelDraw~86_combout\ & \vgamap|videoGen|pixelDraw~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(8),
	datab => \vgamap|videoSync|pixel_column\(7),
	datac => \vgamap|videoGen|pixelDraw~86_combout\,
	datad => \vgamap|videoGen|pixelDraw~78_combout\,
	combout => \vgamap|videoGen|pixelDraw~87_combout\);

-- Location: LCCOMB_X62_Y53_N10
\vgamap|videoGen|colorAddress~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~23_combout\ = (!\vgamap|videoGen|pixelDraw~83_combout\ & (!\vgamap|videoGen|pixelDraw~82_combout\ & !\vgamap|videoGen|pixelDraw~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoGen|pixelDraw~83_combout\,
	datac => \vgamap|videoGen|pixelDraw~82_combout\,
	datad => \vgamap|videoGen|pixelDraw~87_combout\,
	combout => \vgamap|videoGen|colorAddress~23_combout\);

-- Location: LCCOMB_X61_Y52_N2
\vgamap|videoGen|pixelDraw~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~44_combout\ = (((!\vgamap|videoSync|pixel_column\(1)) # (!\vgamap|videoSync|pixel_column\(3))) # (!\vgamap|videoSync|pixel_column\(0))) # (!\vgamap|videoSync|pixel_column\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(2),
	datab => \vgamap|videoSync|pixel_column\(0),
	datac => \vgamap|videoSync|pixel_column\(3),
	datad => \vgamap|videoSync|pixel_column\(1),
	combout => \vgamap|videoGen|pixelDraw~44_combout\);

-- Location: LCCOMB_X57_Y53_N2
\vgamap|videoGen|pixelDraw~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~89_combout\ = (\vgamap|videoGen|pixelDraw~44_combout\ & ((\vgamap|videoGen|LessThan5~0_combout\) # ((\vgamap|videoGen|pixelDraw~88_combout\ & !\vgamap|videoGen|LessThan12~0_combout\)))) # (!\vgamap|videoGen|pixelDraw~44_combout\ 
-- & (\vgamap|videoGen|pixelDraw~88_combout\ & ((!\vgamap|videoGen|LessThan12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~44_combout\,
	datab => \vgamap|videoGen|pixelDraw~88_combout\,
	datac => \vgamap|videoGen|LessThan5~0_combout\,
	datad => \vgamap|videoGen|LessThan12~0_combout\,
	combout => \vgamap|videoGen|pixelDraw~89_combout\);

-- Location: LCCOMB_X57_Y53_N10
\vgamap|videoGen|pixelDraw~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~91_combout\ = ((\vgamap|videoGen|pixelDraw~89_combout\) # (!\vgamap|videoGen|pixelDraw~90_combout\)) # (!\vgamap|videoGen|pixelDraw~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoGen|pixelDraw~22_combout\,
	datac => \vgamap|videoGen|pixelDraw~90_combout\,
	datad => \vgamap|videoGen|pixelDraw~89_combout\,
	combout => \vgamap|videoGen|pixelDraw~91_combout\);

-- Location: LCCOMB_X61_Y53_N26
\vgamap|videoGen|pixelDraw~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~94_combout\ = (\vgamap|videoSync|pixel_column\(6) & (\vgamap|videoSync|pixel_column\(7) & !\vgamap|videoSync|pixel_column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|pixel_column\(6),
	datac => \vgamap|videoSync|pixel_column\(7),
	datad => \vgamap|videoSync|pixel_column\(9),
	combout => \vgamap|videoGen|pixelDraw~94_combout\);

-- Location: LCCOMB_X57_Y53_N24
\vgamap|videoGen|pixelDraw~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~93_combout\ = (\vgamap|videoSync|pixel_column\(8) & ((\vgamap|videoSync|pixel_column\(5)) # ((\vgamap|videoSync|pixel_column\(4) & \vgamap|videoSync|pixel_column\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(5),
	datab => \vgamap|videoSync|pixel_column\(4),
	datac => \vgamap|videoSync|pixel_column\(3),
	datad => \vgamap|videoSync|pixel_column\(8),
	combout => \vgamap|videoGen|pixelDraw~93_combout\);

-- Location: LCCOMB_X57_Y53_N0
\vgamap|videoGen|LessThan30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan30~0_combout\ = (\vgamap|videoSync|pixel_column\(3)) # (\vgamap|videoSync|pixel_column\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|pixel_column\(3),
	datad => \vgamap|videoSync|pixel_column\(2),
	combout => \vgamap|videoGen|LessThan30~0_combout\);

-- Location: LCCOMB_X57_Y53_N18
\vgamap|videoGen|pixelDraw~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~92_combout\ = (!\vgamap|videoSync|pixel_column\(6) & (!\vgamap|videoGen|LessThan30~0_combout\ & (\vgamap|videoGen|LessThan5~0_combout\ & \vgamap|videoGen|pixelDraw~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(6),
	datab => \vgamap|videoGen|LessThan30~0_combout\,
	datac => \vgamap|videoGen|LessThan5~0_combout\,
	datad => \vgamap|videoGen|pixelDraw~13_combout\,
	combout => \vgamap|videoGen|pixelDraw~92_combout\);

-- Location: LCCOMB_X57_Y53_N6
\vgamap|videoGen|pixelDraw~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~95_combout\ = (\vgamap|videoGen|pixelDraw~90_combout\ & ((\vgamap|videoGen|pixelDraw~92_combout\) # ((\vgamap|videoGen|pixelDraw~94_combout\ & \vgamap|videoGen|pixelDraw~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~94_combout\,
	datab => \vgamap|videoGen|pixelDraw~93_combout\,
	datac => \vgamap|videoGen|pixelDraw~90_combout\,
	datad => \vgamap|videoGen|pixelDraw~92_combout\,
	combout => \vgamap|videoGen|pixelDraw~95_combout\);

-- Location: LCCOMB_X62_Y53_N0
\vgamap|videoGen|colorAddress~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~24_combout\ = (\vgamap|videoGen|colorAddress~23_combout\ & (\vgamap|videoGen|pixelDraw~91_combout\ & !\vgamap|videoGen|pixelDraw~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|colorAddress~23_combout\,
	datac => \vgamap|videoGen|pixelDraw~91_combout\,
	datad => \vgamap|videoGen|pixelDraw~95_combout\,
	combout => \vgamap|videoGen|colorAddress~24_combout\);

-- Location: LCCOMB_X59_Y52_N22
\vgamap|videoGen|pixelDraw~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~68_combout\ = (!\vgamap|videoSync|pixel_row\(3)) # (!\vgamap|videoSync|pixel_row\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(2),
	datad => \vgamap|videoSync|pixel_row\(3),
	combout => \vgamap|videoGen|pixelDraw~68_combout\);

-- Location: LCCOMB_X59_Y52_N24
\vgamap|videoGen|LessThan37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan37~0_combout\ = (\vgamap|videoSync|pixel_row\(3) & ((\vgamap|videoSync|pixel_row\(2)) # ((\vgamap|videoSync|pixel_row\(0)) # (\vgamap|videoSync|pixel_row\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(2),
	datab => \vgamap|videoSync|pixel_row\(0),
	datac => \vgamap|videoSync|pixel_row\(1),
	datad => \vgamap|videoSync|pixel_row\(3),
	combout => \vgamap|videoGen|LessThan37~0_combout\);

-- Location: LCCOMB_X61_Y52_N10
\vgamap|videoGen|pixelDraw~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~67_combout\ = (\vgamap|videoSync|pixel_row\(7) & (!\vgamap|videoSync|pixel_row\(5) & (!\vgamap|videoSync|pixel_row\(8) & \vgamap|videoSync|pixel_row\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(7),
	datab => \vgamap|videoSync|pixel_row\(5),
	datac => \vgamap|videoSync|pixel_row\(8),
	datad => \vgamap|videoSync|pixel_row\(6),
	combout => \vgamap|videoGen|pixelDraw~67_combout\);

-- Location: LCCOMB_X58_Y53_N8
\vgamap|videoGen|pixelDraw~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~69_combout\ = (\vgamap|videoGen|pixelDraw~67_combout\ & ((\vgamap|videoSync|pixel_row\(4) & (\vgamap|videoGen|pixelDraw~68_combout\)) # (!\vgamap|videoSync|pixel_row\(4) & ((\vgamap|videoGen|LessThan37~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(4),
	datab => \vgamap|videoGen|pixelDraw~68_combout\,
	datac => \vgamap|videoGen|LessThan37~0_combout\,
	datad => \vgamap|videoGen|pixelDraw~67_combout\,
	combout => \vgamap|videoGen|pixelDraw~69_combout\);

-- Location: LCCOMB_X58_Y53_N26
\vgamap|videoGen|pixelDraw~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~70_combout\ = (!\vgamap|videoGen|pixelDraw~116_combout\ & (\vgamap|videoGen|pixelDraw~69_combout\ & (\vgamap|videoGen|pixelDraw~20_combout\ & \vgamap|videoGen|pixelDraw~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~116_combout\,
	datab => \vgamap|videoGen|pixelDraw~69_combout\,
	datac => \vgamap|videoGen|pixelDraw~20_combout\,
	datad => \vgamap|videoGen|pixelDraw~13_combout\,
	combout => \vgamap|videoGen|pixelDraw~70_combout\);

-- Location: LCCOMB_X61_Y52_N16
\vgamap|videoGen|pixelDraw~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~63_combout\ = (\vgamap|videoSync|pixel_row\(7) & (\vgamap|videoSync|pixel_row\(6) & (\vgamap|videoSync|pixel_row\(5) & !\vgamap|videoSync|pixel_row\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(7),
	datab => \vgamap|videoSync|pixel_row\(6),
	datac => \vgamap|videoSync|pixel_row\(5),
	datad => \vgamap|videoSync|pixel_row\(8),
	combout => \vgamap|videoGen|pixelDraw~63_combout\);

-- Location: LCCOMB_X61_Y53_N12
\vgamap|videoGen|pixelDraw~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~64_combout\ = (\vgamap|videoSync|pixel_column\(6)) # (((\vgamap|videoSync|pixel_column\(3) & \vgamap|videoSync|pixel_column\(4))) # (!\vgamap|videoSync|pixel_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(3),
	datab => \vgamap|videoSync|pixel_column\(6),
	datac => \vgamap|videoSync|pixel_column\(5),
	datad => \vgamap|videoSync|pixel_column\(4),
	combout => \vgamap|videoGen|pixelDraw~64_combout\);

-- Location: LCCOMB_X61_Y52_N30
\vgamap|videoGen|pixelDraw~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~65_combout\ = (\vgamap|videoGen|pixelDraw~64_combout\) # (((\vgamap|videoSync|pixel_column\(4) & !\vgamap|videoGen|LessThan12~0_combout\)) # (!\vgamap|videoGen|pixelDraw~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~64_combout\,
	datab => \vgamap|videoSync|pixel_column\(4),
	datac => \vgamap|videoGen|LessThan12~0_combout\,
	datad => \vgamap|videoGen|pixelDraw~60_combout\,
	combout => \vgamap|videoGen|pixelDraw~65_combout\);

-- Location: LCCOMB_X60_Y52_N4
\vgamap|videoGen|pixelDraw~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~17_combout\ = (!\vgamap|videoSync|pixel_row\(6) & !\vgamap|videoSync|pixel_row\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(6),
	datab => \vgamap|videoSync|pixel_row\(5),
	combout => \vgamap|videoGen|pixelDraw~17_combout\);

-- Location: LCCOMB_X61_Y52_N18
\vgamap|videoGen|pixelDraw~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~62_combout\ = (!\vgamap|videoSync|pixel_row\(7) & (\vgamap|videoGen|pixelDraw~17_combout\ & (\vgamap|videoGen|LessThan36~0_combout\ & \vgamap|videoSync|pixel_row\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(7),
	datab => \vgamap|videoGen|pixelDraw~17_combout\,
	datac => \vgamap|videoGen|LessThan36~0_combout\,
	datad => \vgamap|videoSync|pixel_row\(8),
	combout => \vgamap|videoGen|pixelDraw~62_combout\);

-- Location: LCCOMB_X61_Y52_N0
\vgamap|videoGen|pixelDraw~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~66_combout\ = (!\vgamap|videoGen|pixelDraw~65_combout\ & ((\vgamap|videoGen|pixelDraw~62_combout\) # ((\vgamap|videoGen|LessThan35~1_combout\ & \vgamap|videoGen|pixelDraw~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|LessThan35~1_combout\,
	datab => \vgamap|videoGen|pixelDraw~63_combout\,
	datac => \vgamap|videoGen|pixelDraw~65_combout\,
	datad => \vgamap|videoGen|pixelDraw~62_combout\,
	combout => \vgamap|videoGen|pixelDraw~66_combout\);

-- Location: LCCOMB_X59_Y52_N26
\vgamap|videoGen|pixelDraw~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~72_combout\ = (\vgamap|videoSync|pixel_row\(4) & (\vgamap|videoSync|pixel_row\(0) & (\vgamap|videoSync|pixel_row\(2) & \vgamap|videoSync|pixel_row\(1)))) # (!\vgamap|videoSync|pixel_row\(4) & (((\vgamap|videoSync|pixel_row\(2)) 
-- # (\vgamap|videoSync|pixel_row\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(4),
	datab => \vgamap|videoSync|pixel_row\(0),
	datac => \vgamap|videoSync|pixel_row\(2),
	datad => \vgamap|videoSync|pixel_row\(1),
	combout => \vgamap|videoGen|pixelDraw~72_combout\);

-- Location: LCCOMB_X59_Y52_N14
\vgamap|videoGen|pixelDraw~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~73_combout\ = (\vgamap|videoSync|pixel_row\(3) & ((\vgamap|videoSync|pixel_row\(4)) # ((\vgamap|videoSync|pixel_row\(6) & \vgamap|videoGen|pixelDraw~72_combout\)))) # (!\vgamap|videoSync|pixel_row\(3) & 
-- (\vgamap|videoSync|pixel_row\(4) & ((\vgamap|videoSync|pixel_row\(6)) # (\vgamap|videoGen|pixelDraw~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(3),
	datab => \vgamap|videoSync|pixel_row\(6),
	datac => \vgamap|videoSync|pixel_row\(4),
	datad => \vgamap|videoGen|pixelDraw~72_combout\,
	combout => \vgamap|videoGen|pixelDraw~73_combout\);

-- Location: LCCOMB_X59_Y52_N28
\vgamap|videoGen|pixelDraw~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~71_combout\ = (\vgamap|videoSync|pixel_row\(8) & (!\vgamap|videoSync|pixel_row\(7) & !\vgamap|videoGen|pixelDraw~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(8),
	datac => \vgamap|videoSync|pixel_row\(7),
	datad => \vgamap|videoGen|pixelDraw~65_combout\,
	combout => \vgamap|videoGen|pixelDraw~71_combout\);

-- Location: LCCOMB_X59_Y52_N0
\vgamap|videoGen|pixelDraw~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~74_combout\ = (\vgamap|videoGen|pixelDraw~71_combout\ & ((\vgamap|videoSync|pixel_row\(5) & (!\vgamap|videoSync|pixel_row\(6) & \vgamap|videoGen|pixelDraw~73_combout\)) # (!\vgamap|videoSync|pixel_row\(5) & 
-- (\vgamap|videoSync|pixel_row\(6) & !\vgamap|videoGen|pixelDraw~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(5),
	datab => \vgamap|videoSync|pixel_row\(6),
	datac => \vgamap|videoGen|pixelDraw~73_combout\,
	datad => \vgamap|videoGen|pixelDraw~71_combout\,
	combout => \vgamap|videoGen|pixelDraw~74_combout\);

-- Location: LCCOMB_X59_Y52_N30
\vgamap|videoGen|pixelDraw~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~75_combout\ = (\vgamap|videoSync|pixel_row\(4) & (((\vgamap|videoGen|LessThan37~0_combout\ & !\vgamap|videoSync|pixel_row\(5))))) # (!\vgamap|videoSync|pixel_row\(4) & (\vgamap|videoGen|pixelDraw~68_combout\ & 
-- ((\vgamap|videoSync|pixel_row\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(4),
	datab => \vgamap|videoGen|pixelDraw~68_combout\,
	datac => \vgamap|videoGen|LessThan37~0_combout\,
	datad => \vgamap|videoSync|pixel_row\(5),
	combout => \vgamap|videoGen|pixelDraw~75_combout\);

-- Location: LCCOMB_X59_Y52_N12
\vgamap|videoGen|pixelDraw~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~76_combout\ = (!\vgamap|videoSync|pixel_row\(6) & (\vgamap|videoGen|pixelDraw~75_combout\ & \vgamap|videoGen|pixelDraw~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|pixel_row\(6),
	datac => \vgamap|videoGen|pixelDraw~75_combout\,
	datad => \vgamap|videoGen|pixelDraw~71_combout\,
	combout => \vgamap|videoGen|pixelDraw~76_combout\);

-- Location: LCCOMB_X58_Y53_N22
\vgamap|videoGen|colorAddress~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~58_combout\ = (!\vgamap|videoGen|pixelDraw~70_combout\ & (!\vgamap|videoGen|pixelDraw~66_combout\ & (!\vgamap|videoGen|pixelDraw~74_combout\ & !\vgamap|videoGen|pixelDraw~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~70_combout\,
	datab => \vgamap|videoGen|pixelDraw~66_combout\,
	datac => \vgamap|videoGen|pixelDraw~74_combout\,
	datad => \vgamap|videoGen|pixelDraw~76_combout\,
	combout => \vgamap|videoGen|colorAddress~58_combout\);

-- Location: LCCOMB_X63_Y53_N16
\vgamap|videoGen|colorAddress~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~25_combout\ = (!\vgamap|videoGen|pixelDraw~98_combout\ & (!\vgamap|videoGen|pixelDraw~100_combout\ & (\vgamap|videoGen|colorAddress~24_combout\ & \vgamap|videoGen|colorAddress~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~98_combout\,
	datab => \vgamap|videoGen|pixelDraw~100_combout\,
	datac => \vgamap|videoGen|colorAddress~24_combout\,
	datad => \vgamap|videoGen|colorAddress~58_combout\,
	combout => \vgamap|videoGen|colorAddress~25_combout\);

-- Location: LCCOMB_X61_Y53_N8
\vgamap|videoGen|pixelDraw~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~109_combout\ = (\vgamap|videoSync|pixel_column\(5) & (!\vgamap|videoSync|pixel_column\(6) & ((\vgamap|videoSync|pixel_row\(5)) # (\vgamap|videoSync|pixel_row\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(5),
	datab => \vgamap|videoSync|pixel_row\(5),
	datac => \vgamap|videoSync|pixel_column\(6),
	datad => \vgamap|videoSync|pixel_row\(6),
	combout => \vgamap|videoGen|pixelDraw~109_combout\);

-- Location: LCCOMB_X58_Y53_N14
\vgamap|videoGen|pixelDraw~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~108_combout\ = (\vgamap|videoSync|pixel_column\(4) & (!\vgamap|videoSync|pixel_column\(3) & ((\vgamap|videoGen|LessThan6~4_combout\) # (!\vgamap|videoSync|pixel_column\(2))))) # (!\vgamap|videoSync|pixel_column\(4) & 
-- (\vgamap|videoSync|pixel_column\(2) & (\vgamap|videoSync|pixel_column\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(2),
	datab => \vgamap|videoSync|pixel_column\(4),
	datac => \vgamap|videoSync|pixel_column\(3),
	datad => \vgamap|videoGen|LessThan6~4_combout\,
	combout => \vgamap|videoGen|pixelDraw~108_combout\);

-- Location: LCCOMB_X58_Y53_N12
\vgamap|videoGen|pixelDraw~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~110_combout\ = (\vgamap|videoGen|pixelDraw~109_combout\ & (\vgamap|videoGen|pixelDraw~60_combout\ & (\vgamap|videoGen|pixelDraw~108_combout\ & \vgamap|videoGen|pixelDraw~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~109_combout\,
	datab => \vgamap|videoGen|pixelDraw~60_combout\,
	datac => \vgamap|videoGen|pixelDraw~108_combout\,
	datad => \vgamap|videoGen|pixelDraw~12_combout\,
	combout => \vgamap|videoGen|pixelDraw~110_combout\);

-- Location: LCCOMB_X60_Y53_N18
\vgamap|videoGen|LessThan10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan10~0_combout\ = ((!\vgamap|videoGen|LessThan44~0_combout\) # (!\vgamap|videoSync|pixel_column\(3))) # (!\vgamap|videoSync|pixel_column\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(4),
	datab => \vgamap|videoSync|pixel_column\(3),
	datad => \vgamap|videoGen|LessThan44~0_combout\,
	combout => \vgamap|videoGen|LessThan10~0_combout\);

-- Location: LCCOMB_X59_Y53_N28
\vgamap|videoGen|pixelDraw~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~102_combout\ = (\vgamap|videoSync|pixel_row\(2)) # ((\vgamap|videoSync|pixel_row\(0)) # ((\vgamap|videoSync|pixel_row\(3)) # (\vgamap|videoSync|pixel_row\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(2),
	datab => \vgamap|videoSync|pixel_row\(0),
	datac => \vgamap|videoSync|pixel_row\(3),
	datad => \vgamap|videoSync|pixel_row\(1),
	combout => \vgamap|videoGen|pixelDraw~102_combout\);

-- Location: LCCOMB_X59_Y53_N30
\vgamap|videoGen|pixelDraw~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~103_combout\ = (\vgamap|videoSync|pixel_column\(4) & (((\vgamap|videoSync|pixel_row\(4) & \vgamap|videoGen|pixelDraw~102_combout\)) # (!\vgamap|videoGen|pixelDraw~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(4),
	datab => \vgamap|videoGen|pixelDraw~102_combout\,
	datac => \vgamap|videoSync|pixel_column\(4),
	datad => \vgamap|videoGen|pixelDraw~17_combout\,
	combout => \vgamap|videoGen|pixelDraw~103_combout\);

-- Location: LCCOMB_X58_Y53_N0
\vgamap|videoGen|pixelDraw~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~101_combout\ = (!\vgamap|videoSync|pixel_column\(5) & (\vgamap|videoSync|pixel_column\(6) & (\vgamap|videoGen|pixelDraw~60_combout\ & \vgamap|videoGen|pixelDraw~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(5),
	datab => \vgamap|videoSync|pixel_column\(6),
	datac => \vgamap|videoGen|pixelDraw~60_combout\,
	datad => \vgamap|videoGen|pixelDraw~12_combout\,
	combout => \vgamap|videoGen|pixelDraw~101_combout\);

-- Location: LCCOMB_X58_Y53_N2
\vgamap|videoGen|pixelDraw~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~104_combout\ = (\vgamap|videoGen|LessThan10~0_combout\ & (\vgamap|videoGen|pixelDraw~103_combout\ & \vgamap|videoGen|pixelDraw~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|LessThan10~0_combout\,
	datac => \vgamap|videoGen|pixelDraw~103_combout\,
	datad => \vgamap|videoGen|pixelDraw~101_combout\,
	combout => \vgamap|videoGen|pixelDraw~104_combout\);

-- Location: LCCOMB_X58_Y53_N20
\vgamap|videoGen|pixelDraw~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~105_combout\ = (\vgamap|videoSync|pixel_row\(2) & \vgamap|videoSync|pixel_row\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(2),
	datad => \vgamap|videoSync|pixel_row\(1),
	combout => \vgamap|videoGen|pixelDraw~105_combout\);

-- Location: LCCOMB_X58_Y53_N30
\vgamap|videoGen|pixelDraw~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~106_combout\ = ((\vgamap|videoSync|pixel_row\(4) & ((\vgamap|videoSync|pixel_row\(3)) # (\vgamap|videoGen|pixelDraw~105_combout\)))) # (!\vgamap|videoGen|pixelDraw~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(4),
	datab => \vgamap|videoSync|pixel_row\(3),
	datac => \vgamap|videoGen|pixelDraw~105_combout\,
	datad => \vgamap|videoGen|pixelDraw~17_combout\,
	combout => \vgamap|videoGen|pixelDraw~106_combout\);

-- Location: LCCOMB_X59_Y53_N18
\vgamap|videoGen|LessThan14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan14~0_combout\ = (!\vgamap|videoSync|pixel_column\(4) & (((\vgamap|videoGen|LessThan6~4_combout\) # (!\vgamap|videoSync|pixel_column\(2))) # (!\vgamap|videoSync|pixel_column\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(4),
	datab => \vgamap|videoSync|pixel_column\(3),
	datac => \vgamap|videoSync|pixel_column\(2),
	datad => \vgamap|videoGen|LessThan6~4_combout\,
	combout => \vgamap|videoGen|LessThan14~0_combout\);

-- Location: LCCOMB_X58_Y53_N16
\vgamap|videoGen|pixelDraw~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~107_combout\ = (\vgamap|videoGen|pixelDraw~106_combout\ & (\vgamap|videoGen|LessThan14~0_combout\ & (\vgamap|videoGen|LessThan30~0_combout\ & \vgamap|videoGen|pixelDraw~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~106_combout\,
	datab => \vgamap|videoGen|LessThan14~0_combout\,
	datac => \vgamap|videoGen|LessThan30~0_combout\,
	datad => \vgamap|videoGen|pixelDraw~101_combout\,
	combout => \vgamap|videoGen|pixelDraw~107_combout\);

-- Location: LCCOMB_X58_Y53_N6
\vgamap|videoGen|pixelDraw~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~111_combout\ = (\vgamap|videoGen|pixelDraw~88_combout\ & (((\vgamap|videoGen|pixelDraw~15_combout\ & !\vgamap|videoGen|LessThan44~0_combout\)) # (!\vgamap|videoSync|pixel_column\(6)))) # (!\vgamap|videoGen|pixelDraw~88_combout\ 
-- & (((\vgamap|videoGen|pixelDraw~15_combout\ & !\vgamap|videoGen|LessThan44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~88_combout\,
	datab => \vgamap|videoSync|pixel_column\(6),
	datac => \vgamap|videoGen|pixelDraw~15_combout\,
	datad => \vgamap|videoGen|LessThan44~0_combout\,
	combout => \vgamap|videoGen|pixelDraw~111_combout\);

-- Location: LCCOMB_X58_Y53_N24
\vgamap|videoGen|pixelDraw~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~112_combout\ = (\vgamap|videoGen|pixelDraw~111_combout\ & (\vgamap|videoGen|pixelDraw~60_combout\ & \vgamap|videoGen|pixelDraw~115_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~111_combout\,
	datab => \vgamap|videoGen|pixelDraw~60_combout\,
	datad => \vgamap|videoGen|pixelDraw~115_combout\,
	combout => \vgamap|videoGen|pixelDraw~112_combout\);

-- Location: LCCOMB_X63_Y53_N26
\vgamap|videoGen|colorAddress~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~26_combout\ = (!\vgamap|videoGen|pixelDraw~110_combout\ & (!\vgamap|videoGen|pixelDraw~104_combout\ & (!\vgamap|videoGen|pixelDraw~107_combout\ & !\vgamap|videoGen|pixelDraw~112_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~110_combout\,
	datab => \vgamap|videoGen|pixelDraw~104_combout\,
	datac => \vgamap|videoGen|pixelDraw~107_combout\,
	datad => \vgamap|videoGen|pixelDraw~112_combout\,
	combout => \vgamap|videoGen|colorAddress~26_combout\);

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

-- Location: LCCOMB_X65_Y53_N20
\vgamap|videoGen|pixelDraw~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~50_combout\ = (\vgamap|videoSync|pixel_column\(5) & (\vgamap|videoSync|pixel_column\(6) & ((\vgamap|videoGen|LessThan44~0_combout\) # (!\vgamap|videoGen|LessThan22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(5),
	datab => \vgamap|videoGen|LessThan22~0_combout\,
	datac => \vgamap|videoSync|pixel_column\(6),
	datad => \vgamap|videoGen|LessThan44~0_combout\,
	combout => \vgamap|videoGen|pixelDraw~50_combout\);

-- Location: LCCOMB_X65_Y53_N14
\vgamap|videoGen|pixelDraw~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~118_combout\ = (!\vgamap|videoSync|pixel_column\(6) & (((!\vgamap|videoSync|pixel_column\(4) & \vgamap|videoGen|pixelDraw~51_combout\)) # (!\vgamap|videoSync|pixel_column\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(5),
	datab => \vgamap|videoSync|pixel_column\(6),
	datac => \vgamap|videoSync|pixel_column\(4),
	datad => \vgamap|videoGen|pixelDraw~51_combout\,
	combout => \vgamap|videoGen|pixelDraw~118_combout\);

-- Location: LCCOMB_X65_Y53_N26
\vgamap|videoGen|pixelDraw~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~52_combout\ = ((\vgamap|videoGen|pixelDraw~50_combout\) # ((\vgamap|videoGen|pixelDraw~118_combout\) # (!\vgamap|videoGen|pixelDraw~27_combout\))) # (!\vgamap|videoGen|pixelDraw~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~13_combout\,
	datab => \vgamap|videoGen|pixelDraw~50_combout\,
	datac => \vgamap|videoGen|pixelDraw~118_combout\,
	datad => \vgamap|videoGen|pixelDraw~27_combout\,
	combout => \vgamap|videoGen|pixelDraw~52_combout\);

-- Location: LCCOMB_X65_Y53_N8
\vgamap|videoGen|pixelDraw~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~48_combout\ = (\vgamap|videoGen|pixelDraw~22_combout\ & (((\vgamap|videoGen|LessThan16~0_combout\ & !\vgamap|videoSync|pixel_column\(4))) # (!\vgamap|videoSync|pixel_column\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|LessThan16~0_combout\,
	datab => \vgamap|videoSync|pixel_column\(5),
	datac => \vgamap|videoSync|pixel_column\(4),
	datad => \vgamap|videoGen|pixelDraw~22_combout\,
	combout => \vgamap|videoGen|pixelDraw~48_combout\);

-- Location: LCCOMB_X60_Y52_N20
\vgamap|videoGen|pixelDraw~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~28_combout\ = (\vgamap|videoSync|pixel_column\(8) & (!\vgamap|videoSync|pixel_column\(9) & \vgamap|videoGen|pixelDraw~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(8),
	datab => \vgamap|videoSync|pixel_column\(9),
	datad => \vgamap|videoGen|pixelDraw~27_combout\,
	combout => \vgamap|videoGen|pixelDraw~28_combout\);

-- Location: LCCOMB_X65_Y53_N2
\vgamap|videoGen|pixelDraw~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~49_combout\ = (\vgamap|videoGen|pixelDraw~47_combout\ & ((\vgamap|videoGen|pixelDraw~28_combout\) # ((\vgamap|videoGen|pixelDraw~27_combout\ & \vgamap|videoGen|pixelDraw~48_combout\)))) # (!\vgamap|videoGen|pixelDraw~47_combout\ 
-- & (\vgamap|videoGen|pixelDraw~27_combout\ & (\vgamap|videoGen|pixelDraw~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~47_combout\,
	datab => \vgamap|videoGen|pixelDraw~27_combout\,
	datac => \vgamap|videoGen|pixelDraw~48_combout\,
	datad => \vgamap|videoGen|pixelDraw~28_combout\,
	combout => \vgamap|videoGen|pixelDraw~49_combout\);

-- Location: LCCOMB_X65_Y53_N16
\vgamap|videoGen|colorAddress~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~18_combout\ = (\vgamap|videoGen|pixelDraw~49_combout\ & (((!\keys[2]~input_o\)))) # (!\vgamap|videoGen|pixelDraw~49_combout\ & (!\keys[0]~input_o\ & ((!\vgamap|videoGen|pixelDraw~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keys[0]~input_o\,
	datab => \keys[2]~input_o\,
	datac => \vgamap|videoGen|pixelDraw~52_combout\,
	datad => \vgamap|videoGen|pixelDraw~49_combout\,
	combout => \vgamap|videoGen|colorAddress~18_combout\);

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

-- Location: LCCOMB_X60_Y53_N10
\vgamap|videoGen|pixelDraw~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~34_combout\ = (\vgamap|videoGen|LessThan9~1_combout\ & (((\vgamap|videoGen|LessThan10~0_combout\)) # (!\vgamap|videoSync|pixel_column\(5)))) # (!\vgamap|videoGen|LessThan9~1_combout\ & (\vgamap|videoGen|LessThan9~0_combout\ & 
-- ((\vgamap|videoGen|LessThan10~0_combout\) # (!\vgamap|videoSync|pixel_column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|LessThan9~1_combout\,
	datab => \vgamap|videoSync|pixel_column\(5),
	datac => \vgamap|videoGen|LessThan9~0_combout\,
	datad => \vgamap|videoGen|LessThan10~0_combout\,
	combout => \vgamap|videoGen|pixelDraw~34_combout\);

-- Location: LCCOMB_X60_Y53_N4
\vgamap|videoGen|pixelDraw~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~35_combout\ = (\vgamap|videoGen|pixelDraw~34_combout\ & (!\vgamap|videoSync|pixel_column\(7) & \vgamap|videoGen|pixelDraw~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~34_combout\,
	datab => \vgamap|videoSync|pixel_column\(7),
	datad => \vgamap|videoGen|pixelDraw~28_combout\,
	combout => \vgamap|videoGen|pixelDraw~35_combout\);

-- Location: LCCOMB_X60_Y53_N20
\vgamap|videoGen|pixelDraw~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~45_combout\ = (\vgamap|videoSync|pixel_column\(4) & ((\vgamap|videoGen|pixelDraw~44_combout\) # ((\vgamap|videoSync|pixel_column\(3) & !\vgamap|videoSync|pixel_column\(5))))) # (!\vgamap|videoSync|pixel_column\(4) & 
-- ((\vgamap|videoSync|pixel_column\(3)) # ((\vgamap|videoSync|pixel_column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(4),
	datab => \vgamap|videoSync|pixel_column\(3),
	datac => \vgamap|videoSync|pixel_column\(5),
	datad => \vgamap|videoGen|pixelDraw~44_combout\,
	combout => \vgamap|videoGen|pixelDraw~45_combout\);

-- Location: LCCOMB_X60_Y53_N2
\vgamap|videoGen|pixelDraw~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~46_combout\ = (!\vgamap|videoSync|pixel_column\(6) & (!\vgamap|videoSync|pixel_column\(7) & (\vgamap|videoGen|pixelDraw~45_combout\ & \vgamap|videoGen|pixelDraw~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(6),
	datab => \vgamap|videoSync|pixel_column\(7),
	datac => \vgamap|videoGen|pixelDraw~45_combout\,
	datad => \vgamap|videoGen|pixelDraw~28_combout\,
	combout => \vgamap|videoGen|pixelDraw~46_combout\);

-- Location: LCCOMB_X60_Y53_N12
\vgamap|videoGen|colorAddress~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~16_combout\ = (\vgamap|videoGen|pixelDraw~46_combout\ & (((!\keys[9]~input_o\)))) # (!\vgamap|videoGen|pixelDraw~46_combout\ & (!\keys[7]~input_o\ & ((\vgamap|videoGen|pixelDraw~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keys[7]~input_o\,
	datab => \keys[9]~input_o\,
	datac => \vgamap|videoGen|pixelDraw~35_combout\,
	datad => \vgamap|videoGen|pixelDraw~46_combout\,
	combout => \vgamap|videoGen|colorAddress~16_combout\);

-- Location: LCCOMB_X61_Y52_N20
\vgamap|videoGen|pixelDraw~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~38_combout\ = (!\vgamap|videoSync|pixel_column\(8) & \vgamap|videoSync|pixel_column\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|pixel_column\(8),
	datac => \vgamap|videoSync|pixel_column\(7),
	combout => \vgamap|videoGen|pixelDraw~38_combout\);

-- Location: LCCOMB_X61_Y52_N14
\vgamap|videoGen|pixelDraw~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~40_combout\ = ((!\vgamap|videoSync|pixel_column\(2) & ((!\vgamap|videoSync|pixel_column\(1)) # (!\vgamap|videoSync|pixel_column\(0))))) # (!\vgamap|videoSync|pixel_column\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(2),
	datab => \vgamap|videoSync|pixel_column\(0),
	datac => \vgamap|videoSync|pixel_column\(3),
	datad => \vgamap|videoSync|pixel_column\(1),
	combout => \vgamap|videoGen|pixelDraw~40_combout\);

-- Location: LCCOMB_X61_Y52_N24
\vgamap|videoGen|pixelDraw~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~41_combout\ = (\vgamap|videoSync|pixel_column\(5)) # ((\vgamap|videoSync|pixel_column\(4) & ((\vgamap|videoSync|pixel_column\(2)) # (\vgamap|videoSync|pixel_column\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(2),
	datab => \vgamap|videoSync|pixel_column\(5),
	datac => \vgamap|videoSync|pixel_column\(3),
	datad => \vgamap|videoSync|pixel_column\(4),
	combout => \vgamap|videoGen|pixelDraw~41_combout\);

-- Location: LCCOMB_X60_Y52_N24
\vgamap|videoGen|pixelDraw~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~42_combout\ = (\vgamap|videoSync|pixel_column\(6) & (\vgamap|videoGen|pixelDraw~40_combout\ & (\vgamap|videoGen|LessThan5~0_combout\))) # (!\vgamap|videoSync|pixel_column\(6) & (((\vgamap|videoGen|pixelDraw~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(6),
	datab => \vgamap|videoGen|pixelDraw~40_combout\,
	datac => \vgamap|videoGen|LessThan5~0_combout\,
	datad => \vgamap|videoGen|pixelDraw~41_combout\,
	combout => \vgamap|videoGen|pixelDraw~42_combout\);

-- Location: LCCOMB_X60_Y52_N2
\vgamap|videoGen|pixelDraw~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~43_combout\ = (\vgamap|videoGen|pixelDraw~27_combout\ & (!\vgamap|videoSync|pixel_column\(9) & (\vgamap|videoGen|pixelDraw~38_combout\ & \vgamap|videoGen|pixelDraw~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~27_combout\,
	datab => \vgamap|videoSync|pixel_column\(9),
	datac => \vgamap|videoGen|pixelDraw~38_combout\,
	datad => \vgamap|videoGen|pixelDraw~42_combout\,
	combout => \vgamap|videoGen|pixelDraw~43_combout\);

-- Location: LCCOMB_X60_Y53_N30
\vgamap|videoGen|pixelDraw~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~37_combout\ = (\vgamap|videoGen|LessThan6~5_combout\ & (\vgamap|videoSync|pixel_column\(8) & (\vgamap|videoGen|LessThan22~1_combout\ & !\vgamap|videoSync|pixel_column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|LessThan6~5_combout\,
	datab => \vgamap|videoSync|pixel_column\(8),
	datac => \vgamap|videoGen|LessThan22~1_combout\,
	datad => \vgamap|videoSync|pixel_column\(7),
	combout => \vgamap|videoGen|pixelDraw~37_combout\);

-- Location: LCCOMB_X60_Y52_N14
\vgamap|videoGen|pixelDraw~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~39_combout\ = (\vgamap|videoGen|pixelDraw~36_combout\ & ((\vgamap|videoGen|pixelDraw~37_combout\) # ((\vgamap|videoGen|pixelDraw~38_combout\ & \vgamap|videoGen|pixelDraw~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~38_combout\,
	datab => \vgamap|videoGen|pixelDraw~20_combout\,
	datac => \vgamap|videoGen|pixelDraw~37_combout\,
	datad => \vgamap|videoGen|pixelDraw~36_combout\,
	combout => \vgamap|videoGen|pixelDraw~39_combout\);

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

-- Location: LCCOMB_X60_Y52_N0
\vgamap|videoGen|colorAddress~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~15_combout\ = (\vgamap|videoGen|pixelDraw~43_combout\ & (!\keys[12]~input_o\)) # (!\vgamap|videoGen|pixelDraw~43_combout\ & (((!\keys[11]~input_o\ & \vgamap|videoGen|pixelDraw~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keys[12]~input_o\,
	datab => \vgamap|videoGen|pixelDraw~43_combout\,
	datac => \keys[11]~input_o\,
	datad => \vgamap|videoGen|pixelDraw~39_combout\,
	combout => \vgamap|videoGen|colorAddress~15_combout\);

-- Location: LCCOMB_X60_Y53_N14
\vgamap|videoGen|colorAddress~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~17_combout\ = (\vgamap|videoGen|colorAddress~15_combout\) # ((\vgamap|videoGen|colorAddress~16_combout\ & (!\vgamap|videoGen|pixelDraw~43_combout\ & !\vgamap|videoGen|pixelDraw~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|colorAddress~16_combout\,
	datab => \vgamap|videoGen|pixelDraw~43_combout\,
	datac => \vgamap|videoGen|pixelDraw~39_combout\,
	datad => \vgamap|videoGen|colorAddress~15_combout\,
	combout => \vgamap|videoGen|colorAddress~17_combout\);

-- Location: LCCOMB_X59_Y53_N22
\vgamap|videoGen|pixelDraw~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~31_combout\ = (\vgamap|videoSync|pixel_column\(7) & (((!\vgamap|videoSync|pixel_column\(4))) # (!\vgamap|videoSync|pixel_column\(5)))) # (!\vgamap|videoSync|pixel_column\(7) & (\vgamap|videoSync|pixel_column\(5) & 
-- (\vgamap|videoSync|pixel_column\(4) & \vgamap|videoSync|pixel_column\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(7),
	datab => \vgamap|videoSync|pixel_column\(5),
	datac => \vgamap|videoSync|pixel_column\(4),
	datad => \vgamap|videoSync|pixel_column\(2),
	combout => \vgamap|videoGen|pixelDraw~31_combout\);

-- Location: LCCOMB_X59_Y53_N24
\vgamap|videoGen|pixelDraw~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~32_combout\ = (\vgamap|videoSync|pixel_column\(6) & (!\vgamap|videoSync|pixel_column\(7) & \vgamap|videoSync|pixel_column\(3))) # (!\vgamap|videoSync|pixel_column\(6) & (\vgamap|videoSync|pixel_column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|pixel_column\(6),
	datac => \vgamap|videoSync|pixel_column\(7),
	datad => \vgamap|videoSync|pixel_column\(3),
	combout => \vgamap|videoGen|pixelDraw~32_combout\);

-- Location: LCCOMB_X59_Y53_N26
\vgamap|videoGen|pixelDraw~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~33_combout\ = (\vgamap|videoGen|pixelDraw~32_combout\ & ((\vgamap|videoGen|pixelDraw~31_combout\) # ((!\vgamap|videoSync|pixel_column\(3) & \vgamap|videoGen|LessThan12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~31_combout\,
	datab => \vgamap|videoGen|pixelDraw~32_combout\,
	datac => \vgamap|videoSync|pixel_column\(3),
	datad => \vgamap|videoGen|LessThan12~0_combout\,
	combout => \vgamap|videoGen|pixelDraw~33_combout\);

-- Location: LCCOMB_X59_Y53_N12
\vgamap|videoGen|pixelDraw~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~29_combout\ = (\vgamap|videoGen|pixelDraw~14_combout\ & ((\vgamap|videoSync|pixel_column\(3)) # ((\vgamap|videoSync|pixel_column\(2) & \vgamap|videoSync|pixel_column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(3),
	datab => \vgamap|videoSync|pixel_column\(2),
	datac => \vgamap|videoSync|pixel_column\(1),
	datad => \vgamap|videoGen|pixelDraw~14_combout\,
	combout => \vgamap|videoGen|pixelDraw~29_combout\);

-- Location: LCCOMB_X59_Y53_N8
\vgamap|videoGen|pixelDraw~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~30_combout\ = (\vgamap|videoGen|pixelDraw~29_combout\) # ((\vgamap|videoSync|pixel_column\(6) & ((\vgamap|videoGen|LessThan14~0_combout\) # (!\vgamap|videoSync|pixel_column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|LessThan14~0_combout\,
	datab => \vgamap|videoSync|pixel_column\(5),
	datac => \vgamap|videoSync|pixel_column\(6),
	datad => \vgamap|videoGen|pixelDraw~29_combout\,
	combout => \vgamap|videoGen|pixelDraw~30_combout\);

-- Location: LCCOMB_X59_Y53_N0
\vgamap|videoGen|pixelDraw~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~53_combout\ = (\vgamap|videoSync|pixel_column\(7) & (\vgamap|videoGen|pixelDraw~30_combout\ & \vgamap|videoGen|pixelDraw~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(7),
	datab => \vgamap|videoGen|pixelDraw~30_combout\,
	datac => \vgamap|videoGen|pixelDraw~28_combout\,
	combout => \vgamap|videoGen|pixelDraw~53_combout\);

-- Location: LCCOMB_X63_Y53_N6
\vgamap|videoGen|colorAddress~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~13_combout\ = (!\vgamap|videoGen|pixelDraw~39_combout\ & (!\vgamap|videoGen|pixelDraw~35_combout\ & (!\vgamap|videoGen|pixelDraw~46_combout\ & !\vgamap|videoGen|pixelDraw~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~39_combout\,
	datab => \vgamap|videoGen|pixelDraw~35_combout\,
	datac => \vgamap|videoGen|pixelDraw~46_combout\,
	datad => \vgamap|videoGen|pixelDraw~43_combout\,
	combout => \vgamap|videoGen|colorAddress~13_combout\);

-- Location: LCCOMB_X63_Y53_N22
\vgamap|videoGen|colorAddress~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~19_combout\ = (!\vgamap|videoGen|pixelDraw~53_combout\ & (\vgamap|videoGen|colorAddress~13_combout\ & ((!\vgamap|videoGen|pixelDraw~33_combout\) # (!\vgamap|videoGen|pixelDraw~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~28_combout\,
	datab => \vgamap|videoGen|pixelDraw~33_combout\,
	datac => \vgamap|videoGen|pixelDraw~53_combout\,
	datad => \vgamap|videoGen|colorAddress~13_combout\,
	combout => \vgamap|videoGen|colorAddress~19_combout\);

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

-- Location: LCCOMB_X59_Y53_N16
\vgamap|videoGen|colorAddress~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~11_combout\ = (\vgamap|videoGen|pixelDraw~33_combout\ & (!\keys[5]~input_o\)) # (!\vgamap|videoGen|pixelDraw~33_combout\ & (((\vgamap|videoSync|pixel_column\(7) & !\keys[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keys[5]~input_o\,
	datab => \vgamap|videoSync|pixel_column\(7),
	datac => \vgamap|videoGen|pixelDraw~33_combout\,
	datad => \keys[4]~input_o\,
	combout => \vgamap|videoGen|colorAddress~11_combout\);

-- Location: LCCOMB_X59_Y53_N6
\vgamap|videoGen|colorAddress~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~12_combout\ = (\vgamap|videoGen|pixelDraw~28_combout\ & (\vgamap|videoGen|colorAddress~11_combout\ & ((\vgamap|videoGen|pixelDraw~33_combout\) # (\vgamap|videoGen|pixelDraw~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~33_combout\,
	datab => \vgamap|videoGen|pixelDraw~30_combout\,
	datac => \vgamap|videoGen|pixelDraw~28_combout\,
	datad => \vgamap|videoGen|colorAddress~11_combout\,
	combout => \vgamap|videoGen|colorAddress~12_combout\);

-- Location: LCCOMB_X63_Y53_N24
\vgamap|videoGen|colorAddress~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~14_combout\ = (\vgamap|videoGen|colorAddress~12_combout\ & \vgamap|videoGen|colorAddress~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoGen|colorAddress~12_combout\,
	datad => \vgamap|videoGen|colorAddress~13_combout\,
	combout => \vgamap|videoGen|colorAddress~14_combout\);

-- Location: LCCOMB_X63_Y53_N12
\vgamap|videoGen|colorAddress~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~20_combout\ = (\vgamap|videoGen|colorAddress~17_combout\) # ((\vgamap|videoGen|colorAddress~14_combout\) # ((\vgamap|videoGen|colorAddress~18_combout\ & \vgamap|videoGen|colorAddress~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|colorAddress~18_combout\,
	datab => \vgamap|videoGen|colorAddress~17_combout\,
	datac => \vgamap|videoGen|colorAddress~19_combout\,
	datad => \vgamap|videoGen|colorAddress~14_combout\,
	combout => \vgamap|videoGen|colorAddress~20_combout\);

-- Location: LCCOMB_X63_Y53_N20
\vgamap|videoGen|colorAddress~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~27_combout\ = (\vgamap|videoGen|colorAddress~21_combout\ & (\vgamap|videoGen|colorAddress~25_combout\ & (\vgamap|videoGen|colorAddress~26_combout\ & \vgamap|videoGen|colorAddress~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|colorAddress~21_combout\,
	datab => \vgamap|videoGen|colorAddress~25_combout\,
	datac => \vgamap|videoGen|colorAddress~26_combout\,
	datad => \vgamap|videoGen|colorAddress~20_combout\,
	combout => \vgamap|videoGen|colorAddress~27_combout\);

-- Location: LCCOMB_X66_Y53_N12
\vgamap|videoGen|pixelDraw~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~18_combout\ = (\vgamap|videoGen|pixelDraw~16_combout\ & (\vgamap|videoGen|pixelDraw~12_combout\ & ((\vgamap|videoGen|LessThan35~1_combout\) # (!\vgamap|videoGen|pixelDraw~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~17_combout\,
	datab => \vgamap|videoGen|LessThan35~1_combout\,
	datac => \vgamap|videoGen|pixelDraw~16_combout\,
	datad => \vgamap|videoGen|pixelDraw~12_combout\,
	combout => \vgamap|videoGen|pixelDraw~18_combout\);

-- Location: IOIBUF_X115_Y40_N8
\synth_sel~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_synth_sel,
	o => \synth_sel~input_o\);

-- Location: LCCOMB_X59_Y51_N28
\synmap|FSM_cycle:pressed~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \synmap|FSM_cycle:pressed~0_combout\ = !\synth_sel~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \synth_sel~input_o\,
	combout => \synmap|FSM_cycle:pressed~0_combout\);

-- Location: LCCOMB_X59_Y51_N24
\synmap|z[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \synmap|z[0]~0_combout\ = (\synmap|current\(0)) # (!\synmap|current\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \synmap|current\(0),
	datad => \synmap|current\(1),
	combout => \synmap|z[0]~0_combout\);

-- Location: FF_X59_Y51_N29
\synmap|FSM_cycle:pressed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \synmap|FSM_cycle:pressed~0_combout\,
	ena => \synmap|z[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synmap|FSM_cycle:pressed~q\);

-- Location: LCCOMB_X59_Y51_N22
\synmap|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \synmap|Mux3~0_combout\ = \synmap|current\(0) $ (((!\synth_sel~input_o\ & (!\synmap|current\(1) & !\synmap|FSM_cycle:pressed~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \synth_sel~input_o\,
	datab => \synmap|current\(1),
	datac => \synmap|current\(0),
	datad => \synmap|FSM_cycle:pressed~q\,
	combout => \synmap|Mux3~0_combout\);

-- Location: FF_X59_Y51_N23
\synmap|current[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \synmap|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synmap|current\(0));

-- Location: LCCOMB_X59_Y51_N20
\synmap|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \synmap|Mux2~0_combout\ = (\synmap|current\(0) & (\synmap|current\(1) & ((\synth_sel~input_o\) # (\synmap|FSM_cycle:pressed~q\)))) # (!\synmap|current\(0) & (!\synth_sel~input_o\ & (!\synmap|current\(1) & !\synmap|FSM_cycle:pressed~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \synth_sel~input_o\,
	datab => \synmap|current\(0),
	datac => \synmap|current\(1),
	datad => \synmap|FSM_cycle:pressed~q\,
	combout => \synmap|Mux2~0_combout\);

-- Location: FF_X59_Y51_N21
\synmap|current[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \synmap|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synmap|current\(1));

-- Location: FF_X66_Y53_N31
\synmap|z[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \synmap|current\(1),
	sload => VCC,
	ena => \synmap|z[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synmap|z\(1));

-- Location: LCCOMB_X59_Y51_N26
\synmap|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \synmap|Mux1~0_combout\ = (!\synmap|current\(0) & !\synmap|current\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \synmap|current\(0),
	datad => \synmap|current\(1),
	combout => \synmap|Mux1~0_combout\);

-- Location: LCCOMB_X66_Y53_N20
\synmap|z[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \synmap|z[0]~feeder_combout\ = \synmap|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \synmap|Mux1~0_combout\,
	combout => \synmap|z[0]~feeder_combout\);

-- Location: FF_X66_Y53_N21
\synmap|z[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \synmap|z[0]~feeder_combout\,
	ena => \synmap|z[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synmap|z\(0));

-- Location: LCCOMB_X66_Y53_N30
\vgamap|videoGen|colorAddress~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~6_combout\ = (\synmap|z\(1)) # (!\synmap|z\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \synmap|z\(1),
	datad => \synmap|z\(0),
	combout => \vgamap|videoGen|colorAddress~6_combout\);

-- Location: LCCOMB_X58_Y53_N28
\vgamap|videoGen|pixelDraw~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~117_combout\ = (!\vgamap|videoGen|pixelDraw~116_combout\ & (\vgamap|videoGen|pixelDraw~13_combout\ & (\vgamap|videoGen|pixelDraw~20_combout\ & \vgamap|videoGen|pixelDraw~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~116_combout\,
	datab => \vgamap|videoGen|pixelDraw~13_combout\,
	datac => \vgamap|videoGen|pixelDraw~20_combout\,
	datad => \vgamap|videoGen|pixelDraw~115_combout\,
	combout => \vgamap|videoGen|pixelDraw~117_combout\);

-- Location: LCCOMB_X66_Y53_N24
\vgamap|videoGen|colorAddress~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~7_combout\ = ((!\vgamap|videoGen|pixelDraw~16_combout\ & \vgamap|videoGen|pixelDraw~21_combout\)) # (!\vgamap|videoGen|pixelDraw~115_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~16_combout\,
	datac => \vgamap|videoGen|pixelDraw~115_combout\,
	datad => \vgamap|videoGen|pixelDraw~21_combout\,
	combout => \vgamap|videoGen|colorAddress~7_combout\);

-- Location: LCCOMB_X66_Y53_N16
\vgamap|videoGen|colorAddress~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~8_combout\ = (\vgamap|videoGen|pixelDraw~25_combout\ & (\vgamap|videoGen|colorAddress~7_combout\ & ((\synmap|z\(0)) # (!\synmap|z\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \synmap|z\(1),
	datab => \synmap|z\(0),
	datac => \vgamap|videoGen|pixelDraw~25_combout\,
	datad => \vgamap|videoGen|colorAddress~7_combout\,
	combout => \vgamap|videoGen|colorAddress~8_combout\);

-- Location: LCCOMB_X66_Y53_N6
\vgamap|videoGen|colorAddress~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~9_combout\ = (!\vgamap|videoGen|colorAddress~8_combout\ & (((!\synmap|z\(1) & !\synmap|z\(0))) # (!\vgamap|videoGen|pixelDraw~117_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \synmap|z\(1),
	datab => \synmap|z\(0),
	datac => \vgamap|videoGen|pixelDraw~117_combout\,
	datad => \vgamap|videoGen|colorAddress~8_combout\,
	combout => \vgamap|videoGen|colorAddress~9_combout\);

-- Location: LCCOMB_X66_Y53_N28
\vgamap|videoGen|colorAddress~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~10_combout\ = ((\vgamap|videoGen|pixelDraw~18_combout\ & (\vgamap|videoGen|colorAddress~6_combout\ & !\vgamap|videoGen|pixelDraw~117_combout\))) # (!\vgamap|videoGen|colorAddress~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~18_combout\,
	datab => \vgamap|videoGen|colorAddress~6_combout\,
	datac => \vgamap|videoGen|pixelDraw~117_combout\,
	datad => \vgamap|videoGen|colorAddress~9_combout\,
	combout => \vgamap|videoGen|colorAddress~10_combout\);

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

-- Location: LCCOMB_X65_Y53_N18
\vgamap|videoGen|colorAddress~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~36_combout\ = (\vgamap|videoGen|pixelDraw~61_combout\ & (((!\keys[16]~input_o\)))) # (!\vgamap|videoGen|pixelDraw~61_combout\ & (!\keys[14]~input_o\ & ((\vgamap|videoGen|pixelDraw~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keys[14]~input_o\,
	datab => \keys[16]~input_o\,
	datac => \vgamap|videoGen|pixelDraw~58_combout\,
	datad => \vgamap|videoGen|pixelDraw~61_combout\,
	combout => \vgamap|videoGen|colorAddress~36_combout\);

-- Location: LCCOMB_X58_Y53_N4
\vgamap|videoGen|colorAddress~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~34_combout\ = (!\vgamap|videoGen|pixelDraw~107_combout\ & (((!\vgamap|videoGen|pixelDraw~103_combout\) # (!\vgamap|videoGen|pixelDraw~101_combout\)) # (!\vgamap|videoGen|LessThan10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|LessThan10~0_combout\,
	datab => \vgamap|videoGen|pixelDraw~101_combout\,
	datac => \vgamap|videoGen|pixelDraw~103_combout\,
	datad => \vgamap|videoGen|pixelDraw~107_combout\,
	combout => \vgamap|videoGen|colorAddress~34_combout\);

-- Location: IOIBUF_X115_Y35_N22
\vol_down~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vol_down,
	o => \vol_down~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\vol_up~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vol_up,
	o => \vol_up~input_o\);

-- Location: LCCOMB_X59_Y55_N10
\volmap|pressed~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|pressed~0_combout\ = \vol_up~input_o\ $ (\vol_down~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vol_up~input_o\,
	datad => \vol_down~input_o\,
	combout => \volmap|pressed~0_combout\);

-- Location: LCCOMB_X59_Y55_N14
\volmap|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|Mux5~1_combout\ = (!\volmap|current\(0) & !\volmap|current\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \volmap|current\(0),
	datad => \volmap|current\(2),
	combout => \volmap|Mux5~1_combout\);

-- Location: LCCOMB_X59_Y55_N20
\volmap|FSM_cycle~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|FSM_cycle~1_combout\ = (\vol_down~input_o\ & (!\vol_up~input_o\ & !\volmap|FSM_cycle:pressed~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vol_down~input_o\,
	datac => \vol_up~input_o\,
	datad => \volmap|FSM_cycle:pressed~q\,
	combout => \volmap|FSM_cycle~1_combout\);

-- Location: LCCOMB_X59_Y55_N4
\volmap|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|Mux5~2_combout\ = (\volmap|FSM_cycle~0_combout\ & (!\volmap|current\(0) & (\volmap|current\(1) & \volmap|current\(2)))) # (!\volmap|FSM_cycle~0_combout\ & (\volmap|current\(0) & ((!\volmap|current\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \volmap|FSM_cycle~0_combout\,
	datab => \volmap|current\(0),
	datac => \volmap|current\(1),
	datad => \volmap|current\(2),
	combout => \volmap|Mux5~2_combout\);

-- Location: LCCOMB_X59_Y55_N16
\volmap|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|Mux5~0_combout\ = (!\volmap|FSM_cycle:pressed~q\ & ((\vol_down~input_o\ & ((!\vol_up~input_o\))) # (!\vol_down~input_o\ & (!\volmap|current\(1) & \vol_up~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \volmap|current\(1),
	datab => \vol_down~input_o\,
	datac => \vol_up~input_o\,
	datad => \volmap|FSM_cycle:pressed~q\,
	combout => \volmap|Mux5~0_combout\);

-- Location: LCCOMB_X59_Y55_N8
\volmap|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|Mux5~3_combout\ = (\volmap|Mux5~1_combout\ & ((\volmap|Mux5~0_combout\) # ((!\volmap|FSM_cycle~1_combout\ & \volmap|Mux5~2_combout\)))) # (!\volmap|Mux5~1_combout\ & (!\volmap|FSM_cycle~1_combout\ & (\volmap|Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \volmap|Mux5~1_combout\,
	datab => \volmap|FSM_cycle~1_combout\,
	datac => \volmap|Mux5~2_combout\,
	datad => \volmap|Mux5~0_combout\,
	combout => \volmap|Mux5~3_combout\);

-- Location: FF_X59_Y55_N9
\volmap|current[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \volmap|Mux5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|current\(0));

-- Location: LCCOMB_X59_Y55_N18
\volmap|z[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|z[2]~0_combout\ = ((!\volmap|current\(0) & \volmap|current\(1))) # (!\volmap|current\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \volmap|current\(0),
	datac => \volmap|current\(1),
	datad => \volmap|current\(2),
	combout => \volmap|z[2]~0_combout\);

-- Location: FF_X59_Y55_N11
\volmap|FSM_cycle:pressed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \volmap|pressed~0_combout\,
	ena => \volmap|z[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|FSM_cycle:pressed~q\);

-- Location: LCCOMB_X59_Y55_N6
\volmap|FSM_cycle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|FSM_cycle~0_combout\ = (!\vol_down~input_o\ & (\vol_up~input_o\ & !\volmap|FSM_cycle:pressed~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vol_down~input_o\,
	datac => \vol_up~input_o\,
	datad => \volmap|FSM_cycle:pressed~q\,
	combout => \volmap|FSM_cycle~0_combout\);

-- Location: LCCOMB_X59_Y55_N30
\volmap|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|Mux4~0_combout\ = (!\volmap|FSM_cycle:pressed~q\ & ((\volmap|current\(1) & (!\vol_down~input_o\ & \vol_up~input_o\)) # (!\volmap|current\(1) & (\vol_down~input_o\ & !\vol_up~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \volmap|current\(1),
	datab => \vol_down~input_o\,
	datac => \vol_up~input_o\,
	datad => \volmap|FSM_cycle:pressed~q\,
	combout => \volmap|Mux4~0_combout\);

-- Location: LCCOMB_X59_Y55_N26
\volmap|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|Mux4~2_combout\ = (\volmap|current\(1) & (((!\volmap|FSM_cycle~1_combout\)) # (!\volmap|current\(0)))) # (!\volmap|current\(1) & (\volmap|current\(0) & (\volmap|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \volmap|current\(1),
	datab => \volmap|current\(0),
	datac => \volmap|Mux4~0_combout\,
	datad => \volmap|FSM_cycle~1_combout\,
	combout => \volmap|Mux4~2_combout\);

-- Location: LCCOMB_X59_Y55_N28
\volmap|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|Mux4~1_combout\ = (\volmap|current\(0)) # ((\volmap|current\(1) & (\volmap|Mux4~0_combout\)) # (!\volmap|current\(1) & ((\volmap|FSM_cycle~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \volmap|current\(1),
	datab => \volmap|current\(0),
	datac => \volmap|Mux4~0_combout\,
	datad => \volmap|FSM_cycle~1_combout\,
	combout => \volmap|Mux4~1_combout\);

-- Location: LCCOMB_X59_Y55_N22
\volmap|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|Mux4~3_combout\ = (\volmap|current\(2) & (((\volmap|Mux4~2_combout\ & !\volmap|Mux4~1_combout\)))) # (!\volmap|current\(2) & ((\volmap|Mux4~2_combout\) # ((\volmap|FSM_cycle~0_combout\ & !\volmap|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \volmap|FSM_cycle~0_combout\,
	datab => \volmap|current\(2),
	datac => \volmap|Mux4~2_combout\,
	datad => \volmap|Mux4~1_combout\,
	combout => \volmap|Mux4~3_combout\);

-- Location: FF_X59_Y55_N23
\volmap|current[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \volmap|Mux4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|current\(1));

-- Location: LCCOMB_X59_Y55_N0
\volmap|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|Mux3~0_combout\ = (\volmap|FSM_cycle:pressed~q\ & (((\volmap|current\(2))))) # (!\volmap|FSM_cycle:pressed~q\ & ((\vol_down~input_o\ & ((\volmap|current\(2)) # (!\vol_up~input_o\))) # (!\vol_down~input_o\ & (!\vol_up~input_o\ & 
-- \volmap|current\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \volmap|FSM_cycle:pressed~q\,
	datab => \vol_down~input_o\,
	datac => \vol_up~input_o\,
	datad => \volmap|current\(2),
	combout => \volmap|Mux3~0_combout\);

-- Location: LCCOMB_X59_Y55_N24
\volmap|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|Mux3~1_combout\ = (\volmap|Mux3~0_combout\ & ((\volmap|current\(1) & (!\volmap|current\(0) & \volmap|current\(2))) # (!\volmap|current\(1) & (\volmap|current\(0) & !\volmap|current\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \volmap|current\(1),
	datab => \volmap|current\(0),
	datac => \volmap|current\(2),
	datad => \volmap|Mux3~0_combout\,
	combout => \volmap|Mux3~1_combout\);

-- Location: FF_X59_Y55_N25
\volmap|current[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \volmap|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|current\(2));

-- Location: FF_X58_Y53_N25
\volmap|z[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \volmap|current\(2),
	sload => VCC,
	ena => \volmap|z[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|z\(2));

-- Location: LCCOMB_X62_Y55_N20
\volmap|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|Mux1~0_combout\ = (!\volmap|current\(1) & !\volmap|current\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \volmap|current\(1),
	datad => \volmap|current\(2),
	combout => \volmap|Mux1~0_combout\);

-- Location: FF_X62_Y55_N21
\volmap|z[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \volmap|Mux1~0_combout\,
	ena => \volmap|z[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|z\(1));

-- Location: LCCOMB_X59_Y52_N4
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

-- Location: LCCOMB_X61_Y53_N2
\vgamap|videoGen|pixelDraw~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~113_combout\ = (\vgamap|videoGen|LessThan22~3_combout\ & ((\vgamap|videoSync|pixel_row\(6)) # ((\vgamap|videoSync|pixel_row\(5) & \vgamap|videoGen|LessThan48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(6),
	datab => \vgamap|videoGen|LessThan22~3_combout\,
	datac => \vgamap|videoSync|pixel_row\(5),
	datad => \vgamap|videoGen|LessThan48~0_combout\,
	combout => \vgamap|videoGen|pixelDraw~113_combout\);

-- Location: LCCOMB_X61_Y53_N16
\vgamap|videoGen|pixelDraw~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~114_combout\ = (\vgamap|videoGen|pixelDraw~60_combout\ & (!\vgamap|videoGen|LessThan22~1_combout\ & (\vgamap|videoGen|pixelDraw~12_combout\ & \vgamap|videoGen|pixelDraw~113_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~60_combout\,
	datab => \vgamap|videoGen|LessThan22~1_combout\,
	datac => \vgamap|videoGen|pixelDraw~12_combout\,
	datad => \vgamap|videoGen|pixelDraw~113_combout\,
	combout => \vgamap|videoGen|pixelDraw~114_combout\);

-- Location: LCCOMB_X59_Y55_N12
\volmap|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \volmap|Mux2~0_combout\ = (\volmap|current\(0) & !\volmap|current\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \volmap|current\(0),
	datad => \volmap|current\(2),
	combout => \volmap|Mux2~0_combout\);

-- Location: FF_X58_Y53_N21
\volmap|z[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \volmap|Mux2~0_combout\,
	sload => VCC,
	ena => \volmap|z[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volmap|z\(0));

-- Location: LCCOMB_X63_Y53_N8
\vgamap|videoGen|colorAddress~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~31_combout\ = (\vgamap|videoGen|pixelDraw~110_combout\) # ((\vgamap|videoGen|pixelDraw~112_combout\) # ((\vgamap|videoGen|pixelDraw~107_combout\ & \volmap|z\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~110_combout\,
	datab => \vgamap|videoGen|pixelDraw~112_combout\,
	datac => \vgamap|videoGen|pixelDraw~107_combout\,
	datad => \volmap|z\(0),
	combout => \vgamap|videoGen|colorAddress~31_combout\);

-- Location: LCCOMB_X58_Y53_N18
\vgamap|videoGen|colorAddress~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~32_combout\ = (\volmap|z\(0) & ((\vgamap|videoGen|pixelDraw~110_combout\) # ((\volmap|z\(2) & \vgamap|videoGen|pixelDraw~112_combout\)))) # (!\volmap|z\(0) & (((\volmap|z\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~110_combout\,
	datab => \volmap|z\(2),
	datac => \vgamap|videoGen|pixelDraw~112_combout\,
	datad => \volmap|z\(0),
	combout => \vgamap|videoGen|colorAddress~32_combout\);

-- Location: LCCOMB_X63_Y53_N30
\vgamap|videoGen|colorAddress~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~33_combout\ = (\vgamap|videoGen|pixelDraw~114_combout\) # ((\vgamap|videoGen|colorAddress~31_combout\ & ((\volmap|z\(1)) # (\vgamap|videoGen|colorAddress~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \volmap|z\(1),
	datab => \vgamap|videoGen|pixelDraw~114_combout\,
	datac => \vgamap|videoGen|colorAddress~31_combout\,
	datad => \vgamap|videoGen|colorAddress~32_combout\,
	combout => \vgamap|videoGen|colorAddress~33_combout\);

-- Location: LCCOMB_X63_Y53_N14
\vgamap|videoGen|colorAddress~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~22_combout\ = (!\vgamap|videoGen|pixelDraw~66_combout\ & !\vgamap|videoGen|pixelDraw~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoGen|pixelDraw~66_combout\,
	datac => \vgamap|videoGen|pixelDraw~70_combout\,
	combout => \vgamap|videoGen|colorAddress~22_combout\);

-- Location: IOIBUF_X115_Y53_N15
\oct_sel~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_oct_sel,
	o => \oct_sel~input_o\);

-- Location: LCCOMB_X66_Y51_N28
\octmap|FSM_cycle:pressed~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \octmap|FSM_cycle:pressed~0_combout\ = !\oct_sel~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \oct_sel~input_o\,
	combout => \octmap|FSM_cycle:pressed~0_combout\);

-- Location: LCCOMB_X66_Y51_N22
\octmap|z[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \octmap|z[0]~0_combout\ = (\octmap|current\(0)) # (!\octmap|current\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \octmap|current\(1),
	datad => \octmap|current\(0),
	combout => \octmap|z[0]~0_combout\);

-- Location: FF_X66_Y51_N29
\octmap|FSM_cycle:pressed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \octmap|FSM_cycle:pressed~0_combout\,
	ena => \octmap|z[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \octmap|FSM_cycle:pressed~q\);

-- Location: LCCOMB_X66_Y51_N20
\octmap|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \octmap|Mux3~0_combout\ = \octmap|current\(0) $ (((!\oct_sel~input_o\ & (!\octmap|current\(1) & !\octmap|FSM_cycle:pressed~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oct_sel~input_o\,
	datab => \octmap|current\(1),
	datac => \octmap|current\(0),
	datad => \octmap|FSM_cycle:pressed~q\,
	combout => \octmap|Mux3~0_combout\);

-- Location: FF_X66_Y51_N21
\octmap|current[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \octmap|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \octmap|current\(0));

-- Location: LCCOMB_X66_Y51_N30
\octmap|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \octmap|Mux2~0_combout\ = (\octmap|current\(0) & (\octmap|current\(1) & ((\oct_sel~input_o\) # (\octmap|FSM_cycle:pressed~q\)))) # (!\octmap|current\(0) & (!\oct_sel~input_o\ & (!\octmap|current\(1) & !\octmap|FSM_cycle:pressed~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oct_sel~input_o\,
	datab => \octmap|current\(0),
	datac => \octmap|current\(1),
	datad => \octmap|FSM_cycle:pressed~q\,
	combout => \octmap|Mux2~0_combout\);

-- Location: FF_X66_Y51_N31
\octmap|current[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \octmap|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \octmap|current\(1));

-- Location: FF_X63_Y53_N3
\octmap|z[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \octmap|current\(1),
	sload => VCC,
	ena => \octmap|z[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \octmap|z\(1));

-- Location: LCCOMB_X66_Y51_N0
\octmap|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \octmap|Mux1~0_combout\ = (!\octmap|current\(1) & !\octmap|current\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \octmap|current\(1),
	datad => \octmap|current\(0),
	combout => \octmap|Mux1~0_combout\);

-- Location: FF_X65_Y53_N23
\octmap|z[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \octmap|Mux1~0_combout\,
	sload => VCC,
	ena => \octmap|z[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \octmap|z\(0));

-- Location: LCCOMB_X63_Y53_N4
\vgamap|videoGen|colorAddress~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~28_combout\ = (\vgamap|videoGen|pixelDraw~66_combout\ & (!\vgamap|videoGen|pixelDraw~70_combout\ & ((\octmap|z\(1)) # (\octmap|z\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \octmap|z\(1),
	datab => \vgamap|videoGen|pixelDraw~66_combout\,
	datac => \vgamap|videoGen|pixelDraw~70_combout\,
	datad => \octmap|z\(0),
	combout => \vgamap|videoGen|colorAddress~28_combout\);

-- Location: LCCOMB_X63_Y53_N2
\vgamap|videoGen|colorAddress~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~29_combout\ = (\vgamap|videoGen|pixelDraw~76_combout\ & (((\octmap|z\(1)) # (!\octmap|z\(0))))) # (!\vgamap|videoGen|pixelDraw~76_combout\ & (\vgamap|videoGen|pixelDraw~74_combout\ & ((\octmap|z\(0)) # (!\octmap|z\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~76_combout\,
	datab => \vgamap|videoGen|pixelDraw~74_combout\,
	datac => \octmap|z\(1),
	datad => \octmap|z\(0),
	combout => \vgamap|videoGen|colorAddress~29_combout\);

-- Location: LCCOMB_X63_Y53_N10
\vgamap|videoGen|colorAddress~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~30_combout\ = (\vgamap|videoGen|colorAddress~26_combout\ & ((\vgamap|videoGen|colorAddress~28_combout\) # ((\vgamap|videoGen|colorAddress~22_combout\ & \vgamap|videoGen|colorAddress~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|colorAddress~26_combout\,
	datab => \vgamap|videoGen|colorAddress~22_combout\,
	datac => \vgamap|videoGen|colorAddress~28_combout\,
	datad => \vgamap|videoGen|colorAddress~29_combout\,
	combout => \vgamap|videoGen|colorAddress~30_combout\);

-- Location: LCCOMB_X63_Y53_N28
\vgamap|videoGen|colorAddress~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~35_combout\ = (\vgamap|videoGen|colorAddress~33_combout\) # ((\vgamap|videoGen|colorAddress~30_combout\) # ((!\vgamap|videoGen|colorAddress~34_combout\ & \volmap|z\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|colorAddress~34_combout\,
	datab => \volmap|z\(2),
	datac => \vgamap|videoGen|colorAddress~33_combout\,
	datad => \vgamap|videoGen|colorAddress~30_combout\,
	combout => \vgamap|videoGen|colorAddress~35_combout\);

-- Location: LCCOMB_X63_Y53_N18
\vgamap|videoGen|colorAddress~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~37_combout\ = (\vgamap|videoGen|colorAddress~35_combout\) # ((\vgamap|videoGen|colorAddress~36_combout\ & (\vgamap|videoGen|colorAddress~25_combout\ & \vgamap|videoGen|colorAddress~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|colorAddress~36_combout\,
	datab => \vgamap|videoGen|colorAddress~25_combout\,
	datac => \vgamap|videoGen|colorAddress~26_combout\,
	datad => \vgamap|videoGen|colorAddress~35_combout\,
	combout => \vgamap|videoGen|colorAddress~37_combout\);

-- Location: LCCOMB_X63_Y53_N0
\vgamap|videoGen|colorAddress~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~38_combout\ = (\vgamap|videoGen|colorAddress~10_combout\) # ((\vgamap|videoGen|colorAddress~57_combout\ & ((\vgamap|videoGen|colorAddress~27_combout\) # (\vgamap|videoGen|colorAddress~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|colorAddress~57_combout\,
	datab => \vgamap|videoGen|colorAddress~27_combout\,
	datac => \vgamap|videoGen|colorAddress~10_combout\,
	datad => \vgamap|videoGen|colorAddress~37_combout\,
	combout => \vgamap|videoGen|colorAddress~38_combout\);

-- Location: FF_X63_Y53_N1
\vgamap|videoGen|colorAddress[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vgamap|videoGen|colorAddress~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoGen|colorAddress\(0));

-- Location: LCCOMB_X62_Y53_N4
\vgamap|videoGen|colorAddress~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~43_combout\ = (!\vgamap|videoGen|pixelDraw~98_combout\ & (!\vgamap|videoGen|pixelDraw~100_combout\ & \vgamap|videoGen|colorAddress~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoGen|pixelDraw~98_combout\,
	datac => \vgamap|videoGen|pixelDraw~100_combout\,
	datad => \vgamap|videoGen|colorAddress~58_combout\,
	combout => \vgamap|videoGen|colorAddress~43_combout\);

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

-- Location: LCCOMB_X62_Y53_N12
\vgamap|videoGen|colorAddress~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~49_combout\ = (\vgamap|videoGen|pixelDraw~83_combout\ & (((!\keys[10]~input_o\)))) # (!\vgamap|videoGen|pixelDraw~83_combout\ & (!\keys[8]~input_o\ & ((\vgamap|videoGen|pixelDraw~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keys[8]~input_o\,
	datab => \vgamap|videoGen|pixelDraw~83_combout\,
	datac => \keys[10]~input_o\,
	datad => \vgamap|videoGen|pixelDraw~87_combout\,
	combout => \vgamap|videoGen|colorAddress~49_combout\);

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

-- Location: LCCOMB_X57_Y53_N16
\vgamap|videoGen|colorAddress~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~46_combout\ = (!\keys[1]~input_o\ & (\vgamap|videoGen|pixelDraw~90_combout\ & (\vgamap|videoGen|pixelDraw~22_combout\ & !\vgamap|videoGen|pixelDraw~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keys[1]~input_o\,
	datab => \vgamap|videoGen|pixelDraw~90_combout\,
	datac => \vgamap|videoGen|pixelDraw~22_combout\,
	datad => \vgamap|videoGen|pixelDraw~89_combout\,
	combout => \vgamap|videoGen|colorAddress~46_combout\);

-- Location: LCCOMB_X62_Y53_N28
\vgamap|videoGen|colorAddress~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~47_combout\ = (\vgamap|videoGen|colorAddress~23_combout\ & ((\vgamap|videoGen|pixelDraw~95_combout\ & (!\keys[3]~input_o\)) # (!\vgamap|videoGen|pixelDraw~95_combout\ & ((\vgamap|videoGen|colorAddress~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|colorAddress~23_combout\,
	datab => \keys[3]~input_o\,
	datac => \vgamap|videoGen|colorAddress~46_combout\,
	datad => \vgamap|videoGen|pixelDraw~95_combout\,
	combout => \vgamap|videoGen|colorAddress~47_combout\);

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

-- Location: LCCOMB_X62_Y53_N14
\vgamap|videoGen|colorAddress~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~48_combout\ = (!\keys[6]~input_o\ & (!\vgamap|videoGen|pixelDraw~87_combout\ & (\vgamap|videoGen|pixelDraw~82_combout\ & !\vgamap|videoGen|pixelDraw~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keys[6]~input_o\,
	datab => \vgamap|videoGen|pixelDraw~87_combout\,
	datac => \vgamap|videoGen|pixelDraw~82_combout\,
	datad => \vgamap|videoGen|pixelDraw~83_combout\,
	combout => \vgamap|videoGen|colorAddress~48_combout\);

-- Location: LCCOMB_X65_Y53_N12
\vgamap|videoGen|colorAddress~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~44_combout\ = (\vgamap|videoGen|pixelDraw~52_combout\ & (!\vgamap|videoGen|pixelDraw~58_combout\ & !\vgamap|videoGen|pixelDraw~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~52_combout\,
	datac => \vgamap|videoGen|pixelDraw~58_combout\,
	datad => \vgamap|videoGen|pixelDraw~61_combout\,
	combout => \vgamap|videoGen|colorAddress~44_combout\);

-- Location: LCCOMB_X62_Y53_N6
\vgamap|videoGen|colorAddress~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~45_combout\ = (!\vgamap|videoGen|pixelDraw~49_combout\ & (\vgamap|videoGen|colorAddress~24_combout\ & (\vgamap|videoGen|colorAddress~44_combout\ & \vgamap|videoGen|colorAddress~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~49_combout\,
	datab => \vgamap|videoGen|colorAddress~24_combout\,
	datac => \vgamap|videoGen|colorAddress~44_combout\,
	datad => \vgamap|videoGen|colorAddress~19_combout\,
	combout => \vgamap|videoGen|colorAddress~45_combout\);

-- Location: LCCOMB_X62_Y53_N22
\vgamap|videoGen|colorAddress~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~50_combout\ = (\vgamap|videoGen|colorAddress~49_combout\) # ((\vgamap|videoGen|colorAddress~47_combout\) # ((\vgamap|videoGen|colorAddress~48_combout\) # (\vgamap|videoGen|colorAddress~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|colorAddress~49_combout\,
	datab => \vgamap|videoGen|colorAddress~47_combout\,
	datac => \vgamap|videoGen|colorAddress~48_combout\,
	datad => \vgamap|videoGen|colorAddress~45_combout\,
	combout => \vgamap|videoGen|colorAddress~50_combout\);

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

-- Location: LCCOMB_X61_Y53_N22
\vgamap|videoGen|colorAddress~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~41_combout\ = (!\vgamap|videoGen|pixelDraw~114_combout\ & ((\mute_sel~input_o\) # (!\vgamap|videoGen|pixelDraw~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mute_sel~input_o\,
	datac => \vgamap|videoGen|pixelDraw~70_combout\,
	datad => \vgamap|videoGen|pixelDraw~114_combout\,
	combout => \vgamap|videoGen|colorAddress~41_combout\);

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

-- Location: LCCOMB_X57_Y53_N4
\vgamap|videoGen|colorAddress~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~39_combout\ = (!\vgamap|videoSync|pixel_column\(8) & (!\keys[13]~input_o\ & (\vgamap|videoGen|pixelDraw~78_combout\ & \vgamap|videoGen|pixelDraw~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(8),
	datab => \keys[13]~input_o\,
	datac => \vgamap|videoGen|pixelDraw~78_combout\,
	datad => \vgamap|videoGen|pixelDraw~99_combout\,
	combout => \vgamap|videoGen|colorAddress~39_combout\);

-- Location: LCCOMB_X57_Y53_N14
\vgamap|videoGen|colorAddress~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~40_combout\ = (\vgamap|videoGen|colorAddress~58_combout\ & ((\vgamap|videoGen|pixelDraw~98_combout\ & (!\keys[15]~input_o\)) # (!\vgamap|videoGen|pixelDraw~98_combout\ & ((\vgamap|videoGen|colorAddress~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~98_combout\,
	datab => \keys[15]~input_o\,
	datac => \vgamap|videoGen|colorAddress~39_combout\,
	datad => \vgamap|videoGen|colorAddress~58_combout\,
	combout => \vgamap|videoGen|colorAddress~40_combout\);

-- Location: LCCOMB_X62_Y53_N2
\vgamap|videoGen|colorAddress~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~42_combout\ = ((\vgamap|videoGen|colorAddress~40_combout\) # (!\vgamap|videoGen|colorAddress~41_combout\)) # (!\vgamap|videoGen|colorAddress~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoGen|colorAddress~26_combout\,
	datac => \vgamap|videoGen|colorAddress~41_combout\,
	datad => \vgamap|videoGen|colorAddress~40_combout\,
	combout => \vgamap|videoGen|colorAddress~42_combout\);

-- Location: LCCOMB_X62_Y53_N16
\vgamap|videoGen|colorAddress~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~51_combout\ = (\vgamap|videoGen|colorAddress~57_combout\ & ((\vgamap|videoGen|colorAddress~42_combout\) # ((\vgamap|videoGen|colorAddress~43_combout\ & \vgamap|videoGen|colorAddress~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|colorAddress~57_combout\,
	datab => \vgamap|videoGen|colorAddress~43_combout\,
	datac => \vgamap|videoGen|colorAddress~50_combout\,
	datad => \vgamap|videoGen|colorAddress~42_combout\,
	combout => \vgamap|videoGen|colorAddress~51_combout\);

-- Location: FF_X62_Y53_N17
\vgamap|videoGen|colorAddress[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vgamap|videoGen|colorAddress~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoGen|colorAddress\(1));

-- Location: LCCOMB_X66_Y53_N4
\vgamap|videoGen|colorAddress~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~55_combout\ = (\vgamap|videoGen|pixelDraw~18_combout\ & ((\synmap|z\(1)) # ((!\synmap|z\(0) & !\vgamap|videoGen|pixelDraw~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \synmap|z\(1),
	datab => \synmap|z\(0),
	datac => \vgamap|videoGen|pixelDraw~117_combout\,
	datad => \vgamap|videoGen|pixelDraw~18_combout\,
	combout => \vgamap|videoGen|colorAddress~55_combout\);

-- Location: LCCOMB_X66_Y53_N2
\vgamap|videoGen|colorAddress~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~52_combout\ = (\vgamap|videoGen|pixelDraw~76_combout\ & ((\octmap|z\(1)) # ((!\octmap|z\(0))))) # (!\vgamap|videoGen|pixelDraw~76_combout\ & (\vgamap|videoGen|pixelDraw~74_combout\ & ((\octmap|z\(0)) # (!\octmap|z\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \octmap|z\(1),
	datab => \octmap|z\(0),
	datac => \vgamap|videoGen|pixelDraw~74_combout\,
	datad => \vgamap|videoGen|pixelDraw~76_combout\,
	combout => \vgamap|videoGen|colorAddress~52_combout\);

-- Location: LCCOMB_X66_Y53_N8
\vgamap|videoGen|colorAddress~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~53_combout\ = (((\vgamap|videoGen|colorAddress~22_combout\ & \vgamap|videoGen|colorAddress~52_combout\)) # (!\vgamap|videoGen|colorAddress~26_combout\)) # (!\vgamap|videoGen|colorAddress~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|colorAddress~41_combout\,
	datab => \vgamap|videoGen|colorAddress~26_combout\,
	datac => \vgamap|videoGen|colorAddress~22_combout\,
	datad => \vgamap|videoGen|colorAddress~52_combout\,
	combout => \vgamap|videoGen|colorAddress~53_combout\);

-- Location: LCCOMB_X66_Y53_N18
\vgamap|videoGen|colorAddress~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~54_combout\ = (\vgamap|videoGen|colorAddress~57_combout\ & ((\vgamap|videoGen|colorAddress~28_combout\) # ((\vgamap|videoGen|colorAddress~53_combout\) # (\vgamap|videoGen|colorAddress~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|colorAddress~57_combout\,
	datab => \vgamap|videoGen|colorAddress~28_combout\,
	datac => \vgamap|videoGen|colorAddress~53_combout\,
	datad => \vgamap|videoGen|colorAddress~25_combout\,
	combout => \vgamap|videoGen|colorAddress~54_combout\);

-- Location: LCCOMB_X66_Y53_N0
\vgamap|videoGen|colorAddress~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~56_combout\ = ((\vgamap|videoGen|colorAddress~55_combout\) # (\vgamap|videoGen|colorAddress~54_combout\)) # (!\vgamap|videoGen|colorAddress~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|colorAddress~9_combout\,
	datac => \vgamap|videoGen|colorAddress~55_combout\,
	datad => \vgamap|videoGen|colorAddress~54_combout\,
	combout => \vgamap|videoGen|colorAddress~56_combout\);

-- Location: FF_X66_Y53_N1
\vgamap|videoGen|colorAddress[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vgamap|videoGen|colorAddress~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoGen|colorAddress\(2));

-- Location: M9K_X64_Y53_N0
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

-- Location: LCCOMB_X61_Y51_N22
\vgamap|videoSync|process_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|process_1~1_combout\ = (\vgamap|videoSync|h_count\(8)) # (((\vgamap|videoSync|process_1~0_combout\) # (!\vgamap|videoSync|h_count\(9))) # (!\vgamap|videoSync|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|h_count\(8),
	datab => \vgamap|videoSync|h_count\(7),
	datac => \vgamap|videoSync|process_1~0_combout\,
	datad => \vgamap|videoSync|h_count\(9),
	combout => \vgamap|videoSync|process_1~1_combout\);

-- Location: LCCOMB_X61_Y51_N20
\vgamap|videoSync|process_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|process_1~2_combout\ = (\vgamap|videoSync|h_count\(5) & ((\vgamap|videoSync|h_count\(2)) # ((\vgamap|videoSync|h_count\(0)) # (\vgamap|videoSync|h_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|h_count\(2),
	datab => \vgamap|videoSync|h_count\(0),
	datac => \vgamap|videoSync|h_count\(1),
	datad => \vgamap|videoSync|h_count\(5),
	combout => \vgamap|videoSync|process_1~2_combout\);

-- Location: LCCOMB_X61_Y51_N26
\vgamap|videoSync|process_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|process_1~4_combout\ = (\vgamap|videoSync|process_1~1_combout\) # ((\vgamap|videoSync|process_1~3_combout\ & (\vgamap|videoSync|h_count\(6) & \vgamap|videoSync|process_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|process_1~3_combout\,
	datab => \vgamap|videoSync|h_count\(6),
	datac => \vgamap|videoSync|process_1~1_combout\,
	datad => \vgamap|videoSync|process_1~2_combout\,
	combout => \vgamap|videoSync|process_1~4_combout\);

-- Location: FF_X61_Y51_N27
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

-- Location: LCCOMB_X61_Y51_N12
\vgamap|videoSync|horiz_sync_out~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|horiz_sync_out~feeder_combout\ = \vgamap|videoSync|horiz_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|horiz_sync~q\,
	combout => \vgamap|videoSync|horiz_sync_out~feeder_combout\);

-- Location: FF_X61_Y51_N13
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

-- Location: LCCOMB_X62_Y52_N30
\vgamap|videoSync|process_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|process_1~5_combout\ = ((\vgamap|videoSync|v_count\(1) & ((\vgamap|videoSync|v_count\(2)) # (!\vgamap|videoSync|v_count\(0)))) # (!\vgamap|videoSync|v_count\(1) & ((!\vgamap|videoSync|v_count\(2))))) # (!\vgamap|videoSync|v_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count\(1),
	datab => \vgamap|videoSync|v_count\(0),
	datac => \vgamap|videoSync|v_count\(2),
	datad => \vgamap|videoSync|v_count\(3),
	combout => \vgamap|videoSync|process_1~5_combout\);

-- Location: LCCOMB_X63_Y52_N4
\vgamap|videoSync|process_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|process_1~6_combout\ = (\vgamap|videoSync|v_count\(9)) # (((\vgamap|videoSync|v_count\(4)) # (\vgamap|videoSync|process_1~5_combout\)) # (!\vgamap|videoSync|LessThan6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count\(9),
	datab => \vgamap|videoSync|LessThan6~0_combout\,
	datac => \vgamap|videoSync|v_count\(4),
	datad => \vgamap|videoSync|process_1~5_combout\,
	combout => \vgamap|videoSync|process_1~6_combout\);

-- Location: FF_X63_Y52_N5
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

-- Location: FF_X63_Y52_N23
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

-- Location: FF_X61_Y52_N9
\vgamap|videoSync|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|LessThan5~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|video_on_h~q\);

-- Location: FF_X62_Y52_N25
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

-- Location: LCCOMB_X61_Y52_N26
\vgamap|videoSync|video_on\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|video_on~combout\ = (\vgamap|videoSync|video_on_h~q\ & \vgamap|videoSync|video_on_v~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|video_on_h~q\,
	datad => \vgamap|videoSync|video_on_v~q\,
	combout => \vgamap|videoSync|video_on~combout\);

-- Location: LCCOMB_X34_Y49_N8
\i2c|u0|I2C_SCLK~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|I2C_SCLK~0_combout\ = (\i2c|u0|SD_COUNTER\(4) & (((!\i2c|u0|SD_COUNTER\(0)) # (!\i2c|u0|SD_COUNTER\(2))) # (!\i2c|u0|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|SD_COUNTER\(4),
	datab => \i2c|u0|Mux0~2_combout\,
	datac => \i2c|u0|SD_COUNTER\(2),
	datad => \i2c|u0|SD_COUNTER\(0),
	combout => \i2c|u0|I2C_SCLK~0_combout\);

-- Location: LCCOMB_X33_Y49_N22
\i2c|u0|I2C_SCLK~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|I2C_SCLK~1_combout\ = (\i2c|u0|I2C_SCLK~0_combout\) # ((!\i2c|u0|SD_COUNTER\(4) & ((\i2c|u0|SD_COUNTER\(3)) # (\i2c|u0|SD_COUNTER\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|SD_COUNTER\(3),
	datab => \i2c|u0|I2C_SCLK~0_combout\,
	datac => \i2c|u0|SD_COUNTER\(2),
	datad => \i2c|u0|SD_COUNTER\(4),
	combout => \i2c|u0|I2C_SCLK~1_combout\);

-- Location: LCCOMB_X33_Y49_N30
\i2c|u0|SCLK~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|SCLK~0_combout\ = (\i2c|u0|SD_COUNTER\(1) & (((\i2c|u0|SD_COUNTER\(3) & \i2c|u0|SD_COUNTER\(4))) # (!\i2c|u0|SD_COUNTER\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|SD_COUNTER\(3),
	datab => \i2c|u0|SD_COUNTER\(1),
	datac => \i2c|u0|SD_COUNTER\(2),
	datad => \i2c|u0|SD_COUNTER\(4),
	combout => \i2c|u0|SCLK~0_combout\);

-- Location: LCCOMB_X33_Y49_N8
\i2c|u0|SCLK~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|SCLK~1_combout\ = (\i2c|u0|SCLK~0_combout\ & ((\i2c|u0|SD_COUNTER\(2)) # ((!\i2c|u0|Selector1~0_combout\ & \i2c|u0|SCLK~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|SCLK~0_combout\,
	datab => \i2c|u0|SD_COUNTER\(2),
	datac => \i2c|u0|Selector1~0_combout\,
	datad => \i2c|u0|SCLK~q\,
	combout => \i2c|u0|SCLK~1_combout\);

-- Location: LCCOMB_X33_Y49_N28
\i2c|u0|SCLK~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|SCLK~2_combout\ = (\i2c|u0|SD_COUNTER\(0) & (\i2c|u0|SCLK~1_combout\)) # (!\i2c|u0|SD_COUNTER\(0) & ((\i2c|u0|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c|u0|SD_COUNTER\(0),
	datac => \i2c|u0|SCLK~1_combout\,
	datad => \i2c|u0|Decoder0~0_combout\,
	combout => \i2c|u0|SCLK~2_combout\);

-- Location: LCCOMB_X33_Y49_N18
\i2c|u0|SCLK~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|SCLK~3_combout\ = (\i2c|u0|SD_COUNTER\(5) & (((\i2c|u0|SCLK~q\)))) # (!\i2c|u0|SD_COUNTER\(5) & ((\i2c|u0|SCLK~2_combout\) # ((!\i2c|u0|SCLK~1_combout\ & \i2c|u0|SCLK~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|SD_COUNTER\(5),
	datab => \i2c|u0|SCLK~1_combout\,
	datac => \i2c|u0|SCLK~q\,
	datad => \i2c|u0|SCLK~2_combout\,
	combout => \i2c|u0|SCLK~3_combout\);

-- Location: FF_X33_Y49_N19
\i2c|u0|SCLK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \i2c|u0|SCLK~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c|u0|SCLK~q\);

-- Location: LCCOMB_X33_Y49_N20
\i2c|u0|I2C_SCLK~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c|u0|I2C_SCLK~2_combout\ = (\i2c|u0|SCLK~q\) # ((\i2c|u0|I2C_SCLK~1_combout\ & (!\i2c|u0|SD_COUNTER\(5) & !\i2c|mI2C_CTRL_CLK~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c|u0|I2C_SCLK~1_combout\,
	datab => \i2c|u0|SCLK~q\,
	datac => \i2c|u0|SD_COUNTER\(5),
	datad => \i2c|mI2C_CTRL_CLK~q\,
	combout => \i2c|u0|I2C_SCLK~2_combout\);

-- Location: LCCOMB_X8_Y64_N10
\V1|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Add2~0_combout\ = \V1|sin_counter\(0) $ (VCC)
-- \V1|Add2~1\ = CARRY(\V1|sin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(0),
	datad => VCC,
	combout => \V1|Add2~0_combout\,
	cout => \V1|Add2~1\);

-- Location: FF_X11_Y65_N7
\V1|lrck_lat\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_clock[1]~clkctrl_outclk\,
	asdata => \V1|lrck~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|lrck_lat~q\);

-- Location: LCCOMB_X11_Y65_N6
\V1|REQ_AUDIO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|REQ_AUDIO~0_combout\ = (\V1|lrck_lat~q\ & !\V1|lrck~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V1|lrck_lat~q\,
	datad => \V1|lrck~q\,
	combout => \V1|REQ_AUDIO~0_combout\);

-- Location: FF_X8_Y64_N11
\V1|sin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_clock[1]~clkctrl_outclk\,
	d => \V1|Add2~0_combout\,
	ena => \V1|REQ_AUDIO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|sin_counter\(0));

-- Location: LCCOMB_X8_Y64_N12
\V1|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Add2~2_combout\ = (\V1|sin_counter\(1) & (!\V1|Add2~1\)) # (!\V1|sin_counter\(1) & ((\V1|Add2~1\) # (GND)))
-- \V1|Add2~3\ = CARRY((!\V1|Add2~1\) # (!\V1|sin_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(1),
	datad => VCC,
	cin => \V1|Add2~1\,
	combout => \V1|Add2~2_combout\,
	cout => \V1|Add2~3\);

-- Location: FF_X8_Y64_N13
\V1|sin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_clock[1]~clkctrl_outclk\,
	d => \V1|Add2~2_combout\,
	ena => \V1|REQ_AUDIO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|sin_counter\(1));

-- Location: LCCOMB_X8_Y64_N14
\V1|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Add2~4_combout\ = (\V1|sin_counter\(2) & (\V1|Add2~3\ $ (GND))) # (!\V1|sin_counter\(2) & (!\V1|Add2~3\ & VCC))
-- \V1|Add2~5\ = CARRY((\V1|sin_counter\(2) & !\V1|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \V1|sin_counter\(2),
	datad => VCC,
	cin => \V1|Add2~3\,
	combout => \V1|Add2~4_combout\,
	cout => \V1|Add2~5\);

-- Location: FF_X8_Y64_N15
\V1|sin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_clock[1]~clkctrl_outclk\,
	d => \V1|Add2~4_combout\,
	ena => \V1|REQ_AUDIO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|sin_counter\(2));

-- Location: LCCOMB_X8_Y64_N16
\V1|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Add2~6_combout\ = (\V1|sin_counter\(3) & (!\V1|Add2~5\)) # (!\V1|sin_counter\(3) & ((\V1|Add2~5\) # (GND)))
-- \V1|Add2~7\ = CARRY((!\V1|Add2~5\) # (!\V1|sin_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \V1|sin_counter\(3),
	datad => VCC,
	cin => \V1|Add2~5\,
	combout => \V1|Add2~6_combout\,
	cout => \V1|Add2~7\);

-- Location: FF_X8_Y64_N17
\V1|sin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_clock[1]~clkctrl_outclk\,
	d => \V1|Add2~6_combout\,
	ena => \V1|REQ_AUDIO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|sin_counter\(3));

-- Location: LCCOMB_X8_Y64_N18
\V1|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Add2~8_combout\ = (\V1|sin_counter\(4) & (\V1|Add2~7\ $ (GND))) # (!\V1|sin_counter\(4) & (!\V1|Add2~7\ & VCC))
-- \V1|Add2~9\ = CARRY((\V1|sin_counter\(4) & !\V1|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(4),
	datad => VCC,
	cin => \V1|Add2~7\,
	combout => \V1|Add2~8_combout\,
	cout => \V1|Add2~9\);

-- Location: LCCOMB_X8_Y64_N26
\V1|sin_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|sin_counter~1_combout\ = (\V1|Add2~8_combout\ & (((!\V1|Equal3~0_combout\) # (!\V1|sin_counter\(1))) # (!\V1|sin_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(0),
	datab => \V1|sin_counter\(1),
	datac => \V1|Equal3~0_combout\,
	datad => \V1|Add2~8_combout\,
	combout => \V1|sin_counter~1_combout\);

-- Location: FF_X8_Y64_N27
\V1|sin_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_clock[1]~clkctrl_outclk\,
	d => \V1|sin_counter~1_combout\,
	ena => \V1|REQ_AUDIO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|sin_counter\(4));

-- Location: LCCOMB_X8_Y64_N20
\V1|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Add2~10_combout\ = \V1|sin_counter\(5) $ (\V1|Add2~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \V1|sin_counter\(5),
	cin => \V1|Add2~9\,
	combout => \V1|Add2~10_combout\);

-- Location: LCCOMB_X8_Y64_N4
\V1|sin_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|sin_counter~0_combout\ = (\V1|Add2~10_combout\ & (((!\V1|Equal3~0_combout\) # (!\V1|sin_counter\(1))) # (!\V1|sin_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(0),
	datab => \V1|sin_counter\(1),
	datac => \V1|Equal3~0_combout\,
	datad => \V1|Add2~10_combout\,
	combout => \V1|sin_counter~0_combout\);

-- Location: FF_X8_Y64_N5
\V1|sin_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_clock[1]~clkctrl_outclk\,
	d => \V1|sin_counter~0_combout\,
	ena => \V1|REQ_AUDIO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|sin_counter\(5));

-- Location: LCCOMB_X7_Y64_N16
\V1|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Equal3~0_combout\ = (\V1|sin_counter\(5) & (\V1|sin_counter\(3) & (\V1|sin_counter\(2) & !\V1|sin_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(5),
	datab => \V1|sin_counter\(3),
	datac => \V1|sin_counter\(2),
	datad => \V1|sin_counter\(4),
	combout => \V1|Equal3~0_combout\);

-- Location: LCCOMB_X9_Y65_N24
\V1|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux9~2_combout\ = (\V1|sin_counter\(1) & (\V1|sin_counter\(0) & ((\V1|sin_counter\(3)) # (!\V1|sin_counter\(2))))) # (!\V1|sin_counter\(1) & ((\V1|sin_counter\(3)) # ((\V1|sin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(1),
	datab => \V1|sin_counter\(3),
	datac => \V1|sin_counter\(2),
	datad => \V1|sin_counter\(0),
	combout => \V1|Mux9~2_combout\);

-- Location: LCCOMB_X9_Y65_N18
\V1|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux9~1_combout\ = (\V1|sin_counter\(0) & (\V1|sin_counter\(3) & (\V1|sin_counter\(1) $ (!\V1|sin_counter\(2))))) # (!\V1|sin_counter\(0) & (\V1|sin_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(1),
	datab => \V1|sin_counter\(3),
	datac => \V1|sin_counter\(2),
	datad => \V1|sin_counter\(0),
	combout => \V1|Mux9~1_combout\);

-- Location: LCCOMB_X9_Y65_N6
\V1|shift_out~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~38_combout\ = (!\V1|sin_counter\(4) & ((\V1|sin_counter\(5) & ((\V1|Mux9~1_combout\))) # (!\V1|sin_counter\(5) & (\V1|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(4),
	datab => \V1|Mux9~2_combout\,
	datac => \V1|sin_counter\(5),
	datad => \V1|Mux9~1_combout\,
	combout => \V1|shift_out~38_combout\);

-- Location: LCCOMB_X9_Y65_N20
\V1|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux10~2_combout\ = (\V1|sin_counter\(1) & ((\V1|sin_counter\(3) & ((\V1|sin_counter\(0)))) # (!\V1|sin_counter\(3) & ((!\V1|sin_counter\(0)) # (!\V1|sin_counter\(2)))))) # (!\V1|sin_counter\(1) & (((\V1|sin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(1),
	datab => \V1|sin_counter\(3),
	datac => \V1|sin_counter\(2),
	datad => \V1|sin_counter\(0),
	combout => \V1|Mux10~2_combout\);

-- Location: LCCOMB_X9_Y65_N2
\V1|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux10~1_combout\ = (\V1|sin_counter\(2) & (((!\V1|sin_counter\(0) & \V1|sin_counter\(3))) # (!\V1|sin_counter\(1)))) # (!\V1|sin_counter\(2) & ((\V1|sin_counter\(1)) # ((\V1|sin_counter\(0) & !\V1|sin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(0),
	datab => \V1|sin_counter\(3),
	datac => \V1|sin_counter\(2),
	datad => \V1|sin_counter\(1),
	combout => \V1|Mux10~1_combout\);

-- Location: LCCOMB_X9_Y65_N10
\V1|shift_out~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~41_combout\ = (!\V1|sin_counter\(4) & ((\V1|sin_counter\(5) & (!\V1|Mux10~2_combout\)) # (!\V1|sin_counter\(5) & ((\V1|Mux10~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(5),
	datab => \V1|Mux10~2_combout\,
	datac => \V1|sin_counter\(4),
	datad => \V1|Mux10~1_combout\,
	combout => \V1|shift_out~41_combout\);

-- Location: LCCOMB_X10_Y64_N26
\V1|shift_out~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~43_combout\ = (\V1|sin_counter\(0)) # ((\V1|sin_counter\(5) & ((\V1|sin_counter\(1)) # (\V1|sin_counter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(0),
	datab => \V1|sin_counter\(1),
	datac => \V1|sin_counter\(5),
	datad => \V1|sin_counter\(4),
	combout => \V1|shift_out~43_combout\);

-- Location: LCCOMB_X10_Y64_N16
\V1|shift_out~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~44_combout\ = (\V1|sin_counter\(5)) # ((\V1|sin_counter\(1) & !\V1|sin_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V1|sin_counter\(1),
	datac => \V1|sin_counter\(5),
	datad => \V1|sin_counter\(0),
	combout => \V1|shift_out~44_combout\);

-- Location: LCCOMB_X10_Y64_N8
\V1|shift_out~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~46_combout\ = (\V1|sin_counter\(4) & (\V1|shift_out~44_combout\ $ (((\V1|sin_counter\(3) & !\V1|shift_out~43_combout\))))) # (!\V1|sin_counter\(4) & ((\V1|shift_out~43_combout\ & ((\V1|sin_counter\(3)) # (!\V1|shift_out~44_combout\))) # 
-- (!\V1|shift_out~43_combout\ & ((\V1|shift_out~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(3),
	datab => \V1|sin_counter\(4),
	datac => \V1|shift_out~43_combout\,
	datad => \V1|shift_out~44_combout\,
	combout => \V1|shift_out~46_combout\);

-- Location: LCCOMB_X10_Y64_N12
\V1|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux15~4_combout\ = (!\V1|sin_counter\(5) & ((\V1|sin_counter\(2) & (!\V1|sin_counter\(1))) # (!\V1|sin_counter\(2) & ((\V1|sin_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(2),
	datab => \V1|sin_counter\(5),
	datac => \V1|sin_counter\(1),
	datad => \V1|sin_counter\(0),
	combout => \V1|Mux15~4_combout\);

-- Location: LCCOMB_X10_Y64_N4
\V1|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux15~0_combout\ = (\V1|sin_counter\(5)) # ((\V1|sin_counter\(1) & \V1|sin_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V1|sin_counter\(5),
	datac => \V1|sin_counter\(1),
	datad => \V1|sin_counter\(2),
	combout => \V1|Mux15~0_combout\);

-- Location: LCCOMB_X10_Y64_N30
\V1|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux15~1_combout\ = (\V1|sin_counter\(1) & (((!\V1|sin_counter\(5))) # (!\V1|sin_counter\(0)))) # (!\V1|sin_counter\(1) & (\V1|sin_counter\(0) $ (((\V1|sin_counter\(5) & \V1|sin_counter\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(0),
	datab => \V1|sin_counter\(1),
	datac => \V1|sin_counter\(5),
	datad => \V1|sin_counter\(2),
	combout => \V1|Mux15~1_combout\);

-- Location: LCCOMB_X10_Y64_N24
\V1|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux15~2_combout\ = (\V1|sin_counter\(5) & ((\V1|sin_counter\(0)) # ((\V1|sin_counter\(1)) # (!\V1|sin_counter\(2))))) # (!\V1|sin_counter\(5) & ((\V1|sin_counter\(2)) # ((\V1|sin_counter\(0) & \V1|sin_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(0),
	datab => \V1|sin_counter\(1),
	datac => \V1|sin_counter\(5),
	datad => \V1|sin_counter\(2),
	combout => \V1|Mux15~2_combout\);

-- Location: LCCOMB_X10_Y64_N10
\V1|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux15~3_combout\ = (\V1|sin_counter\(3) & ((\V1|sin_counter\(4)) # ((!\V1|Mux15~1_combout\)))) # (!\V1|sin_counter\(3) & (!\V1|sin_counter\(4) & ((\V1|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(3),
	datab => \V1|sin_counter\(4),
	datac => \V1|Mux15~1_combout\,
	datad => \V1|Mux15~2_combout\,
	combout => \V1|Mux15~3_combout\);

-- Location: LCCOMB_X10_Y64_N18
\V1|Mux15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux15~5_combout\ = (\V1|sin_counter\(4) & ((\V1|Mux15~3_combout\ & (\V1|Mux15~4_combout\)) # (!\V1|Mux15~3_combout\ & ((!\V1|Mux15~0_combout\))))) # (!\V1|sin_counter\(4) & (((\V1|Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|Mux15~4_combout\,
	datab => \V1|sin_counter\(4),
	datac => \V1|Mux15~0_combout\,
	datad => \V1|Mux15~3_combout\,
	combout => \V1|Mux15~5_combout\);

-- Location: LCCOMB_X10_Y64_N14
\V1|shift_out~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~51_combout\ = (\V1|shift_out[14]~17_combout\ & (\V1|Equal0~2_combout\ & ((\V1|Mux15~5_combout\)))) # (!\V1|shift_out[14]~17_combout\ & ((\V1|shift_out\(0)) # ((\V1|Equal0~2_combout\ & \V1|Mux15~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|shift_out[14]~17_combout\,
	datab => \V1|Equal0~2_combout\,
	datac => \V1|shift_out\(0),
	datad => \V1|Mux15~5_combout\,
	combout => \V1|shift_out~51_combout\);

-- Location: FF_X10_Y64_N15
\V1|shift_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_clock[1]~clkctrl_outclk\,
	d => \V1|shift_out~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|shift_out\(0));

-- Location: LCCOMB_X7_Y64_N22
\V1|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux14~2_combout\ = (\V1|sin_counter\(2) & (((!\V1|sin_counter\(1))) # (!\V1|sin_counter\(0)))) # (!\V1|sin_counter\(2) & ((\V1|sin_counter\(3) & (\V1|sin_counter\(0))) # (!\V1|sin_counter\(3) & ((\V1|sin_counter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(2),
	datab => \V1|sin_counter\(0),
	datac => \V1|sin_counter\(1),
	datad => \V1|sin_counter\(3),
	combout => \V1|Mux14~2_combout\);

-- Location: LCCOMB_X7_Y64_N28
\V1|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux14~1_combout\ = (\V1|sin_counter\(1) & ((\V1|sin_counter\(0) & ((!\V1|sin_counter\(3)) # (!\V1|sin_counter\(2)))) # (!\V1|sin_counter\(0) & ((\V1|sin_counter\(3)))))) # (!\V1|sin_counter\(1) & (\V1|sin_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(2),
	datab => \V1|sin_counter\(0),
	datac => \V1|sin_counter\(1),
	datad => \V1|sin_counter\(3),
	combout => \V1|Mux14~1_combout\);

-- Location: LCCOMB_X7_Y64_N0
\V1|shift_out~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~49_combout\ = (!\V1|sin_counter\(4) & ((\V1|sin_counter\(5) & (!\V1|Mux14~2_combout\)) # (!\V1|sin_counter\(5) & ((\V1|Mux14~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(5),
	datab => \V1|sin_counter\(4),
	datac => \V1|Mux14~2_combout\,
	datad => \V1|Mux14~1_combout\,
	combout => \V1|shift_out~49_combout\);

-- Location: LCCOMB_X9_Y64_N18
\V1|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux14~0_combout\ = (\V1|sin_counter\(2) & ((\V1|sin_counter\(1) & (\V1|sin_counter\(3) & !\V1|sin_counter\(0))) # (!\V1|sin_counter\(1) & (!\V1|sin_counter\(3))))) # (!\V1|sin_counter\(2) & (\V1|sin_counter\(0) & ((!\V1|sin_counter\(3)) # 
-- (!\V1|sin_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(2),
	datab => \V1|sin_counter\(1),
	datac => \V1|sin_counter\(3),
	datad => \V1|sin_counter\(0),
	combout => \V1|Mux14~0_combout\);

-- Location: LCCOMB_X9_Y64_N16
\V1|shift_out~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~48_combout\ = (!\V1|sin_counter\(5) & (\V1|sin_counter\(4) & \V1|Mux14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V1|sin_counter\(5),
	datac => \V1|sin_counter\(4),
	datad => \V1|Mux14~0_combout\,
	combout => \V1|shift_out~48_combout\);

-- Location: LCCOMB_X10_Y65_N18
\V1|shift_out~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~50_combout\ = (\V1|Equal0~2_combout\ & (((\V1|shift_out~49_combout\) # (\V1|shift_out~48_combout\)))) # (!\V1|Equal0~2_combout\ & (\V1|shift_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|shift_out\(0),
	datab => \V1|Equal0~2_combout\,
	datac => \V1|shift_out~49_combout\,
	datad => \V1|shift_out~48_combout\,
	combout => \V1|shift_out~50_combout\);

-- Location: FF_X10_Y65_N19
\V1|shift_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_clock[1]~clkctrl_outclk\,
	d => \V1|shift_out~50_combout\,
	ena => \V1|shift_out[14]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|shift_out\(1));

-- Location: LCCOMB_X8_Y64_N22
\V1|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux13~4_combout\ = (!\V1|sin_counter\(5) & ((\V1|sin_counter\(1) & ((\V1|sin_counter\(2)) # (\V1|sin_counter\(0)))) # (!\V1|sin_counter\(1) & (\V1|sin_counter\(2) & \V1|sin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(1),
	datab => \V1|sin_counter\(5),
	datac => \V1|sin_counter\(2),
	datad => \V1|sin_counter\(0),
	combout => \V1|Mux13~4_combout\);

-- Location: LCCOMB_X9_Y64_N2
\V1|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux13~1_combout\ = (\V1|sin_counter\(2) & (!\V1|sin_counter\(1) & ((\V1|sin_counter\(0)) # (!\V1|sin_counter\(5))))) # (!\V1|sin_counter\(2) & ((\V1|sin_counter\(5)) # ((\V1|sin_counter\(1) & \V1|sin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(2),
	datab => \V1|sin_counter\(5),
	datac => \V1|sin_counter\(1),
	datad => \V1|sin_counter\(0),
	combout => \V1|Mux13~1_combout\);

-- Location: LCCOMB_X9_Y64_N20
\V1|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux13~2_combout\ = (\V1|sin_counter\(1) & (\V1|sin_counter\(5) & ((\V1|sin_counter\(2)) # (!\V1|sin_counter\(0))))) # (!\V1|sin_counter\(1) & (\V1|sin_counter\(2) $ (((\V1|sin_counter\(5)) # (\V1|sin_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(2),
	datab => \V1|sin_counter\(5),
	datac => \V1|sin_counter\(1),
	datad => \V1|sin_counter\(0),
	combout => \V1|Mux13~2_combout\);

-- Location: LCCOMB_X9_Y64_N30
\V1|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux13~3_combout\ = (\V1|sin_counter\(3) & ((\V1|Mux13~1_combout\) # ((\V1|sin_counter\(4))))) # (!\V1|sin_counter\(3) & (((!\V1|sin_counter\(4) & \V1|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(3),
	datab => \V1|Mux13~1_combout\,
	datac => \V1|sin_counter\(4),
	datad => \V1|Mux13~2_combout\,
	combout => \V1|Mux13~3_combout\);

-- Location: LCCOMB_X9_Y64_N24
\V1|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux13~0_combout\ = (\V1|sin_counter\(2) & (!\V1|sin_counter\(5) & (\V1|sin_counter\(1) $ (!\V1|sin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(2),
	datab => \V1|sin_counter\(1),
	datac => \V1|sin_counter\(5),
	datad => \V1|sin_counter\(0),
	combout => \V1|Mux13~0_combout\);

-- Location: LCCOMB_X9_Y64_N12
\V1|Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux13~5_combout\ = (\V1|sin_counter\(4) & ((\V1|Mux13~3_combout\ & (\V1|Mux13~4_combout\)) # (!\V1|Mux13~3_combout\ & ((\V1|Mux13~0_combout\))))) # (!\V1|sin_counter\(4) & (((\V1|Mux13~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(4),
	datab => \V1|Mux13~4_combout\,
	datac => \V1|Mux13~3_combout\,
	datad => \V1|Mux13~0_combout\,
	combout => \V1|Mux13~5_combout\);

-- Location: LCCOMB_X10_Y65_N20
\V1|shift_out~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~59_combout\ = (\V1|Equal0~1_combout\ & ((\V1|Equal0~0_combout\ & ((\V1|Mux13~5_combout\))) # (!\V1|Equal0~0_combout\ & (\V1|shift_out\(1))))) # (!\V1|Equal0~1_combout\ & (\V1|shift_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|Equal0~1_combout\,
	datab => \V1|shift_out\(1),
	datac => \V1|Equal0~0_combout\,
	datad => \V1|Mux13~5_combout\,
	combout => \V1|shift_out~59_combout\);

-- Location: FF_X10_Y65_N21
\V1|shift_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_clock[1]~clkctrl_outclk\,
	d => \V1|shift_out~59_combout\,
	ena => \V1|shift_out[14]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|shift_out\(2));

-- Location: LCCOMB_X8_Y64_N0
\V1|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux12~0_combout\ = (\V1|sin_counter\(5)) # ((\V1|sin_counter\(1) & ((\V1|sin_counter\(2)) # (!\V1|sin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(1),
	datab => \V1|sin_counter\(2),
	datac => \V1|sin_counter\(5),
	datad => \V1|sin_counter\(0),
	combout => \V1|Mux12~0_combout\);

-- Location: LCCOMB_X7_Y64_N18
\V1|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux12~4_combout\ = (!\V1|sin_counter\(5) & ((\V1|sin_counter\(1) & (!\V1|sin_counter\(0) & \V1|sin_counter\(2))) # (!\V1|sin_counter\(1) & (\V1|sin_counter\(0) & !\V1|sin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(5),
	datab => \V1|sin_counter\(1),
	datac => \V1|sin_counter\(0),
	datad => \V1|sin_counter\(2),
	combout => \V1|Mux12~4_combout\);

-- Location: LCCOMB_X8_Y65_N26
\V1|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux12~2_combout\ = (\V1|sin_counter\(1) & ((\V1|sin_counter\(5)) # ((\V1|sin_counter\(0))))) # (!\V1|sin_counter\(1) & ((\V1|sin_counter\(5) & (\V1|sin_counter\(0))) # (!\V1|sin_counter\(5) & ((\V1|sin_counter\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(1),
	datab => \V1|sin_counter\(5),
	datac => \V1|sin_counter\(0),
	datad => \V1|sin_counter\(2),
	combout => \V1|Mux12~2_combout\);

-- Location: LCCOMB_X8_Y65_N28
\V1|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux12~1_combout\ = (\V1|sin_counter\(1) & ((\V1|sin_counter\(0) $ (\V1|sin_counter\(2))) # (!\V1|sin_counter\(5)))) # (!\V1|sin_counter\(1) & ((\V1|sin_counter\(5)) # ((\V1|sin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(1),
	datab => \V1|sin_counter\(5),
	datac => \V1|sin_counter\(0),
	datad => \V1|sin_counter\(2),
	combout => \V1|Mux12~1_combout\);

-- Location: LCCOMB_X8_Y65_N20
\V1|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux12~3_combout\ = (\V1|sin_counter\(4) & (\V1|sin_counter\(3))) # (!\V1|sin_counter\(4) & ((\V1|sin_counter\(3) & ((!\V1|Mux12~1_combout\))) # (!\V1|sin_counter\(3) & (\V1|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(4),
	datab => \V1|sin_counter\(3),
	datac => \V1|Mux12~2_combout\,
	datad => \V1|Mux12~1_combout\,
	combout => \V1|Mux12~3_combout\);

-- Location: LCCOMB_X8_Y65_N2
\V1|Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux12~5_combout\ = (\V1|sin_counter\(4) & ((\V1|Mux12~3_combout\ & ((\V1|Mux12~4_combout\))) # (!\V1|Mux12~3_combout\ & (!\V1|Mux12~0_combout\)))) # (!\V1|sin_counter\(4) & (((\V1|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(4),
	datab => \V1|Mux12~0_combout\,
	datac => \V1|Mux12~4_combout\,
	datad => \V1|Mux12~3_combout\,
	combout => \V1|Mux12~5_combout\);

-- Location: LCCOMB_X8_Y65_N14
\V1|shift_out~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~58_combout\ = (\V1|Equal0~1_combout\ & ((\V1|Equal0~0_combout\ & ((\V1|Mux12~5_combout\))) # (!\V1|Equal0~0_combout\ & (\V1|shift_out\(2))))) # (!\V1|Equal0~1_combout\ & (((\V1|shift_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|Equal0~1_combout\,
	datab => \V1|Equal0~0_combout\,
	datac => \V1|shift_out\(2),
	datad => \V1|Mux12~5_combout\,
	combout => \V1|shift_out~58_combout\);

-- Location: FF_X8_Y65_N15
\V1|shift_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_clock[1]~clkctrl_outclk\,
	d => \V1|shift_out~58_combout\,
	ena => \V1|shift_out[14]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|shift_out\(3));

-- Location: LCCOMB_X9_Y64_N14
\V1|shift_out~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~57_combout\ = (\V1|Equal0~1_combout\ & ((\V1|Equal0~0_combout\ & (\V1|sin_counter\(2))) # (!\V1|Equal0~0_combout\ & ((\V1|shift_out\(3)))))) # (!\V1|Equal0~1_combout\ & (((\V1|shift_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(2),
	datab => \V1|shift_out\(3),
	datac => \V1|Equal0~1_combout\,
	datad => \V1|Equal0~0_combout\,
	combout => \V1|shift_out~57_combout\);

-- Location: LCCOMB_X10_Y64_N6
\V1|shift_out~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~45_combout\ = (\V1|sin_counter\(4) & (!\V1|sin_counter\(3) & (!\V1|shift_out~43_combout\ & !\V1|shift_out~44_combout\))) # (!\V1|sin_counter\(4) & (\V1|shift_out~43_combout\ $ (((\V1|sin_counter\(3) & !\V1|shift_out~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(3),
	datab => \V1|sin_counter\(4),
	datac => \V1|shift_out~43_combout\,
	datad => \V1|shift_out~44_combout\,
	combout => \V1|shift_out~45_combout\);

-- Location: LCCOMB_X9_Y64_N26
\V1|shift_out~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~47_combout\ = (\V1|Equal0~2_combout\ & ((\V1|shift_out~57_combout\ & (!\V1|shift_out~46_combout\)) # (!\V1|shift_out~57_combout\ & ((\V1|shift_out~45_combout\))))) # (!\V1|Equal0~2_combout\ & (((\V1|shift_out~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|Equal0~2_combout\,
	datab => \V1|shift_out~46_combout\,
	datac => \V1|shift_out~57_combout\,
	datad => \V1|shift_out~45_combout\,
	combout => \V1|shift_out~47_combout\);

-- Location: FF_X9_Y64_N27
\V1|shift_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_clock[1]~clkctrl_outclk\,
	d => \V1|shift_out~47_combout\,
	ena => \V1|shift_out[14]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|shift_out\(4));

-- Location: LCCOMB_X8_Y65_N8
\V1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux10~0_combout\ = (\V1|sin_counter\(1) & ((\V1|sin_counter\(2)) # (\V1|sin_counter\(3) $ (\V1|sin_counter\(0))))) # (!\V1|sin_counter\(1) & (!\V1|sin_counter\(3) & ((\V1|sin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(1),
	datab => \V1|sin_counter\(3),
	datac => \V1|sin_counter\(0),
	datad => \V1|sin_counter\(2),
	combout => \V1|Mux10~0_combout\);

-- Location: LCCOMB_X9_Y65_N0
\V1|shift_out~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~40_combout\ = (!\V1|sin_counter\(5) & (\V1|sin_counter\(4) & \V1|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(5),
	datac => \V1|sin_counter\(4),
	datad => \V1|Mux10~0_combout\,
	combout => \V1|shift_out~40_combout\);

-- Location: LCCOMB_X9_Y65_N4
\V1|shift_out~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~42_combout\ = (\V1|Equal0~2_combout\ & ((\V1|shift_out~41_combout\) # ((\V1|shift_out~40_combout\)))) # (!\V1|Equal0~2_combout\ & (((\V1|shift_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|shift_out~41_combout\,
	datab => \V1|shift_out\(4),
	datac => \V1|Equal0~2_combout\,
	datad => \V1|shift_out~40_combout\,
	combout => \V1|shift_out~42_combout\);

-- Location: FF_X9_Y65_N5
\V1|shift_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_clock[1]~clkctrl_outclk\,
	d => \V1|shift_out~42_combout\,
	ena => \V1|shift_out[14]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|shift_out\(5));

-- Location: LCCOMB_X8_Y65_N0
\V1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux9~0_combout\ = \V1|sin_counter\(1) $ (\V1|sin_counter\(3) $ (((\V1|sin_counter\(0) & !\V1|sin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(1),
	datab => \V1|sin_counter\(3),
	datac => \V1|sin_counter\(0),
	datad => \V1|sin_counter\(2),
	combout => \V1|Mux9~0_combout\);

-- Location: LCCOMB_X8_Y65_N18
\V1|shift_out~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~37_combout\ = (!\V1|sin_counter\(5) & (\V1|sin_counter\(4) & !\V1|Mux9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V1|sin_counter\(5),
	datac => \V1|sin_counter\(4),
	datad => \V1|Mux9~0_combout\,
	combout => \V1|shift_out~37_combout\);

-- Location: LCCOMB_X9_Y65_N30
\V1|shift_out~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~39_combout\ = (\V1|Equal0~2_combout\ & ((\V1|shift_out~38_combout\) # ((\V1|shift_out~37_combout\)))) # (!\V1|Equal0~2_combout\ & (((\V1|shift_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|shift_out~38_combout\,
	datab => \V1|shift_out\(5),
	datac => \V1|Equal0~2_combout\,
	datad => \V1|shift_out~37_combout\,
	combout => \V1|shift_out~39_combout\);

-- Location: FF_X9_Y65_N31
\V1|shift_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_clock[1]~clkctrl_outclk\,
	d => \V1|shift_out~39_combout\,
	ena => \V1|shift_out[14]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|shift_out\(6));

-- Location: LCCOMB_X8_Y64_N28
\V1|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux8~1_combout\ = (\V1|sin_counter\(1) & (\V1|sin_counter\(2) & (\V1|sin_counter\(3) $ (\V1|sin_counter\(0))))) # (!\V1|sin_counter\(1) & (!\V1|sin_counter\(3) & (!\V1|sin_counter\(2) & \V1|sin_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(1),
	datab => \V1|sin_counter\(3),
	datac => \V1|sin_counter\(2),
	datad => \V1|sin_counter\(0),
	combout => \V1|Mux8~1_combout\);

-- Location: LCCOMB_X7_Y64_N24
\V1|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux8~2_combout\ = (\V1|sin_counter\(0) & ((\V1|sin_counter\(1) $ (\V1|sin_counter\(2))) # (!\V1|sin_counter\(3)))) # (!\V1|sin_counter\(0) & (((\V1|sin_counter\(2)) # (\V1|sin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(1),
	datab => \V1|sin_counter\(2),
	datac => \V1|sin_counter\(0),
	datad => \V1|sin_counter\(3),
	combout => \V1|Mux8~2_combout\);

-- Location: LCCOMB_X8_Y64_N6
\V1|shift_out~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~35_combout\ = (!\V1|sin_counter\(4) & ((\V1|sin_counter\(5) & (\V1|Mux8~1_combout\)) # (!\V1|sin_counter\(5) & ((\V1|Mux8~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(4),
	datab => \V1|Mux8~1_combout\,
	datac => \V1|sin_counter\(5),
	datad => \V1|Mux8~2_combout\,
	combout => \V1|shift_out~35_combout\);

-- Location: LCCOMB_X8_Y65_N12
\V1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux8~0_combout\ = (\V1|sin_counter\(1) & ((\V1|sin_counter\(0) & (\V1|sin_counter\(3))) # (!\V1|sin_counter\(0) & ((\V1|sin_counter\(2)))))) # (!\V1|sin_counter\(1) & (\V1|sin_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(1),
	datab => \V1|sin_counter\(3),
	datac => \V1|sin_counter\(0),
	datad => \V1|sin_counter\(2),
	combout => \V1|Mux8~0_combout\);

-- Location: LCCOMB_X8_Y65_N22
\V1|shift_out~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~34_combout\ = (!\V1|sin_counter\(5) & (\V1|sin_counter\(4) & !\V1|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V1|sin_counter\(5),
	datac => \V1|sin_counter\(4),
	datad => \V1|Mux8~0_combout\,
	combout => \V1|shift_out~34_combout\);

-- Location: LCCOMB_X9_Y65_N16
\V1|shift_out~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~36_combout\ = (\V1|Equal0~2_combout\ & (((\V1|shift_out~35_combout\) # (\V1|shift_out~34_combout\)))) # (!\V1|Equal0~2_combout\ & (\V1|shift_out\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|shift_out\(6),
	datab => \V1|Equal0~2_combout\,
	datac => \V1|shift_out~35_combout\,
	datad => \V1|shift_out~34_combout\,
	combout => \V1|shift_out~36_combout\);

-- Location: FF_X9_Y65_N17
\V1|shift_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_clock[1]~clkctrl_outclk\,
	d => \V1|shift_out~36_combout\,
	ena => \V1|shift_out[14]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|shift_out\(7));

-- Location: LCCOMB_X8_Y65_N16
\V1|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux7~2_combout\ = (\V1|sin_counter\(0) & (((!\V1|sin_counter\(2))))) # (!\V1|sin_counter\(0) & (\V1|sin_counter\(2) & ((\V1|sin_counter\(1)) # (!\V1|sin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(1),
	datab => \V1|sin_counter\(3),
	datac => \V1|sin_counter\(0),
	datad => \V1|sin_counter\(2),
	combout => \V1|Mux7~2_combout\);

-- Location: LCCOMB_X8_Y65_N30
\V1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux7~0_combout\ = (\V1|sin_counter\(1) & (\V1|sin_counter\(0) $ (((\V1|sin_counter\(3)) # (!\V1|sin_counter\(2)))))) # (!\V1|sin_counter\(1) & (\V1|sin_counter\(2) & ((!\V1|sin_counter\(0)) # (!\V1|sin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(1),
	datab => \V1|sin_counter\(3),
	datac => \V1|sin_counter\(0),
	datad => \V1|sin_counter\(2),
	combout => \V1|Mux7~0_combout\);

-- Location: LCCOMB_X8_Y65_N24
\V1|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux7~1_combout\ = (\V1|sin_counter\(3) & ((\V1|sin_counter\(0) $ (\V1|sin_counter\(2))))) # (!\V1|sin_counter\(3) & (!\V1|sin_counter\(0) & ((\V1|sin_counter\(1)) # (\V1|sin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(1),
	datab => \V1|sin_counter\(3),
	datac => \V1|sin_counter\(0),
	datad => \V1|sin_counter\(2),
	combout => \V1|Mux7~1_combout\);

-- Location: LCCOMB_X8_Y65_N6
\V1|shift_out~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~32_combout\ = (!\V1|sin_counter\(4) & ((\V1|sin_counter\(5) & ((!\V1|Mux7~1_combout\))) # (!\V1|sin_counter\(5) & (\V1|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(4),
	datab => \V1|sin_counter\(5),
	datac => \V1|Mux7~0_combout\,
	datad => \V1|Mux7~1_combout\,
	combout => \V1|shift_out~32_combout\);

-- Location: LCCOMB_X8_Y65_N10
\V1|shift_out~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~33_combout\ = (\V1|shift_out~32_combout\) # ((\V1|sin_counter\(4) & (\V1|Mux7~2_combout\ & !\V1|sin_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(4),
	datab => \V1|Mux7~2_combout\,
	datac => \V1|sin_counter\(5),
	datad => \V1|shift_out~32_combout\,
	combout => \V1|shift_out~33_combout\);

-- Location: LCCOMB_X8_Y65_N4
\V1|shift_out~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~56_combout\ = (\V1|Equal0~1_combout\ & ((\V1|Equal0~0_combout\ & ((\V1|shift_out~33_combout\))) # (!\V1|Equal0~0_combout\ & (\V1|shift_out\(7))))) # (!\V1|Equal0~1_combout\ & (\V1|shift_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|Equal0~1_combout\,
	datab => \V1|shift_out\(7),
	datac => \V1|Equal0~0_combout\,
	datad => \V1|shift_out~33_combout\,
	combout => \V1|shift_out~56_combout\);

-- Location: FF_X8_Y65_N5
\V1|shift_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_clock[1]~clkctrl_outclk\,
	d => \V1|shift_out~56_combout\,
	ena => \V1|shift_out[14]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|shift_out\(8));

-- Location: LCCOMB_X9_Y65_N8
\V1|shift_out~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~60_combout\ = (\V1|sin_counter\(4) & ((\V1|sin_counter\(1) & ((!\V1|sin_counter\(2)))) # (!\V1|sin_counter\(1) & (!\V1|sin_counter\(3))))) # (!\V1|sin_counter\(4) & ((\V1|sin_counter\(3)) # ((\V1|sin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(4),
	datab => \V1|sin_counter\(3),
	datac => \V1|sin_counter\(2),
	datad => \V1|sin_counter\(1),
	combout => \V1|shift_out~60_combout\);

-- Location: LCCOMB_X9_Y65_N26
\V1|shift_out~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~61_combout\ = (!\V1|sin_counter\(5) & ((\V1|sin_counter\(0) & ((\V1|sin_counter\(3)))) # (!\V1|sin_counter\(0) & (\V1|shift_out~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(0),
	datab => \V1|shift_out~60_combout\,
	datac => \V1|sin_counter\(5),
	datad => \V1|sin_counter\(3),
	combout => \V1|shift_out~61_combout\);

-- Location: LCCOMB_X8_Y64_N30
\V1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux6~0_combout\ = (!\V1|sin_counter\(4) & ((\V1|sin_counter\(0)) # ((\V1|sin_counter\(1) & \V1|sin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(1),
	datab => \V1|sin_counter\(2),
	datac => \V1|sin_counter\(4),
	datad => \V1|sin_counter\(0),
	combout => \V1|Mux6~0_combout\);

-- Location: LCCOMB_X9_Y64_N0
\V1|shift_out~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~30_combout\ = (\V1|sin_counter\(3) & (\V1|sin_counter\(5) & \V1|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(3),
	datac => \V1|sin_counter\(5),
	datad => \V1|Mux6~0_combout\,
	combout => \V1|shift_out~30_combout\);

-- Location: LCCOMB_X10_Y65_N26
\V1|shift_out~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~31_combout\ = (\V1|Equal0~2_combout\ & (((\V1|shift_out~61_combout\) # (\V1|shift_out~30_combout\)))) # (!\V1|Equal0~2_combout\ & (\V1|shift_out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|shift_out\(8),
	datab => \V1|Equal0~2_combout\,
	datac => \V1|shift_out~61_combout\,
	datad => \V1|shift_out~30_combout\,
	combout => \V1|shift_out~31_combout\);

-- Location: FF_X10_Y65_N27
\V1|shift_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_clock[1]~clkctrl_outclk\,
	d => \V1|shift_out~31_combout\,
	ena => \V1|shift_out[14]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|shift_out\(9));

-- Location: LCCOMB_X9_Y64_N28
\V1|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux5~2_combout\ = (\V1|sin_counter\(0) & (\V1|sin_counter\(2))) # (!\V1|sin_counter\(0) & ((\V1|sin_counter\(1) $ (\V1|sin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(2),
	datab => \V1|sin_counter\(1),
	datac => \V1|sin_counter\(3),
	datad => \V1|sin_counter\(0),
	combout => \V1|Mux5~2_combout\);

-- Location: LCCOMB_X9_Y64_N8
\V1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux5~1_combout\ = (\V1|sin_counter\(2) & (((\V1|sin_counter\(0))) # (!\V1|sin_counter\(1)))) # (!\V1|sin_counter\(2) & (\V1|sin_counter\(3) & ((\V1|sin_counter\(0)) # (!\V1|sin_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(2),
	datab => \V1|sin_counter\(1),
	datac => \V1|sin_counter\(3),
	datad => \V1|sin_counter\(0),
	combout => \V1|Mux5~1_combout\);

-- Location: LCCOMB_X8_Y64_N8
\V1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux5~0_combout\ = (\V1|sin_counter\(0) & (((\V1|sin_counter\(3) & \V1|sin_counter\(2))))) # (!\V1|sin_counter\(0) & (\V1|sin_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(1),
	datab => \V1|sin_counter\(3),
	datac => \V1|sin_counter\(2),
	datad => \V1|sin_counter\(0),
	combout => \V1|Mux5~0_combout\);

-- Location: LCCOMB_X9_Y64_N10
\V1|shift_out~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~28_combout\ = (!\V1|sin_counter\(4) & ((\V1|sin_counter\(5) & ((\V1|Mux5~0_combout\))) # (!\V1|sin_counter\(5) & (\V1|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(4),
	datab => \V1|sin_counter\(5),
	datac => \V1|Mux5~1_combout\,
	datad => \V1|Mux5~0_combout\,
	combout => \V1|shift_out~28_combout\);

-- Location: LCCOMB_X9_Y64_N22
\V1|shift_out~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~29_combout\ = (\V1|shift_out~28_combout\) # ((\V1|sin_counter\(4) & (!\V1|Mux5~2_combout\ & !\V1|sin_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(4),
	datab => \V1|Mux5~2_combout\,
	datac => \V1|sin_counter\(5),
	datad => \V1|shift_out~28_combout\,
	combout => \V1|shift_out~29_combout\);

-- Location: LCCOMB_X10_Y65_N12
\V1|shift_out~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~55_combout\ = (\V1|Equal0~1_combout\ & ((\V1|Equal0~0_combout\ & ((\V1|shift_out~29_combout\))) # (!\V1|Equal0~0_combout\ & (\V1|shift_out\(9))))) # (!\V1|Equal0~1_combout\ & (((\V1|shift_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|Equal0~1_combout\,
	datab => \V1|Equal0~0_combout\,
	datac => \V1|shift_out\(9),
	datad => \V1|shift_out~29_combout\,
	combout => \V1|shift_out~55_combout\);

-- Location: FF_X10_Y65_N13
\V1|shift_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_clock[1]~clkctrl_outclk\,
	d => \V1|shift_out~55_combout\,
	ena => \V1|shift_out[14]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|shift_out\(10));

-- Location: LCCOMB_X7_Y65_N14
\V1|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux4~2_combout\ = (\V1|sin_counter\(2) & (((!\V1|sin_counter\(0)) # (!\V1|sin_counter\(1))))) # (!\V1|sin_counter\(2) & (\V1|sin_counter\(3) & ((\V1|sin_counter\(1)) # (!\V1|sin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(2),
	datab => \V1|sin_counter\(3),
	datac => \V1|sin_counter\(1),
	datad => \V1|sin_counter\(0),
	combout => \V1|Mux4~2_combout\);

-- Location: LCCOMB_X7_Y65_N28
\V1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux4~1_combout\ = (\V1|sin_counter\(3) & ((\V1|sin_counter\(1) & (\V1|sin_counter\(2))) # (!\V1|sin_counter\(1) & ((\V1|sin_counter\(0)))))) # (!\V1|sin_counter\(3) & (\V1|sin_counter\(0) & (\V1|sin_counter\(2) $ (!\V1|sin_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(2),
	datab => \V1|sin_counter\(3),
	datac => \V1|sin_counter\(1),
	datad => \V1|sin_counter\(0),
	combout => \V1|Mux4~1_combout\);

-- Location: LCCOMB_X7_Y65_N24
\V1|shift_out~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~26_combout\ = (!\V1|sin_counter\(4) & ((\V1|sin_counter\(5) & ((\V1|Mux4~1_combout\))) # (!\V1|sin_counter\(5) & (\V1|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(5),
	datab => \V1|sin_counter\(4),
	datac => \V1|Mux4~2_combout\,
	datad => \V1|Mux4~1_combout\,
	combout => \V1|shift_out~26_combout\);

-- Location: LCCOMB_X9_Y65_N12
\V1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux4~0_combout\ = (\V1|sin_counter\(1) & (\V1|sin_counter\(2) & ((!\V1|sin_counter\(3)) # (!\V1|sin_counter\(0))))) # (!\V1|sin_counter\(1) & ((\V1|sin_counter\(0) & ((\V1|sin_counter\(2)) # (!\V1|sin_counter\(3)))) # (!\V1|sin_counter\(0) & 
-- (\V1|sin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(0),
	datab => \V1|sin_counter\(3),
	datac => \V1|sin_counter\(2),
	datad => \V1|sin_counter\(1),
	combout => \V1|Mux4~0_combout\);

-- Location: LCCOMB_X9_Y65_N14
\V1|shift_out~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~25_combout\ = (!\V1|sin_counter\(5) & (\V1|sin_counter\(4) & !\V1|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(5),
	datac => \V1|sin_counter\(4),
	datad => \V1|Mux4~0_combout\,
	combout => \V1|shift_out~25_combout\);

-- Location: LCCOMB_X10_Y65_N6
\V1|shift_out~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~27_combout\ = (\V1|Equal0~2_combout\ & (((\V1|shift_out~26_combout\) # (\V1|shift_out~25_combout\)))) # (!\V1|Equal0~2_combout\ & (\V1|shift_out\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|shift_out\(10),
	datab => \V1|Equal0~2_combout\,
	datac => \V1|shift_out~26_combout\,
	datad => \V1|shift_out~25_combout\,
	combout => \V1|shift_out~27_combout\);

-- Location: FF_X10_Y65_N7
\V1|shift_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_clock[1]~clkctrl_outclk\,
	d => \V1|shift_out~27_combout\,
	ena => \V1|shift_out[14]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|shift_out\(11));

-- Location: LCCOMB_X10_Y64_N22
\V1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux3~2_combout\ = (\V1|sin_counter\(0) & (((\V1|sin_counter\(2))))) # (!\V1|sin_counter\(0) & ((\V1|sin_counter\(1) & ((!\V1|sin_counter\(2)))) # (!\V1|sin_counter\(1) & (!\V1|sin_counter\(3) & \V1|sin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(3),
	datab => \V1|sin_counter\(0),
	datac => \V1|sin_counter\(1),
	datad => \V1|sin_counter\(2),
	combout => \V1|Mux3~2_combout\);

-- Location: LCCOMB_X9_Y64_N6
\V1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux3~1_combout\ = (\V1|sin_counter\(2) & (((\V1|sin_counter\(0)) # (!\V1|sin_counter\(3))) # (!\V1|sin_counter\(1)))) # (!\V1|sin_counter\(2) & ((\V1|sin_counter\(0) & ((!\V1|sin_counter\(3)))) # (!\V1|sin_counter\(0) & (\V1|sin_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(2),
	datab => \V1|sin_counter\(1),
	datac => \V1|sin_counter\(3),
	datad => \V1|sin_counter\(0),
	combout => \V1|Mux3~1_combout\);

-- Location: LCCOMB_X10_Y64_N2
\V1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux3~0_combout\ = (\V1|sin_counter\(0) & (((\V1|sin_counter\(3)) # (!\V1|sin_counter\(2))))) # (!\V1|sin_counter\(0) & ((\V1|sin_counter\(2)) # ((\V1|sin_counter\(1) & \V1|sin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(0),
	datab => \V1|sin_counter\(1),
	datac => \V1|sin_counter\(3),
	datad => \V1|sin_counter\(2),
	combout => \V1|Mux3~0_combout\);

-- Location: LCCOMB_X10_Y64_N28
\V1|shift_out~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~23_combout\ = (!\V1|sin_counter\(4) & ((\V1|sin_counter\(5) & (!\V1|Mux3~1_combout\)) # (!\V1|sin_counter\(5) & ((\V1|Mux3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(4),
	datab => \V1|sin_counter\(5),
	datac => \V1|Mux3~1_combout\,
	datad => \V1|Mux3~0_combout\,
	combout => \V1|shift_out~23_combout\);

-- Location: LCCOMB_X10_Y64_N20
\V1|shift_out~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~24_combout\ = (\V1|shift_out~23_combout\) # ((\V1|Mux3~2_combout\ & (\V1|sin_counter\(4) & !\V1|sin_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|Mux3~2_combout\,
	datab => \V1|sin_counter\(4),
	datac => \V1|sin_counter\(5),
	datad => \V1|shift_out~23_combout\,
	combout => \V1|shift_out~24_combout\);

-- Location: LCCOMB_X10_Y64_N0
\V1|shift_out~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~54_combout\ = (\V1|Equal0~1_combout\ & ((\V1|Equal0~0_combout\ & ((\V1|shift_out~24_combout\))) # (!\V1|Equal0~0_combout\ & (\V1|shift_out\(11))))) # (!\V1|Equal0~1_combout\ & (\V1|shift_out\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|shift_out\(11),
	datab => \V1|Equal0~1_combout\,
	datac => \V1|Equal0~0_combout\,
	datad => \V1|shift_out~24_combout\,
	combout => \V1|shift_out~54_combout\);

-- Location: FF_X10_Y64_N1
\V1|shift_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_clock[1]~clkctrl_outclk\,
	d => \V1|shift_out~54_combout\,
	ena => \V1|shift_out[14]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|shift_out\(12));

-- Location: LCCOMB_X7_Y64_N4
\V1|shift_out~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~21_combout\ = (\V1|sin_counter\(0) & (((\V1|sin_counter\(3))))) # (!\V1|sin_counter\(0) & ((\V1|sin_counter\(1) & ((\V1|sin_counter\(3)))) # (!\V1|sin_counter\(1) & (\V1|sin_counter\(2) & !\V1|sin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(0),
	datab => \V1|sin_counter\(1),
	datac => \V1|sin_counter\(2),
	datad => \V1|sin_counter\(3),
	combout => \V1|shift_out~21_combout\);

-- Location: LCCOMB_X7_Y64_N6
\V1|shift_out~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~20_combout\ = (\V1|sin_counter\(0) & (\V1|sin_counter\(1))) # (!\V1|sin_counter\(0) & ((\V1|sin_counter\(1) & (!\V1|sin_counter\(2))) # (!\V1|sin_counter\(1) & ((\V1|sin_counter\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(0),
	datab => \V1|sin_counter\(1),
	datac => \V1|sin_counter\(2),
	datad => \V1|sin_counter\(3),
	combout => \V1|shift_out~20_combout\);

-- Location: LCCOMB_X7_Y64_N26
\V1|shift_out~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~22_combout\ = (\V1|shift_out~21_combout\ & ((\V1|shift_out~20_combout\ & ((!\V1|sin_counter\(4)))) # (!\V1|shift_out~20_combout\ & (!\V1|sin_counter\(5))))) # (!\V1|shift_out~21_combout\ & (!\V1|sin_counter\(5) & (\V1|sin_counter\(4) $ 
-- (\V1|shift_out~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(5),
	datab => \V1|sin_counter\(4),
	datac => \V1|shift_out~21_combout\,
	datad => \V1|shift_out~20_combout\,
	combout => \V1|shift_out~22_combout\);

-- Location: LCCOMB_X10_Y65_N16
\V1|shift_out~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~53_combout\ = (\V1|Equal0~1_combout\ & ((\V1|Equal0~0_combout\ & ((\V1|shift_out~22_combout\))) # (!\V1|Equal0~0_combout\ & (\V1|shift_out\(12))))) # (!\V1|Equal0~1_combout\ & (\V1|shift_out\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|Equal0~1_combout\,
	datab => \V1|shift_out\(12),
	datac => \V1|Equal0~0_combout\,
	datad => \V1|shift_out~22_combout\,
	combout => \V1|shift_out~53_combout\);

-- Location: FF_X10_Y65_N17
\V1|shift_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_clock[1]~clkctrl_outclk\,
	d => \V1|shift_out~53_combout\,
	ena => \V1|shift_out[14]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|shift_out\(13));

-- Location: LCCOMB_X8_Y64_N24
\V1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux1~0_combout\ = (\V1|sin_counter\(2) & (!\V1|sin_counter\(4) & ((\V1|sin_counter\(1)) # (\V1|sin_counter\(0))))) # (!\V1|sin_counter\(2) & (((\V1|sin_counter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(1),
	datab => \V1|sin_counter\(2),
	datac => \V1|sin_counter\(4),
	datad => \V1|sin_counter\(0),
	combout => \V1|Mux1~0_combout\);

-- Location: LCCOMB_X8_Y64_N2
\V1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux1~1_combout\ = (\V1|sin_counter\(4) & (\V1|sin_counter\(2) $ (((!\V1|sin_counter\(1) & !\V1|sin_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(1),
	datab => \V1|sin_counter\(2),
	datac => \V1|sin_counter\(4),
	datad => \V1|sin_counter\(0),
	combout => \V1|Mux1~1_combout\);

-- Location: LCCOMB_X9_Y64_N4
\V1|shift_out~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~18_combout\ = (!\V1|sin_counter\(5) & ((\V1|sin_counter\(3) & ((!\V1|Mux1~1_combout\))) # (!\V1|sin_counter\(3) & (\V1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(3),
	datab => \V1|Mux1~0_combout\,
	datac => \V1|sin_counter\(5),
	datad => \V1|Mux1~1_combout\,
	combout => \V1|shift_out~18_combout\);

-- Location: LCCOMB_X10_Y65_N2
\V1|shift_out~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~19_combout\ = (\V1|Equal0~2_combout\ & ((\V1|Equal3~0_combout\) # ((\V1|shift_out~18_combout\)))) # (!\V1|Equal0~2_combout\ & (((\V1|shift_out\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|Equal3~0_combout\,
	datab => \V1|shift_out\(13),
	datac => \V1|shift_out~18_combout\,
	datad => \V1|Equal0~2_combout\,
	combout => \V1|shift_out~19_combout\);

-- Location: FF_X10_Y65_N3
\V1|shift_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_clock[1]~clkctrl_outclk\,
	d => \V1|shift_out~19_combout\,
	ena => \V1|shift_out[14]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|shift_out\(14));

-- Location: LCCOMB_X9_Y65_N28
\V1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|Mux0~0_combout\ = (\V1|sin_counter\(3) & ((\V1|sin_counter\(1)) # ((\V1|sin_counter\(2)) # (\V1|sin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(1),
	datab => \V1|sin_counter\(3),
	datac => \V1|sin_counter\(2),
	datad => \V1|sin_counter\(0),
	combout => \V1|Mux0~0_combout\);

-- Location: LCCOMB_X9_Y65_N22
\V1|shift_out~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~16_combout\ = (\V1|sin_counter\(5) & (!\V1|sin_counter\(4))) # (!\V1|sin_counter\(5) & (\V1|sin_counter\(4) & \V1|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sin_counter\(5),
	datac => \V1|sin_counter\(4),
	datad => \V1|Mux0~0_combout\,
	combout => \V1|shift_out~16_combout\);

-- Location: LCCOMB_X10_Y65_N24
\V1|shift_out~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \V1|shift_out~52_combout\ = (\V1|Equal0~1_combout\ & ((\V1|Equal0~0_combout\ & ((\V1|shift_out~16_combout\))) # (!\V1|Equal0~0_combout\ & (\V1|shift_out\(14))))) # (!\V1|Equal0~1_combout\ & (\V1|shift_out\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|Equal0~1_combout\,
	datab => \V1|shift_out\(14),
	datac => \V1|Equal0~0_combout\,
	datad => \V1|shift_out~16_combout\,
	combout => \V1|shift_out~52_combout\);

-- Location: FF_X10_Y65_N25
\V1|shift_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_clock[1]~clkctrl_outclk\,
	d => \V1|shift_out~52_combout\,
	ena => \V1|shift_out[14]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|shift_out\(15));

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

-- Location: IOIBUF_X0_Y68_N1
\AUD_ADCDAT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_ADCDAT,
	o => \AUD_ADCDAT~input_o\);

-- Location: IOIBUF_X0_Y69_N8
\AUD_ADCLRCK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_ADCLRCK,
	o => \AUD_ADCLRCK~input_o\);

-- Location: IOIBUF_X0_Y66_N15
\AUD_DACLRCK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_DACLRCK,
	o => \AUD_DACLRCK~input_o\);

-- Location: IOIBUF_X0_Y60_N15
\AUD_BCLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_BCLK,
	o => \AUD_BCLK~input_o\);

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

ww_I2C_SCLK <= \I2C_SCLK~output_o\;

ww_AUD_DACDAT <= \AUD_DACDAT~output_o\;

ww_AUD_XCK <= \AUD_XCK~output_o\;

ww_I2C_SDAT <= \I2C_SDAT~output_o\;

ww_AUD_ADCLRCK <= \AUD_ADCLRCK~output_o\;

ww_AUD_DACLRCK <= \AUD_DACLRCK~output_o\;

ww_AUD_BCLK <= \AUD_BCLK~output_o\;
END structure;


