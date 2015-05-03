LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY de2_wm8731_audio IS
PORT(
    clk 				: in std_logic;       --  Audio CODEC Chip Clock AUD_XCK (18.43 MHz)
    reset_n 		: in std_logic;
    test_mode 		: in std_logic;       --    Audio CODEC controller test mode
    audio_request : out std_logic;  	 --    Audio controller request new data
	 switch			: in std_logic;
  
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
	 
	 SIGNAL data_out		: unsigned(15 downto 0);
	 SIGNAL data_counter	: unsigned (6 downto 0);

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
			 IF switch = '1' THEN
				shift_out <= data_out;
			 ELSE
				shift_out <= "0000000000000000";
			 END IF;
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
    
    OUTPUT_SELECT_TEST: PROCESS (clk) IS
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
    END PROCESS OUTPUT_SELECT_TEST;
	 
	 OUTPUT_SELECT: PROCESS (clk) IS
    BEGIN
      IF rising_edge(clk) THEN
        IF reset_n = '0' THEN
            data_counter <= (others => '0');
        ELSIF lrck_lat = '1' and lrck = '0' THEN 
          IF data_counter = "1101101" THEN
            data_counter <= "0000000";
          ELSE  
            data_counter <= data_counter + 1;
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
	 
 with data_counter select data_out <=
	X"0000" when "0000000",
	X"074E" when "0000001",
	X"0E97" when "0000010",
	X"15D3" when "0000011",
	X"1CFD" when "0000100",
	X"240F" when "0000101",
	X"2B03" when "0000110",
	X"31D3" when "0000111",
	X"3879" when "0001000",
	X"3EF0" when "0001001",
	X"4533" when "0001010",
	X"4B3B" when "0001011",
	X"5105" when "0001100",
	X"568C" when "0001101",
	X"5BCA" when "0001110",
	X"60BB" when "0001111",
	X"655C" when "0010000",
	X"69A8" when "0010001",
	X"6D9B" when "0010010",
	X"7134" when "0010011",
	X"746D" when "0010100",
	X"7746" when "0010101",
	X"79BB" when "0010110",
	X"7BCA" when "0010111",
	X"7D72" when "0011000",
	X"7EB1" when "0011001",
	X"7F86" when "0011010",
	X"7FF1" when "0011011",
	X"7FF1" when "0011100",
	X"7F86" when "0011101",
	X"7EB1" when "0011110",
	X"7D72" when "0011111",
	X"7BCA" when "0100000",
	X"79BB" when "0100001",
	X"7746" when "0100010",
	X"746D" when "0100011",
	X"7134" when "0100100",
	X"6D9B" when "0100101",
	X"69A8" when "0100110",
	X"655C" when "0100111",
	X"60BB" when "0101000",
	X"5BCA" when "0101001",
	X"568C" when "0101010",
	X"5105" when "0101011",
	X"4B3B" when "0101100",
	X"4533" when "0101101",
	X"3EF0" when "0101110",
	X"3879" when "0101111",
	X"31D3" when "0110000",
	X"2B03" when "0110001",
	X"240F" when "0110010",
	X"1CFD" when "0110011",
	X"15D3" when "0110100",
	X"0E97" when "0110101",
	X"074E" when "0110110",
	X"0000" when "0110111",
	X"F8AF" when "0111000",
	X"F166" when "0111001",
	X"EA2A" when "0111010",
	X"E300" when "0111011",
	X"DBEE" when "0111100",
	X"D4FA" when "0111101",
	X"CE2A" when "0111110",
	X"C784" when "0111111",
	X"C10D" when "1000000",
	X"BACA" when "1000001",
	X"B4C2" when "1000010",
	X"AEF8" when "1000011",
	X"A971" when "1000100",
	X"A433" when "1000101",
	X"9F42" when "1000110",
	X"9AA1" when "1000111",
	X"9655" when "1001000",
	X"9262" when "1001001",
	X"8EC9" when "1001010",
	X"8B90" when "1001011",
	X"88B7" when "1001100",
	X"8642" when "1001101",
	X"8433" when "1001110",
	X"828B" when "1001111",
	X"814C" when "1010000",
	X"8077" when "1010001",
	X"800C" when "1010010",
	X"800C" when "1010011",
	X"8077" when "1010100",
	X"814C" when "1010101",
	X"828B" when "1010110",
	X"8433" when "1010111",
	X"8642" when "1011000",
	X"88B7" when "1011001",
	X"8B90" when "1011010",
	X"8EC9" when "1011011",
	X"9262" when "1011100",
	X"9655" when "1011101",
	X"9AA1" when "1011110",
	X"9F42" when "1011111",
	X"A433" when "1100000",
	X"A971" when "1100001",
	X"AEF8" when "1100010",
	X"B4C2" when "1100011",
	X"BACA" when "1100100",
	X"C10D" when "1100101",
	X"C784" when "1100110",
	X"CE2A" when "1100111",
	X"D4FA" when "1101000",
	X"DBEE" when "1101001",
	X"E300" when "1101010",
	X"EA2A" when "1101011",
	X"F166" when "1101100",
	X"F8AF" when "1101101",
	X"0000" when others;

END ARCHITECTURE rtl;


