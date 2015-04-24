LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_arith.ALL;

ENTITY AudioTest IS
PORT(
	clk: in std_logic;
	dbus: inout std_logic
);
END ENTITY AudioTest;

ARCHITECTURE main OF AudioTest IS

SIGNAL sclk: std_logic := '1';
SIGNAL data: std_logic;

--ROM
TYPE mem IS ARRAY ( 0 to 2**2 - 1) of std_logic_vector(7 downto 0);
  constant my_rom : mem := (
    0  => X"34",
    1  => X"0E",
    2  => X"0F",
    3  => X"00");

BEGIN

SCLK_PROC: PROCESS (clk) IS
VARIABLE count: natural := 0;
BEGIN
	IF rising_edge(clk) THEN
		IF sclk = '1' THEN
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
BEGIN
IF rising_edge(clk) THEN
	--initialize connection, send first bit of address
	IF init = '0' THEN
		IF count = 0 THEN
			dbus <= '1';
			count := count + 1;
		ELSIF count > 50 THEN
			dbus <= '0';
			init := '1';
			count := 0;
		ELSE
			count := count + 1;
		END IF;
	ELSIF sclk = '0' THEN
		IF count > 15 AND bit_w = '0' THEN
			dbus <= '0';
			bit_w := '1';
			count := 0;
		ELSIF bit_w = '0' THEN
			count := count + 1;
		ELSE
			count := 0;
		END IF;
	ELSIF sclk = '1' THEN
		bit_w := '0';
	END IF;
END IF;
END PROCESS SDIN_PROC;

END ARCHITECTURE main;