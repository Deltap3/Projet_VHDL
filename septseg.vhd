LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY septseg IS
 PORT (
 clk : IN STD_LOGIC; --La Clock
 trigger0 : IN STD_LOGIC;	--Les différentes switch
 trigger1 : IN STD_LOGIC;
 trigger2 : IN STD_LOGIC;
 trigger3 : IN STD_LOGIC;
 trigger4 : IN STD_LOGIC;
 bouton0 : IN STD_LOGIC;   --Les deux doutons
 bouton1 : IN STD_LOGIC;
 led0 : OUT STD_LOGIC;		--Les leds
 led1 : OUT STD_LOGIC;
 led2 : OUT STD_LOGIC;
 led3 : OUT STD_LOGIC;
 led4 : OUT STD_LOGIC;
 HEX5: OUT STD_LOGIC_VECTOR (0 to 6):= "0011000";  --Les 6 afficheurs 7 segments
 HEX4: OUT STD_LOGIC_VECTOR (0 to 6):= "1111001";
 HEX3: OUT STD_LOGIC_VECTOR (0 to 6):= "0110000";
 HEX2: OUT STD_LOGIC_VECTOR (0 to 6):= "0011001";
 HEX1: OUT STD_LOGIC_VECTOR (0 to 6):= "0011001";
 HEX0: OUT STD_LOGIC_VECTOR (0 to 6):= "0110000"
 );
END septseg;

ARCHITECTURE rtl OF septseg IS
-- Compteur de clock
SIGNAL s_clk_compte : STD_LOGIC_VECTOR(25 DOWNTO 0); 
-- Booléen Permettant de ralentir la clock
SIGNAL s_clk_lent : STD_LOGIC;
-- Vecteur contenant tous le message qu'on veux afficher
signal mess : std_logic_vector(0 to 349):=("00110001111001011000000110010011001011000011111110101011000100011110010100100111000001100000011001001100101100000001001000100011111110110001110100001100000011001111100100010010110000111111101001000110000000000111111111000011100000101001001110000111100100010010110000111111101010110001000001100111100001111001000100101100001110001111000111110011111111");

BEGIN

PROCESS (clk) --Process de ralentissement de la clock
BEGIN

 IF clk'EVENT AND clk = '1' THEN
	 IF s_clk_compte > 50000000 THEN
	 s_clk_compte <= (OTHERS => '0');
	 ELSE
	 if(trigger4 = '1' AND trigger3 = '1')then
	   s_clk_compte <= s_clk_compte + 8;
	 elsif(trigger4 = '1')then
	   s_clk_compte <= s_clk_compte + 4;
	 elsif(trigger3 = '1')then
	   s_clk_compte <= s_clk_compte + 2;	
	 else
		s_clk_compte <= s_clk_compte + 1; 
	 END IF;
	 END IF;

	 IF s_clk_compte < 25000000 THEN
	 s_clk_lent <= '0';
	 ELSE
	 s_clk_lent <= '1';
	 END IF;
 END IF;
END PROCESS;

PROCESS (s_clk_lent) --Process de traitement des données
BEGIN

	if(trigger0='0') then
		led0<='0';					--On allume les leds au dessus des switch enclenchées
		if(trigger3='0') then
			led3<='0';
		else
			led3<='1';
		end if;
		if(trigger4='0') then
			led4<='0';
		else
			led4<='1';
		end if;
		
		if(trigger1='0') then
			led1<='0';
			
			IF s_clk_lent'EVENT AND s_clk_lent = '1' THEN
				HEX5<=mess(0 to 6);		
				HEX4<=mess(7 to 13);
				HEX3<=mess(14 to 20);	--Chaque afficheur prend 1 bit du vecteur mess
				HEX2<=mess(21 to 27);
				HEX1<=mess(28 to 34);
				HEX0<=mess(35 to 41);
				
				if(trigger2='0') then
					led2<='0';
					mess <= mess(7 to 349) & mess(0 to 6);		--On fait tourner le vecteur mess en concaténant la fin avec le début
				else mess <= mess(343 to 349) & mess(0 to 342);
				led2<='1';
				end if;
				
			END IF;
			
		else led1<='1';
		end if;
		
	else led0<='1';		--Si on décide de ne plus afficher les lettres
		HEX5<="1111111";
		HEX4<="1111111";
		HEX3<="1111111";
		HEX2<="1111111";
		HEX1<="1111111";
		HEX0<="1111111";
		
	end if;
	
END PROCESS;

END;
