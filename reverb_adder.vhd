LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;
use work.constants.all;

entity reverb_adder is
	port(
		IN1,IN2: in std_logic_vector(15 downto 0);
		SUM    : out std_logic_vector(15 downto 0)
	);

end entity reverb_adder; 


ARCHITECTURE behavioral OF reverb_adder is
begin
process(IN1, IN2)
variable int1, int2, int_sum : integer;
begin
int1 := to_integer(signed(IN1));
int2 := to_integer(signed(IN2));
int_sum := int1 + int2;
SUM <= std_logic_vector(to_signed(int_sum, DATA_SIZE));
end process;
end behavioral;