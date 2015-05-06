--
-- FSM_volume.vhd
-- Usage: cycles through the volume using a finite state machine
--

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

SIGNAL current: bit_vector(2 downto 0) := "010";

BEGIN

FSM_cycle: PROCESS (clk, up, down) IS
VARIABLE pressed: std_logic := '0';
BEGIN
	IF (rising_edge(clk)) THEN
		CASE current IS
			--volume 1
			WHEN "000" =>
				z <= "000";
				IF (up = '0' AND down /= '0' AND pressed = '0') THEN
					current <= "001";
					pressed := '1';
				ELSIF (up /= '0' AND down = '0' AND pressed = '0') THEN
					current <= "000";
					pressed := '1';
				ELSIF (up /= '0' AND down = '0' AND pressed = '1') THEN
					-- do nothing
				ELSIF (up = '0' AND down /= '0' AND pressed = '1') THEN
					-- do nothing
				ELSE
					pressed := '0';
				END IF;
			--volume 2
			WHEN "001" =>
				z <= "001";
				IF (up = '0' AND down /= '0' AND pressed = '0') THEN
					current <= "010";
					pressed := '1';
				ELSIF (up /= '0' AND down = '0' AND pressed = '0') THEN
					current <= "000";
					pressed := '1';
				ELSIF (up /= '0' AND down = '0' AND pressed = '1') THEN
					-- do nothing
				ELSIF (up = '0' AND down /= '0' AND pressed = '1') THEN
					-- do nothing
				ELSE
					pressed := '0';
				END IF;
			--volume 3
			WHEN "010" =>
				z <= "010";
				IF (up = '0' AND down /= '0' AND pressed = '0') THEN
					current <= "011";
					pressed := '1';
				ELSIF (up /= '0' AND down = '0' AND pressed = '0') THEN
					current <= "001";
					pressed := '1';
				ELSIF (up /= '0' AND down = '0' AND pressed = '1') THEN
					-- do nothing
				ELSIF (up = '0' AND down /= '0' AND pressed = '1') THEN
					-- do nothing
				ELSE
					pressed := '0';
				END IF;
			--volume 4
			WHEN "011" =>
				z <= "011";
				IF (up = '0' AND down /= '0' AND pressed = '0') THEN
					current <= "100";
					pressed := '1';
				ELSIF (up /= '0' AND down = '0' AND pressed = '0') THEN
					current <= "010";
					pressed := '1';
				ELSIF (up /= '0' AND down = '0' AND pressed = '1') THEN
					-- do nothing
				ELSIF (up = '0' AND down /= '0' AND pressed = '1') THEN
					-- do nothing
				ELSE
					pressed := '0';
				END IF;
			--volume 5
			WHEN "100" =>
				z <= "100";
				IF (up = '0' AND down /= '0' AND pressed = '0') THEN
					current <= "100";
					pressed := '1';
				ELSIF (up /= '0' AND down = '0' AND pressed = '0') THEN
					current <= "011";
					pressed := '1';
				ELSIF (up /= '0' AND down = '0' AND pressed = '1') THEN
					-- do nothing
				ELSIF (up = '0' AND down /= '0' AND pressed = '1') THEN
					-- do nothing
				ELSE
					pressed := '0';
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