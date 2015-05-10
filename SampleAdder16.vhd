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

	ai <= to_integer(a);
	bi <= to_integer(b);
	ci <= to_integer(c);
	di <= to_integer(d);
	ei <= to_integer(e);
	fi <= to_integer(f);
	gi <= to_integer(g);
	hi <= to_integer(h);
	ii <= to_integer(i);
	ji <= to_integer(j);
	ki <= to_integer(k);
	li <= to_integer(l);
	mi <= to_integer(m);
	ni <= to_integer(n);
	oi <= to_integer(o);
	pi <= to_integer(p);
	
	zi <= 0 when keys_pressed = 0 else ((ai + bi + ci + di + ei + fi + gi + hi + ii + ji + ki + li + mi + ni + oi + pi) / keys_pressed);
	
	z <= to_unsigned(zi, 16);
	
END ARCHITECTURE rtl;