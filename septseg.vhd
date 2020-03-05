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
type t_Memory is array (0 to 29) of std_logic_vector(0 to 6);
signal tab : t_Memory:=("0011000","1111001","0110000","0011001","0011001","0110000","1111111","0110000","0011001","0011001","0110000","1111001");

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
signal n : std_logic_vector(0 to 6):= "0001001";
signal espace : std_logic_vector(0 to 6):= "1111111";
signal count : std_logic_vector(0 to 6):= "0000000";

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
	 HEX0<=tab(count);
	 HEX1<=tab(count+'1');
	 HEX2<=tab(count+'2');
	 HEX3<=tab(count+'3');
	 HEX4<=tab(count+'4');
	 HEX5<=tab(count+'5');
	 count<=count+1;
	 if(count="0000111") then
	 count<="0000000";
	 end if;
	 
 END IF;
END PROCESS;
END;
