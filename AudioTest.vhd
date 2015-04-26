LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_arith.ALL;

ENTITY AudioTest IS
PORT(
	clk: in std_logic;
	sclk: inout std_logic;
	dbus: inout std_logic;
	gpio_sdat: out std_logic;
	gpio_sclk: out std_logic
);
END ENTITY AudioTest;

ARCHITECTURE main OF AudioTest IS

SIGNAL data: std_logic;
SIGNAL dbuffer: std_logic_vector(7 downto 0);
SIGNAL rom_index: natural;

--ROM
TYPE mem IS ARRAY ( 0 to 2**2 - 1) of std_logic_vector(7 downto 0);
  constant my_rom : mem := (
    0  => X"34",
    1  => X"12",
    2  => X"01",
    3  => X"00");

BEGIN

gpio_sclk <= sclk;
gpio_sdat <= dbus;

BUFFER_PROC: PROCESS (clk, rom_index) IS
BEGIN
dbuffer <= my_rom(rom_index);
END PROCESS BUFFER_PROC;

SCLK_PROC: PROCESS (clk) IS
VARIABLE count: natural := 0;
BEGIN
	IF rising_edge(clk) THEN
		IF sclk = 'U' THEN
			sclk <= '1';
		ELSIF sclk = '1' THEN
			IF count > 133 THEN
				sclk <= '0';
				count := 0;
			ELSE
				count := count + 1;
			END IF;
		ELSE
			IF count > 35 THEN
				sclk <= '1';
				count := 0;
			ELSE
				count := count + 1;
			END IF;
		END IF;
	END IF;
END PROCESS SCLK_PROC;

SDIN_PROC: PROCESS (clk, sclk) IS
VARIABLE init: std_logic := '0';
VARIABLE count: natural := 0;
VARIABLE bit_w: std_logic := '0';
VARIABLE index: integer := 7;
VARIABLE ack_wait: std_logic := '0';
BEGIN
IF rising_edge(clk) THEN
	--initialize connection, send first bit of address
	--rewrite for error handling
	IF init = '0' THEN
		IF count = 0 THEN
			dbus <= '1';
			count := count + 1;
		ELSIF count > 120 THEN
			dbus <= '0';
			init := '1';
			count := 0;
		ELSE
			count := count + 1;
		END IF;
	ELSIF sclk = '0' AND ack_wait = '0' THEN
		IF count > 2 AND bit_w = '0' THEN
			dbus <= dbuffer(index);
			bit_w := '1';
			count := 0;
			index := index - 1;
			IF index < 0 THEN
				index := 7;
				ack_wait := '1';
			END IF;
		ELSIF bit_w = '0' THEN
			count := count + 1;
		ELSE
			count := 0;
		END IF;
	ELSIF sclk = '1' THEN
		IF ack_wait = '0' THEN
			bit_w := '0';
		ELSIF ack_wait = '1' THEN
			IF count > 60 THEN
				IF dbus = '0' THEN
					ack_wait := '0';
					bit_w := '0';
					count := 0;
					rom_index <= rom_index + 1;
					IF rom_index = 4 THEN
						rom_index <= 0;
					END IF;
				ELSIF dbus = '1' THEN
					rom_index <= 1;
				END IF;
			ELSE
				count := count + 1;
			END IF;
		END IF;
	END IF;
END IF;
END PROCESS SDIN_PROC;

END ARCHITECTURE main;