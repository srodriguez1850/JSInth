library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity AND16 is
	port(
		A,B: in unsigned(15 downto 0);
		C  : out unsigned(15 downto 0)
	);
end AND16;

architecture dataflow of AND16 is
begin
	C <= A and B;
end dataflow;