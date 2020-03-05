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
END septseg;

ARCHITECTURE rtl OF septseg IS

SIGNAL s_clk_compte : STD_LOGIC_VECTOR(25 DOWNTO 0);
SIGNAL s_clk_lent : STD_LOGIC;
signal p : std_logic_vector(0 to 6):= "0011000";
signal i : std_logic_vector(0 to 6):= "1111001";
signal e : std_logic_vector(0 to 6):= "0110000";
signal r : std_logic_vector(0 to 6):= "0011001";
signal c : std_logic_vector(0 to 6):= "0110001";
signal h : std_logic_vector(0 to 6):= "1101000";
signal espace : std_logic_vector(0 to 6):= "1111111";
signal count : std_logic_vector(5 downto 0) := "000000";

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
	 CASE count IS
	 WHEN "000000" =>
		 HEX0<=e;
		 HEX1<=r;
		 HEX2<=r;
		 HEX3<=e;
		 HEX4<=i;
		 HEX5<=p;
	 WHEN "000001" =>
		 HEX0<=r;
		 HEX1<=r;
		 HEX2<=e;
		 HEX3<=i;
		 HEX4<=p;
		 HEX5<=espace;
	 WHEN "000010" =>
		 HEX0<=r;
		 HEX1<=e;
		 HEX2<=i;
		 HEX3<=p;
		 HEX4<=espace;
		 HEX5<=e;
	 WHEN "000011" =>
		 HEX0<=e;
		 HEX1<=i;
		 HEX2<=p;
		 HEX3<=espace;
		 HEX4<=e;
		 HEX5<=r;
	 WHEN "000100" =>
		 HEX0<=i;
		 HEX1<=p;
		 HEX2<=espace;
		 HEX3<=e;
		 HEX4<=r;
		 HEX5<=r;
	 WHEN "000101" =>
		 HEX0<=p;
		 HEX1<=espace;
		 HEX2<=e;
		 HEX3<=r;
		 HEX4<=r;
		 HEX5<=e;
	 WHEN "000110" =>
		 HEX0<=espace;
		 HEX1<=e;
		 HEX2<=r;
		 HEX3<=r;
		 HEX4<=e;
		 HEX5<=i;
	 WHEN OTHERS =>
		 count<="000000";
		 
	 END CASE;
	 count<=count+1;
	 if(count="000110") then
	 count<="000000";
	 end if;
	 
 END IF;
END PROCESS;
END;
