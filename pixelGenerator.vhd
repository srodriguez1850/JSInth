--
-- pixelGenerator.vhd
-- Usage: draws pixels on a VGA port scanlined
--

library IEEE;

use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity pixelGenerator is
	port(
			clk, ROM_clk, rst_n, video_on, eof 			: in std_logic;
			pixel_row, pixel_column						: in std_logic_vector(9 downto 0);
			red_out, green_out, blue_out				: out std_logic_vector(9 downto 0);
			--synth inputs
			keys_vga		: in std_logic_vector(15 downto 0);
			vol_vga			: in std_logic_vector(2 downto 0);
			oct_sel_vga		: in std_logic_vector(1 downto 0);
			synth_sel_vga	: in std_logic_vector(1 downto 0);
			mute_sel_vga	: in std_logic
		);
end entity pixelGenerator;

architecture behavioral of pixelGenerator is

constant color_red 	 : std_logic_vector(2 downto 0) := "000";
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
		q		: out std_logic_vector (29 downto 0)
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
			----draw outline
			if (6 < pixel_column_int AND pixel_column_int < 632 AND 15 < pixel_row_int AND pixel_row_int < 165) then
				colorAddress <= color_blue;
			else
				colorAddress <= color_black;
			end if;
			----draw keys
			--key 15
			if (11 < pixel_column_int AND pixel_column_int < 75 AND 20 < pixel_row_int AND pixel_row_int < 160) then
				if (keys_vga(15) = '1') then
					colorAddress <= color_magenta;
				else
					colorAddress <= color_white;
				end if;
			--key 13
			elsif (77 < pixel_column_int AND pixel_column_int < 141 AND 20 < pixel_row_int AND pixel_row_int < 160) then
				if (keys_vga(13) = '1') then
					colorAddress <= color_magenta;
				else
					colorAddress <= color_white;
				end if;
			--key 11
			elsif (143 < pixel_column_int AND pixel_column_int < 207 AND 20 < pixel_row_int AND pixel_row_int < 160) then
				if (keys_vga(11) = '1') then
					colorAddress <= color_magenta;
				else
					colorAddress <= color_white;
				end if;
			--key 10
			elsif (209 < pixel_column_int AND pixel_column_int < 273 AND 20 < pixel_row_int AND pixel_row_int < 160) then
				if (keys_vga(10) = '1') then
					colorAddress <= color_magenta;
				else
					colorAddress <= color_white;
				end if;
			--key 8
			elsif (275 < pixel_column_int AND pixel_column_int < 339 AND 20 < pixel_row_int AND pixel_row_int < 160) then
				if (keys_vga(8) = '1') then
					colorAddress <= color_magenta;
				else
					colorAddress <= color_white;
				end if;
			--key 6
			elsif (341 < pixel_column_int AND pixel_column_int < 405 AND 20 < pixel_row_int AND pixel_row_int < 160) then
				if (keys_vga(6) = '1') then
					colorAddress <= color_magenta;
				else
					colorAddress <= color_white;
				end if;
			--key 4
			elsif (407 < pixel_column_int AND pixel_column_int < 471 AND 20 < pixel_row_int AND pixel_row_int < 160) then
				if (keys_vga(4) = '1') then
					colorAddress <= color_magenta;
				else
					colorAddress <= color_white;
				end if;
			--key 3
			elsif (473 < pixel_column_int AND pixel_column_int < 537 AND 20 < pixel_row_int AND pixel_row_int < 160) then
				if (keys_vga(3) = '1') then
					colorAddress <= color_magenta;
				else
					colorAddress <= color_white;
				end if;
			--key 1
			elsif (539 < pixel_column_int AND pixel_column_int < 603 AND 20 < pixel_row_int AND pixel_row_int < 160) then
				if (keys_vga(1) = '1') then
					colorAddress <= color_magenta;
				else
					colorAddress <= color_white;
				end if;
			end if;
			
			----draw sharp keys
			--key 14
			if (51 < pixel_column_int AND pixel_column_int < 95 AND 20 < pixel_row_int AND pixel_row_int < 100) then
				if (keys_vga(14) = '1') then
					colorAddress <= color_red;
				else
					colorAddress <= color_black;
				end if;
			--key 12
			elsif (117 < pixel_column_int AND pixel_column_int < 161 AND 20 < pixel_row_int AND pixel_row_int < 100) then
				if (keys_vga(12) = '1') then
					colorAddress <= color_red;
				else
					colorAddress <= color_black;
				end if;
			--key 9
			elsif (249 < pixel_column_int AND pixel_column_int < 293 AND 20 < pixel_row_int AND pixel_row_int < 100) then
				if (keys_vga(9) = '1') then
					colorAddress <= color_red;
				else
					colorAddress <= color_black;
				end if;
			--key 7
			elsif (315 < pixel_column_int AND pixel_column_int < 359 AND 20 < pixel_row_int AND pixel_row_int < 100) then
				if (keys_vga(7) = '1') then
					colorAddress <= color_red;
				else
					colorAddress <= color_black;
				end if;
			--key 5
			elsif (381 < pixel_column_int AND pixel_column_int < 425 AND 20 < pixel_row_int AND pixel_row_int < 100) then
				if (keys_vga(5) = '1') then
					colorAddress <= color_red;
				else
					colorAddress <= color_black;
				end if;
			--key 2
			elsif (513 < pixel_column_int AND pixel_column_int < 557 AND 20 < pixel_row_int AND pixel_row_int < 100) then
				if (keys_vga(2) = '1') then
					colorAddress <= color_red;
				else
					colorAddress <= color_black;
				end if;
			--key 0
			elsif (583 < pixel_column_int AND pixel_column_int < 627 AND 20 < pixel_row_int AND pixel_row_int < 100) then
				if (keys_vga(0) = '1') then
					colorAddress <= color_red;
				else
					colorAddress <= color_black;
				end if;
			end if;
			
			----draw octave blocks
			--high block
			if (31 < pixel_column_int AND pixel_column_int < 51 AND 250 < pixel_row_int AND pixel_row_int < 270) then
				if (oct_sel_vga = "10") then
					colorAddress <= color_red;
				else
					colorAddress <= color_cyan;
				end if;
			--mid block
			elsif (31 < pixel_column_int AND pixel_column_int < 51 AND 280 < pixel_row_int AND pixel_row_int < 300) then
				if (oct_sel_vga = "01") then
					colorAddress <= color_red;
				else
					colorAddress <= color_cyan;
				end if;
			--low block
			elsif (31 < pixel_column_int AND pixel_column_int < 51 AND 310 < pixel_row_int AND pixel_row_int < 330) then
				if (oct_sel_vga = "00") then
					colorAddress <= color_red;
				else
					colorAddress <= color_cyan;
				end if;
			end if;
			
			----draw mute block
			if (589 < pixel_column_int AND pixel_column_int < 609 AND 200 < pixel_row_int AND pixel_row_int < 220) then
				if (mute_sel_vga = '1') then
					colorAddress <= color_red;
				else
					colorAddress <= color_black;
				end if;
			end if;
			
			----draw volume blocks
			if (31 < pixel_column_int AND pixel_column_int < 41 AND 420 < pixel_row_int AND pixel_row_int < 430) then
				if (vol_vga >= "000" ) then
					colorAddress <= color_white;
				else
					colorAddress <= color_black;
				end if;
			elsif (43 < pixel_column_int AND pixel_column_int < 53 AND 415 < pixel_row_int AND pixel_row_int < 430) then
				if (vol_vga >= "001" ) then
					colorAddress <= color_white;
				else
					colorAddress <= color_black;
				end if;
			elsif (55 < pixel_column_int AND pixel_column_int < 65 AND 410 < pixel_row_int AND pixel_row_int < 430) then
				if (vol_vga >= "010" ) then
					colorAddress <= color_white;
				else
					colorAddress <= color_black;
				end if;
			elsif (67 < pixel_column_int AND pixel_column_int < 77 AND 405 < pixel_row_int AND pixel_row_int < 430) then
				if (vol_vga >= "011" ) then
					colorAddress <= color_white;
				else
					colorAddress <= color_black;
				end if;
			elsif (79 < pixel_column_int AND pixel_column_int < 89 AND 400 < pixel_row_int AND pixel_row_int < 430) then
				if (vol_vga >= "100" ) then
					colorAddress <= color_white;
				else
					colorAddress <= color_black;
				end if;
			end if;
			
			----draw synth blocks
			if (589 < pixel_column_int AND pixel_column_int < 609 AND 410 < pixel_row_int AND pixel_row_int < 430) then
				if (synth_sel_vga = "10") then
					colorAddress <= color_red;
				else
					colorAddress <= color_cyan;
				end if;
			elsif (559 < pixel_column_int AND pixel_column_int < 579 AND 410 < pixel_row_int AND pixel_row_int < 430) then
				if (synth_sel_vga = "01") then
					colorAddress <= color_red;
				else
					colorAddress <= color_cyan;
				end if;
			elsif (529 < pixel_column_int AND pixel_column_int < 549 AND 410 < pixel_row_int AND pixel_row_int < 430) then
				if (synth_sel_vga = "00") then
					colorAddress <= color_red;
				else
					colorAddress <= color_cyan;
				end if;
			end if;
			
		end if;
		
	end process pixelDraw;	

--------------------------------------------------------------------------------------------
	
end architecture behavioral;		