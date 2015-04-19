library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FIFO is
	generic(
		constant DATA_SIZE : positive := 8;
		constant FIFO_SIZE : positive := 128);
	port(
		