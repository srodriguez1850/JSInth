LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY de2_wm8731_audio IS
PORT(
    clk 				: in std_logic;       --  Audio CODEC Chip Clock AUD_XCK (18.43 MHz)
    reset_n 		: in std_logic;
    test_mode 		: in std_logic;       --    Audio CODEC controller test mode
    audio_request : out std_logic;  	 --    Audio controller request new data
    data 			: in unsigned(15 downto 0);
  
    -- Audio interface signals
    AUD_ADCLRCK  : out  std_logic;   --    Audio CODEC ADC LR Clock
    AUD_ADCDAT   : in   std_logic;   --    Audio CODEC ADC Data
    AUD_DACLRCK  : out  std_logic;   --    Audio CODEC DAC LR Clock
    AUD_DACDAT   : out  std_logic;   --    Audio CODEC DAC Data
    AUD_BCLK     : inout std_logic   --    Audio CODEC Bit-Stream Clock
  );
END ENTITY de2_wm8731_audio;

ARCHITECTURE rtl OF de2_wm8731_audio IS

    SIGNAL lrck : std_logic;
    SIGNAL bclk : std_logic;
    SIGNAL xck  : std_logic;
    
    SIGNAL lrck_divider : unsigned(7 downto 0); 
    SIGNAL bclk_divider : unsigned(3 downto 0);
    
    SIGNAL set_bclk : std_logic;
    SIGNAL set_lrck : std_logic;
    SIGNAL clr_bclk : std_logic;
    SIGNAL lrck_lat : std_logic;
    
    SIGNAL shift_out : unsigned(15 downto 0);

    SIGNAL sin_out     : unsigned(15 downto 0);
    SIGNAL sin_counter : unsigned(5 downto 0);    

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
        IF test_mode = '1' THEN
          shift_out <= sin_out;
        ELSE
          shift_out <= data;
        END IF;
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

    -- Self test with Sin wave
    
    OUTPUT_SELECT: PROCESS (clk) IS
    BEGIN
      IF rising_edge(clk) THEN
        IF reset_n = '0' THEN
            sin_counter <= (others => '0');
        ELSIF lrck_lat = '1' and lrck = '0' THEN 
          IF sin_counter = "101111" THEN
            sin_counter <= "000000";
          ELSE  
            sin_counter <= sin_counter + 1;
          END IF;
        END IF;
      END IF;
    END PROCESS OUTPUT_SELECT;

    LRCK_SHIFT: PROCESS (clk) IS
    BEGIN
      IF rising_edge(clk) THEN
        lrck_lat <= lrck;
      END IF;
    END PROCESS LRCK_SHIFT;

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

  with sin_counter select sin_out <=
    X"0000" when "000000",
    X"10b4" when "000001",
    X"2120" when "000010",
    X"30fb" when "000011",
    X"3fff" when "000100",
    X"4deb" when "000101",
    X"5a81" when "000110",
    X"658b" when "000111",
    X"6ed9" when "001000",
    X"7640" when "001001",
    X"7ba2" when "001010",
    X"7ee6" when "001011",
    X"7fff" when "001100",
    X"7ee6" when "001101",
    X"7ba2" when "001110",
    X"7640" when "001111",
    X"6ed9" when "010000",
    X"658b" when "010001",
    X"5a81" when "010010",
    X"4deb" when "010011",
    X"3fff" when "010100",
    X"30fb" when "010101",
    X"2120" when "010110",
    X"10b4" when "010111",
    X"0000" when "011000",
    X"ef4b" when "011001",
    X"dee0" when "011010",
    X"cf05" when "011011",
    X"c001" when "011100",
    X"b215" when "011101",
    X"a57e" when "011110",
    X"9a74" when "011111",
    X"9127" when "100000",
    X"89bf" when "100001",
    X"845d" when "100010",
    X"8119" when "100011",
    X"8000" when "100100",
    X"8119" when "100101",
    X"845d" when "100110",
    X"89bf" when "100111",
    X"9127" when "101000",
    X"9a74" when "101001",
    X"a57e" when "101010",
    X"b215" when "101011",
    X"c000" when "101100",
    X"cf05" when "101101",
    X"dee0" when "101110",
    X"ef4b" when "101111",
    X"0000" when others;      

END ARCHITECTURE rtl;


