LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

PACKAGE typeDeclarations IS
	TYPE hex IS ARRAY (0 to 2**8 - 1) OF unsigned(15 downto 0);
	TYPE nat_num IS ARRAY (0 to 2**8 - 1) OF natural;
END PACKAGE typeDeclarations;