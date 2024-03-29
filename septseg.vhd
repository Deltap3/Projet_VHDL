LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY septseg IS
 PORT (
 clk : IN STD_LOGIC;
 HEX5: OUT STD_LOGIC_VECTOR (0 to 6):= "0011000";
 HEX4: OUT STD_LOGIC_VECTOR (0 to 6):= "1111001";
 HEX3: OUT STD_LOGIC_VECTOR (0 to 6):= "0110000";
 HEX2: OUT STD_LOGIC_VECTOR (0 to 6):= "0011001";
 HEX1: OUT STD_LOGIC_VECTOR (0 to 6):= "0011001";
 HEX0: OUT STD_LOGIC_VECTOR (0 to 6):= "0110000"
 );
type count is range 0 to 255;
END septseg;

ARCHITECTURE rtl OF septseg IS

SIGNAL s_clk_compte : STD_LOGIC_VECTOR(25 DOWNTO 0);
SIGNAL s_clk_lent : STD_LOGIC;
signal mess : std_logic_vector(0 to 349):=("00110001111001011000000110010011001011000011111110101011000100011110010100100111000001100000011001001100101100000001001000100011111110110001110100001100000011001111100100010010110000111111101001000110000000000111111111000011100000101001001110000111100100010010110000111111101010110001000001100111100001111001000100101100001110001111000111110011111111");
signal texte : std_logic_vector(0 to 6);
BEGIN
 PROCESS (clk)
BEGIN
 IF clk'EVENT AND clk = '1' THEN
 IF s_clk_compte > 50000000 THEN
 s_clk_compte <= (OTHERS => '0');
 ELSE
 s_clk_compte <= s_clk_compte + 1; 
 END IF;

 IF s_clk_compte < 25000000 THEN
 s_clk_lent <= '0';
 ELSE
 s_clk_lent <= '1';
 END IF;
 END IF;
END PROCESS;
 PROCESS (s_clk_lent)
BEGIN
	IF s_clk_lent'EVENT AND s_clk_lent = '1' THEN
	 HEX5<=mess(0 to 6);
	 HEX4<=mess(7 to 13);
	 HEX3<=mess(14 to 20);
	 HEX2<=mess(21 to 27);
	 HEX1<=mess(28 to 34);
	 HEX0<=mess(35 to 41);
	 mess <= mess(7 to 349) & mess(0 to 6);
	END IF;
END PROCESS;
END;
