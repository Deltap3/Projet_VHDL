LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY septseg IS
 PORT (
 clk : IN STD_LOGIC;
 HEX0: INOUT STD_LOGIC_VECTOR (0 to 6);
 HEX1: INOUT STD_LOGIC_VECTOR (0 to 6);
 HEX2: INOUT STD_LOGIC_VECTOR (0 to 6);
 HEX3: INOUT STD_LOGIC_VECTOR (0 to 6);
 HEX4: INOUT STD_LOGIC_VECTOR (0 to 6);
 HEX5: INOUT STD_LOGIC_VECTOR (0 to 6)
 );
END septseg;

ARCHITECTURE rtl OF septseg IS

signal count : std_logic_vector(8 downto 0) := "000000000";
signal buff0 : std_logic_vector(0 to 6):= "0101011";
signal buff1 : std_logic_vector(0 to 6):= "0011000";
signal buff2 : std_logic_vector(0 to 6):= "0100100";
signal buff3 : std_logic_vector(0 to 6):= "0110001";
signal buff4 : std_logic_vector(0 to 6):= "0101011";
signal buff5 : std_logic_vector(0 to 6):= "1000011";
signal counter : std_logic_vector(8 downto 0) := "000000000";

BEGIN
 PROCESS(clk)
 BEGIN
	if(rising_edge(clk))then
		count<=count+1;
	END IF;
	if(falling_edge(clk))then
		counter<=counter+1;
	END IF;
	END PROCESS;
 PROCESS(count)
 BEGIN
	if(count = 10000000)then
		--if(counter < 10000000)then
			--buff0<="1111111";
			--buff1<=HEX0;
			--buff2<=HEX1;
			--buff3<=HEX2;
			--buff4<=HEX3;
			--buff5<=HEX4;
		--END IF;
		--if(counter > 10000000)then*/
			HEX0<="0100100";
			HEX1<="0100100";
			HEX2<="0100100";
			HEX3<="0100100";
			HEX4<="0100100";
			HEX5<="0100100";
		--END IF;
		count<="00000000";
	END IF;
 END PROCESS;
END;
