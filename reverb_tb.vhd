library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.constants.all;

entity reverb_tb is
	port(
	   output: out unsigned(DATA_SIZE - 1 downto 0)
	     );
end entity reverb_tb;

architecture behavioral of reverb_tb is

component reverb is
	port(
	    source_signal : in unsigned(DATA_SIZE - 1 downto 0);
	    clear_bit, clk, switch: in std_logic;
	    output: out unsigned(DATA_SIZE - 1 downto 0)
	     );
	end component reverb;
	
signal source_signal_tb : unsigned(DATA_SIZE - 1 downto 0);
signal clear_bit_tb, clk_tb, switch_tb: std_logic;
	
	--signal fifo_output, and_output: unsigned(DATA_SIZE - 1 downto 0);
	--signal fifo_reset, fifo_write_en, fifo_read_en, fifo_empty, fifo_full : std_logic;
	--signal fifo_in_data, fifo_out_data, AND_switch : unsigned (DATA_SIZE - 1 downto 0);
	
begin
	
REVERB_0: reverb port map(source_signal_tb, clear_bit_tb, clk_tb, switch_tb, output);

clock: process is 
variable count : natural := 0;
begin
if (count < 21) then
    clk_tb <= '0';
    wait for 3ns;
    clk_tb <= '1';
    wait for 3ns;
    count := count + 1;
else
    wait;
end if;
end process;

simulation: process is begin
switch_tb <= '0';
source_signal_tb <= x"4b6f";
wait for 15ns;
switch_tb <= '1';
wait for 15ns;
source_signal_tb <= x"dead";
wait for 15ns;
source_signal_tb <= x"0000";
wait for 15ns;
source_signal_tb <= x"7fff";
wait for 15ns;
source_signal_tb <= x"80a3";
wait for 15ns;
source_signal_tb <= x"3333";
wait for 15ns;
source_signal_tb <= x"ffff";
wait for 15ns;
source_signal_tb <= x"0000";
wait;
end process;

end behavioral;