LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY audioROM IS
PORT(
	keys: in std_logic_vector (15 downto 0);
	octave: in std_logic_vector (1 downto 0)
);
END ENTITY audioROM;