LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
entity septseg is
type t_Memory is array (0 to 5) of std_logic_vector(6 downto 0);
signal tab : t_Memory;
end septseg;
architecture yes of septseg is
BEGIN
tab(0) <= "0101011";
tab(1) <= "0011000";
tab(2) <= "0100100";
tab(3) <= "0110001";
tab(4) <= "0101011";
tab(5) <= "1000011";
END;
--entity septseg is
--	 t_Memory is array (0 to 5) of std_logic_vector(0 to 6);
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