library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reverb_FIFO is
generic(
	constant DATA_SIZE : positive := 16;
	constant FIFO_SIZE : positive := 48);
port(
	clk : in std_logic;
	reset : in std_logic;
	write_enable : in std_logic;
	read_enable : in std_logic;
	data_in : in unsigned (DATA_SIZE - 1 downto 0);
	data_out : out unsigned (DATA_SIZE - 1 downto 0);
	empty : out std_logic;
	full : out std_logic
);
end reverb_FIFO;

architecture behavioral of reverb_FIFO is
begin
FIFO_process : process (clk)
type FIFO_storage is array (0 to FIFO_SIZE - 1) of unsigned (DATA_SIZE - 1 downto 0);
variable head : natural range 0 to FIFO_SIZE - 1;
variable tail : natural range 0 to FIFO_SIZE - 1;
variable FIFO_memory : FIFO_storage;
variable flag : boolean;
begin
	if rising_edge(clk) then
		if (reset = '1') then
			head := 0;
			tail := 0;
			flag := false;
			full <= '0';
			empty <= '1';
		else
			if (read_enable = '1') then
				if ((flag = true) or (head /= tail)) then
					data_out <= FIFO_memory(tail);
					if (tail = FIFO_SIZE - 1) then
						tail := 0;
						flag := false;
					else
						tail := tail + 1;
					end if;
				end if;
			end if;
			if (write_enable = '1') then
				if ((flag = false) or (head /= tail)) then
					FIFO_memory(head) := data_in;
					if (head = FIFO_SIZE - 1) then
						head := 0;
						flag := true;
					else
						head := head + 1;
					end if;
				end if;
			end if;
			if (head = tail) then
				if (flag = true) then
					full <= '1';
				else
					empty <= '1';
				end if;
			else
				full <= '0';
				empty <= '0';
			end if;
		end if;
	end if;
end process;
end behavioral;