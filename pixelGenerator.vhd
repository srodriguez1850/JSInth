library IEEE;

use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity pixelGenerator is
	port(
			clk, ROM_clk, rst_n, video_on, eof 				: in std_logic;
			pixel_row, pixel_column						    : in std_logic_vector(9 downto 0);
			red_out, green_out, blue_out					: out std_logic_vector(9 downto 0);
			--synth inputs
			keys_vga: in std_logic_vector(16 downto 0);
			vol_sel_vga: in std_logic;
			oct_sel_vga: in std_logic;
			synth_sel_vga: in std_logic
		);
end entity pixelGenerator;

architecture behavioral of pixelGenerator is

constant color_red 	 	 : std_logic_vector(2 downto 0) := "000";
constant color_green	 : std_logic_vector(2 downto 0) := "001";
constant color_blue 	 : std_logic_vector(2 downto 0) := "010";
constant color_yellow 	 : std_logic_vector(2 downto 0) := "011";
constant color_magenta 	 : std_logic_vector(2 downto 0) := "100";
constant color_cyan 	 : std_logic_vector(2 downto 0) := "101";
constant color_black 	 : std_logic_vector(2 downto 0) := "110";
constant color_white	 : std_logic_vector(2 downto 0) := "111";
	
component colorROM is
	port
	(
		address		: in std_logic_vector (2 downto 0);
		clock		: in std_logic  := '1';
		q			: out std_logic_vector (29 downto 0)
	);
end component colorROM;

signal colorAddress : std_logic_vector (2 downto 0);
signal color        : std_logic_vector (29 downto 0);

signal pixel_row_int, pixel_column_int : natural;

begin

--------------------------------------------------------------------------------------------
	
	red_out <= color(29 downto 20);
	green_out <= color(19 downto 10);
	blue_out <= color(9 downto 0);

	pixel_row_int <= to_integer(unsigned(pixel_row));
	pixel_column_int <= to_integer(unsigned(pixel_column));
	
--------------------------------------------------------------------------------------------	
	
	colors : colorROM
		port map(colorAddress, ROM_clk, color);

--------------------------------------------------------------------------------------------	

	pixelDraw : process(clk, rst_n) is
	
	begin
			
		if (rising_edge(clk)) then
			----draw keys
			--key 0
			if (31 < pixel_column_int AND pixel_column_int < 87 AND 20 < pixel_row_int AND pixel_row_int < 160) then
				colorAddress <= color_cyan;
			--key 1
			elsif (89 < pixel_column_int AND pixel_column_int < 145 AND 20 < pixel_row_int AND pixel_row_int < 160) then
				colorAddress <= color_cyan;
			--key 2
			elsif (147 < pixel_column_int AND pixel_column_int < 203 AND 20 < pixel_row_int AND pixel_row_int < 160) then
				colorAddress <= color_cyan;
			--key 3
			elsif (205 < pixel_column_int AND pixel_column_int < 261 AND 20 < pixel_row_int AND pixel_row_int < 160) then
				colorAddress <= color_cyan;
			--key 4
			elsif (263 < pixel_column_int AND pixel_column_int < 319 AND 20 < pixel_row_int AND pixel_row_int < 160) then
				colorAddress <= color_cyan;
			--key 5
			elsif (321 < pixel_column_int AND pixel_column_int < 377 AND 20 < pixel_row_int AND pixel_row_int < 160) then
				colorAddress <= color_cyan;
			--key 6
			elsif (379 < pixel_column_int AND pixel_column_int < 435 AND 20 < pixel_row_int AND pixel_row_int < 160) then
				colorAddress <= color_cyan;
			--key 7
			elsif (437 < pixel_column_int AND pixel_column_int < 493 AND 20 < pixel_row_int AND pixel_row_int < 160) then
				colorAddress <= color_cyan;
			--key 8
			elsif (495 < pixel_column_int AND pixel_column_int < 551 AND 20 < pixel_row_int AND pixel_row_int < 160) then
				colorAddress <= color_cyan;
			--key 9
			elsif (553 < pixel_column_int AND pixel_column_int < 609 AND 20 < pixel_row_int AND pixel_row_int < 160) then
				colorAddress <= color_cyan;
			else
				colorAddress <= color_black;
			end if;
			
			----draw sharp keys
			--key sharp 0
			if (65 < pixel_column_int AND pixel_column_int < 110 AND 20 < pixel_row_int AND pixel_row_int < 100) then
				colorAddress <= color_blue;
			--key sharp 1
			elsif (120 < pixel_column_int AND pixel_column_int < 169 AND 20 < pixel_row_int AND pixel_row_int < 100) then
				colorAddress <= color_blue;
			--key sharp 2
			elsif (239 < pixel_column_int AND pixel_column_int < 284 AND 20 < pixel_row_int AND pixel_row_int < 100) then
				colorAddress <= color_blue;
			--key sharp 3
			elsif (294 < pixel_column_int AND pixel_column_int < 339 AND 20 < pixel_row_int AND pixel_row_int < 100) then
				colorAddress <= color_blue;
			--key sharp 4
			elsif (349 < pixel_column_int AND pixel_column_int < 394 AND 20 < pixel_row_int AND pixel_row_int < 100) then
				colorAddress <= color_blue;
			--key sharp 5
			elsif (471 < pixel_column_int AND pixel_column_int < 516 AND 20 < pixel_row_int AND pixel_row_int < 100) then
				colorAddress <= color_blue;
			--key sharp 6
			elsif (526 < pixel_column_int AND pixel_column_int < 571 AND 20 < pixel_row_int AND pixel_row_int < 100) then
				colorAddress <= color_blue;
			end if;
			
			----draw octave blocks
			--high block
			if (31 < pixel_column_int AND pixel_column_int < 51 AND 300 < pixel_row_int AND pixel_row_int < 320) then
				colorAddress <= color_cyan;
			--mid block
			elsif (31 < pixel_column_int AND pixel_column_int < 51 AND 330 < pixel_row_int AND pixel_row_int < 350) then
				colorAddress <= color_cyan;
			--low block
			elsif (31 < pixel_column_int AND pixel_column_int < 51 AND 360 < pixel_row_int AND pixel_row_int < 380) then
				colorAddress <= color_cyan;
			end if;
			
			----draw mute block
			if ( 589 < pixel_column_int AND pixel_column_int < 609 AND 200 < pixel_row_int AND pixel_row_int < 220) then
				colorAddress <= color_red;
			end if;
			
		end if;
		
	end process pixelDraw;	

--------------------------------------------------------------------------------------------
	
end architecture behavioral;		