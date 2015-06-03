LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;
use work.constants.all;

entity reverb_adder is
	port(
		IN1,IN2: in unsigned(15 downto 0);
		SUM    : out unsigned(15 downto 0)
	);
end entity reverb_adder; 


ARCHITECTURE dataflow OF reverb_adder is

signal int1, int2, int_sum : integer;

begin

int1 <= to_integer(signed(IN1));
int2 <= to_integer(signed(IN2));
int_sum <= (int1 + int2)/2;

SUM <= unsigned(to_signed(int_sum, 16));

end dataflow;