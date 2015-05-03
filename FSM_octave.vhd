LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_arith.all;

ENTITY FSM_octave IS
	PORT(
		button: in std_logic;
		clk: in std_logic;
		z: out std_logic_vector (1 downto 0)
	);
END ENTITY FSM_octave;

ARCHITECTURE states of FSM_octave IS

SIGNAL current: std_logic_vector (1 downto 0) := "01";

BEGIN

FSM_cycle: PROCESS (clk, button) IS
VARIABLE pressed: std_logic := '0';
BEGIN
	IF (rising_edge(clk)) THEN
		CASE current IS
			WHEN "00" =>
				--octave 1
				z <= "00";
				IF (button = '0' AND pressed = '0') THEN
					current <= "01";
					pressed := '1';
				ELSIF (button = '0' AND pressed = '1') THEN
					--do nothing
				ELSE
					pressed := '0';
				END IF;
			WHEN "01" =>
				--octave 2
				z <= "01";
				IF (button = '0' AND pressed = '0') THEN
					current <= "10";
					pressed := '1';
				ELSIF (button = '0' AND pressed = '1') THEN
					--do nothing
				ELSE
					pressed := '0';
				END IF;
			WHEN "10" =>
				--octave 3
				z <= "10";
				IF (button = '0' AND pressed = '0') THEN
					current <= "00";
					pressed := '1';
				ELSIF (button = '0' AND pressed = '1') THEN
					--do nothing
				ELSE
					pressed := '0';
				END IF;
			-- cases it will never reach
			WHEN "11" =>
				current <= "01";
		END CASE;
	END IF;
END PROCESS FSM_cycle;
END ARCHITECTURE states;