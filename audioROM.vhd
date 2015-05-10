LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY audioROM IS
PORT(
	keys: in std_logic_vector (15 downto 0);
	octave: in std_logic_vector (1 downto 0);
	z: out std_logic_vector (15 downto 0)
);
END ENTITY audioROM;

ARCHITECTURE rom OF audioROM IS
COMPONENT SampleAdder16 IS
PORT(
		keys: in std_logic_vector(15 downto 0);

		a: in unsigned(15 downto 0);
		b: in unsigned(15 downto 0);
		c: in unsigned(15 downto 0);
		d: in unsigned(15 downto 0);
		e: in unsigned(15 downto 0);
		f: in unsigned(15 downto 0);
		g: in unsigned(15 downto 0);
		h: in unsigned(15 downto 0);
		i: in unsigned(15 downto 0);
		j: in unsigned(15 downto 0);
		k: in unsigned(15 downto 0);
		l: in unsigned(15 downto 0);
		m: in unsigned(15 downto 0);
		n: in unsigned(15 downto 0);
		o: in unsigned(15 downto 0);
		p: in unsigned(15 downto 0);
		
		z: out unsigned(15 downto 0)
);
END COMPONENT SampleAdder16;

SIGNAL k0, k1, k2, k3, k4, k5, k6, k7, k8, k9, k10, k11, k12, k13, k14, k15: std_logic_vector (15 downto 0);

TYPE entry IS ARRAY ( 0 to 2**16 - 1) OF std_logic_vector(15 downto 0);
CONSTANT samples: entry := (
	0 => X"0000",
	3 => X"AAAA"
);

BEGIN

--create index from bit samples

k0 <= samples(to_integer(keys(0)));
k1 <= samples(to_integer(keys(1)));
k2 <= samples(to_integer(keys(2)));
k3 <= samples(to_integer(keys(3)));
k4 <= samples(to_integer(keys(4)));
k5 <= samples(to_integer(keys(5)));
k6 <= samples(to_integer(keys(6)));
k7 <= samples(to_integer(keys(7)));
k8 <= samples(to_integer(keys(8)));
k9 <= samples(to_integer(keys(9)));
k10 <= samples(to_integer(keys(10)));
k11 <= samples(to_integer(keys(11)));
k12 <= samples(to_integer(keys(12)));
k13 <= samples(to_integer(keys(13)));
k14 <= samples(to_integer(keys(14)));
k15 <= samples(to_integer(keys(15)));

SAMPLE_ADDER: SampleAdder16 port map(keys, k0, k1, k2, k3, k4, k5, k6, k7, k8, k9, k10, k11, k12, k13, k14, k15, z);

END ARCHITECTURE rom;