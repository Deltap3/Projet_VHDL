LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY septseg IS
 PORT (
 HEX0: OUT STD_LOGIC_VECTOR (0 to 6);
 HEX1: OUT STD_LOGIC_VECTOR (0 to 6);
 HEX2: OUT STD_LOGIC_VECTOR (0 to 6);
 HEX3: OUT STD_LOGIC_VECTOR (0 to 6);
 HEX4: OUT STD_LOGIC_VECTOR (0 to 6);
 HEX5: OUT STD_LOGIC_VECTOR (0 to 6)
 );
END septseg;
ARCHITECTURE rtl OF septseg IS
BEGIN
 HEX0 <= "0101011";
 HEX1 <= "0011000";
 HEX2 <= "0100100";
 HEX3 <= "0110001";
 HEX4 <= "0101011";
 HEX5 <= "1000011";
END;
--entity septseg is
--type t_Memory is array (0 to 5) of std_logic_vector(0 to 6);
--signal tab : t_Memory;
--end septseg;
--architecture yes of septseg is
--BEGIN
 --tab(0) <= "0101011";
 --tab(1) <= "0011000";
 --tab(2) <= "0100100";
 --tab(3) <= "0110001";
 --tab(4) <= "0101011";
 --tab(5) <= "1000011";
--END;