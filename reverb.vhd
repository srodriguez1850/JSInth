library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.constants.all;

entity reverb is
	port(
		source_signal, switch : in std_logic_vector(DATA_SIZE - 1 downto 0);
		clear_bit, clk: in std_logic;
		flanger_output: out std_logic_vector(DATA_SIZE - 1 downto 0)
		);

end entity reverb;

architecture behavioral of reverb is

	component reverb_FIFO is
		generic(
			constant DATA_SIZE : positive := 16;
			constant FIFO_SIZE : positive := 48);
		port(
			clk : in std_logic;
			reset : in std_logic;
			write_enable : in std_logic;
			read_enable : in std_logic;
			data_in : in std_logic_vector (DATA_SIZE - 1 downto 0);
			data_out : out std_logic_vector (DATA_SIZE - 1 downto 0);
			empty : out std_logic;
			full : out std_logic);
			
	end component reverb_FIFO;
	
	component reverb_adder is
		port(
		IN1,IN2: in std_logic_vector(DATA_SIZE - 1 downto 0);
		SUM    : out std_logic_vector(DATA_SIZE - 1 downto 0));
	end component reverb_adder;
	
	component AND16 is
		port(
		A,B: in std_logic_vector(DATA_SIZE - 1 downto 0);
		C  : out std_logic_vector(DATA_SIZE - 1 downto 0));
	end component AND16;
	
	
	signal fifo_output, and_output: std_logic_vector(DATA_SIZE - 1 downto 0);
	
	signal fifo_reset, fifo_write_en, fifo_read_en, fifo_empty, fifo_full : std_logic;
	signal fifo_in_data, fifo_out_data : std_logic_vector (DATA_SIZE - 1 downto 0);
	signal and_result : std_logic_vector(DATA_SIZE - 1 downto 0);
	
	begin
	
	FIFO_0: reverb_FIFO port map(clk, fifo_reset, fifo_write_en, fifo_read_en, fifo_in_data, fifo_out_data, fifo_empty, fifo_full);
	
	AND_0: AND16 port map(fifo_out_data, switch, and_result);
	
	ADDER_0: reverb_adder port map(source_signal, and_output, flanger_output);
	
	
end behavioral;