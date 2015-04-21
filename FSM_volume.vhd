LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_arith.all;

ENTITY FSM_volume IS
	PORT(
		up, down: in std_logic;
		clk: in std_logic;
		z: out std_logic_vector(2 downto 0)
	);
END ENTITY FSM_volume;

ARCHITECTURE states OF FSM_volume IS

SIGNAL div_clk: std_logic := '0';
SIGNAL current: std_logic_vector(2 downto 0);

BEGIN

divide_clock: PROCESS (clk, div_clk) IS
VARIABLE count: integer := 0;
BEGIN
	IF (rising_edge(clk)) THEN
		IF (count > 4000000) THEN
			count := 0;
			div_clk <= NOT div_clk;
		ELSE
			count := count + 1;
		END IF;
	END IF;
END PROCESS divide_clock;

FSM_cycle: PROCESS (clk, div_clk, up, down) IS
VARIABLE init: std_logic := '0';
BEGIN
	IF (init = '0') THEN
		current <= "010";
		init := '1';
	ELSIF (rising_edge(div_clk)) THEN
		CASE current IS
			--volume 1
			WHEN "000" =>
				z <= "000";
				IF (up = '0' AND down /= '0') THEN
					current <= "001";
				ELSIF (up /= '0' AND down = '0') THEN
					current <= "000";
				END IF;
			--volume 2
			WHEN "001" =>
				z <= "001";
				IF (up = '0' AND down /= '0') THEN
					current <= "010";
				ELSIF (up /= '0' AND down = '0') THEN
					current <= "000";
				END IF;
			--volume 3
			WHEN "010" =>
				z <= "010";
				IF (up = '0' AND down /= '0') THEN
					current <= "011";
				ELSIF (up /= '0' AND down = '0') THEN
					current <= "001";
				END IF;
			--volume 4
			WHEN "011" =>
				z <= "011";
				IF (up = '0' AND down /= '0') THEN
					current <= "100";
				ELSIF (up /= '0' AND down = '0') THEN
					current <= "010";
				END IF;
			--volume 5
			WHEN "100" =>
				z <= "100";
				IF (up = '0' AND down /= '0') THEN
					current <= "100";
				ELSIF (up /= '0' AND down = '0') THEN
					current <= "011";
				END IF;
			--volumes that will never reach (reset back to volume 3)
			WHEN "101" =>
				current <= "010";
			WHEN "110" =>
				current <= "010";
			WHEN "111" =>
				current <= "010";
		END CASE;
	END IF;
END PROCESS FSM_cycle;
END ARCHITECTURE states;