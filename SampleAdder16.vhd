LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY SampleAdder16 IS
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
END ENTITY SampleAdder16;

ARCHITECTURE rtl OF SampleAdder16 IS

FUNCTION count_ones(s : std_logic_vector) RETURN integer IS
VARIABLE temp : natural := 0;
BEGIN
  FOR i IN s'RANGE LOOP
    IF s(i) = '1' THEN temp := temp + 1; 
    END IF;
  END LOOP;
  
  RETURN temp;
END FUNCTION count_ones;

SIGNAL keys_pressed: integer;
SIGNAL ai, bi, ci, di, ei, fi, gi, hi, ii, ji, ki, li, mi, ni, oi, pi, zi: integer;

BEGIN
	keys_pressed <= count_ones(keys);

	ai <= to_integer(signed(a));
	bi <= to_integer(signed(b));
	ci <= to_integer(signed(c));
	di <= to_integer(signed(d));
	ei <= to_integer(signed(e));
	fi <= to_integer(signed(f));
	gi <= to_integer(signed(g));
	hi <= to_integer(signed(h));
	ii <= to_integer(signed(i));
	ji <= to_integer(signed(j));
	ki <= to_integer(signed(k));
	li <= to_integer(signed(l));
	mi <= to_integer(signed(m));
	ni <= to_integer(signed(n));
	oi <= to_integer(signed(o));
	pi <= to_integer(signed(p));
	
	zi <= 0 when keys_pressed = 0 else ((ai + bi + ci + di + ei + fi + gi + hi + ii + ji + ki + li + mi + ni + oi + pi) / keys_pressed);
	
	z <= unsigned(to_signed(zi, 16));
	
END ARCHITECTURE rtl;