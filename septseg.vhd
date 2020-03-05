LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY septseg IS

 PORT (
 clk : IN STD_LOGIC; 
 HEX0: OUT STD_LOGIC_VECTOR (0 to 6);
 HEX1: OUT STD_LOGIC_VECTOR (0 to 6);
 HEX2: OUT STD_LOGIC_VECTOR (0 to 6);
 HEX3: OUT STD_LOGIC_VECTOR (0 to 6);
 HEX4: OUT STD_LOGIC_VECTOR (0 to 6);
 HEX5: OUT STD_LOGIC_VECTOR (0 to 6)
 );
 
END septseg;

ARCHITECTURE rtl OF septseg IS

signal count : std_logic_vector(25 downto 0) := "00000000000000000000000000";
signal oui : bit := '0';

BEGIN
 
PROCESS(clk)
BEGIN

	if(rising_edge(clk)) then
		
		IF(oui = '0') then
		HEX0 <= "0101011";
		HEX1 <= "0011000";
		HEX2 <= "0100100";
		HEX3 <= "0110001";
		HEX4 <= "0101011";
		HEX5 <= "1000011";
		oui<='1';
		END if;
		
		count<=count+1;
		
		if(count=11111111111111111111111111/2) then
			HEX0 <= "1111111";
		END if;
	
		if(count>11111111111111111111111111) then
			HEX0 <= "0000000";
			count<=count-11111111111111111111111111;
		END if;
		
	END if;
END PROCESS;
 
END;