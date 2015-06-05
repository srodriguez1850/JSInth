LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY WM8731_CONTROLLER IS
PORT(
    clk 				: in std_logic;
    reset_n 		: in std_logic;
    audio_request : out std_logic;
    data_in			: in unsigned (15 downto 0);

    AUD_ADCLRCK  : out  std_logic;
    AUD_ADCDAT   : in   std_logic;
    AUD_DACLRCK  : out  std_logic;
    AUD_DACDAT   : out  std_logic;
    AUD_BCLK     : inout std_logic
  );
END ENTITY WM8731_CONTROLLER;

ARCHITECTURE rtl OF WM8731_CONTROLLER IS

    SIGNAL lrck : std_logic := '0';
    SIGNAL bclk : std_logic := '0';
    SIGNAL xck  : std_logic := '0';
    
    SIGNAL lrck_divider : unsigned(7 downto 0) := X"00"; 
    SIGNAL bclk_divider : unsigned(3 downto 0) := X"0";
    
    SIGNAL set_bclk : std_logic;
    SIGNAL set_lrck : std_logic;
    SIGNAL clr_bclk : std_logic;
    SIGNAL lrck_lat : std_logic;
    
    SIGNAL shift_out : unsigned(15 downto 0);

BEGIN
  
    -- LRCK divider 
    -- Audio chip main clock is 18.432MHz / Sample rate 48KHz
    -- Divider is 18.432 MHz / 48KHz = 192 (X"C0")
    -- Left justify mode set by I2C controller
    
  DIVIDE_LRCK: PROCESS (clk) IS
  BEGIN
    IF rising_edge(clk) THEN
      IF reset_n = '0' THEN
        lrck_divider <= (others => '0');
      ELSIF lrck_divider = X"BF" THEN        -- "C0" minus 1
        lrck_divider <= X"00";
      ELSE 
        lrck_divider <= lrck_divider + 1;
      END IF;
    END IF;   
  END PROCESS DIVIDE_LRCK;

  DIVIDE_BCLK: PROCESS (clk) IS
  BEGIN
    IF rising_edge(clk) THEN
      IF reset_n = '0' THEN
        bclk_divider <= (others => '0');
      ELSIF bclk_divider = X"B" or set_lrck = '1' THEN  
        bclk_divider <= X"0";
      ELSE
        bclk_divider <= bclk_divider + 1;
      END IF;
    END IF;
  END PROCESS DIVIDE_BCLK;

  set_lrck <= '1' WHEN lrck_divider = X"BF" ELSE '0';
    
  CYCLE_LRCK: PROCESS (clk) IS
  BEGIN
    IF rising_edge(clk) THEN
      IF reset_n = '0' THEN
        lrck <= '0';
      ELSIF set_lrck = '1' THEN
        lrck <= not lrck;
      END IF;
    END IF;
  END PROCESS CYCLE_LRCK;
    
  -- BCLK divider
  set_bclk <= '1' WHEN bclk_divider(3 downto 0) = "0101" ELSE '0';
  clr_bclk <= '1' WHEN bclk_divider(3 downto 0) = "1011" ELSE '0';
  
  CYCLE_BCLK: PROCESS (clk) IS
  BEGIN
    IF rising_edge(clk) THEN
      IF reset_n = '0' THEN
        bclk <= '0';
      ELSIF set_lrck = '1' or clr_bclk = '1' THEN
        bclk <= '0';
      ELSIF set_bclk = '1' THEN
        bclk <= '1';
      END IF;
    END IF;
  END PROCESS CYCLE_BCLK;

  -- Audio data shift output
  SHIFT_OUTPUT: PROCESS (clk) IS
  BEGIN
    IF rising_edge(clk) THEN
      IF reset_n = '0' THEN
        shift_out <= (others => '0');
      ELSIF set_lrck = '1' THEN
			 shift_out <= data_in;
      ELSIF clr_bclk = '1' THEN
        shift_out <= shift_out (14 downto 0) & '0';
      END IF;
    END IF;   
  END PROCESS SHIFT_OUTPUT;

    -- Audio outputs
    
    AUD_ADCLRCK  <= lrck;          
    AUD_DACLRCK  <= lrck;          
    AUD_DACDAT   <= shift_out(15); 
    AUD_BCLK     <= bclk;          

    LRCK_LATCH: PROCESS (clk) IS
    BEGIN
      IF rising_edge(clk) THEN
        lrck_lat <= lrck;
      END IF;
    END PROCESS LRCK_LATCH;

    REQ_AUDIO: PROCESS (clk) IS
    BEGIN
      IF rising_edge(clk) THEN
        IF lrck_lat = '1' and lrck = '0' THEN
          audio_request <= '1';
        ELSE
          audio_request <= '0';
        END IF;
      END IF;
    END PROCESS REQ_AUDIO;
END ARCHITECTURE rtl;


