----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:51:30 03/17/2023 
-- Design Name: 
-- Module Name:    carrysm - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity carrysm is
    Port ( a6 : in  STD_LOGIC_VECTOR (5 downto 0);
           b6 : in  STD_LOGIC_VECTOR (5 downto 0);
           p : out  STD_LOGIC_VECTOR (12 downto 0));
end carrysm;

architecture Behavioral of carrysm is
   component ma is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           sin : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sout : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component;

signal s0, s1, s2, s3, s4, s5, s6, c0, c1, c2, c3, c4, c5, c6 : STD_LOGIC_VECTOR(5 downto 0);

begin

     q00: ma port map
	   ( x => a6(0),
        y => b6(0),
        sin => '0',
        cin => '0',
        sout => s0(0),
        cout => c0(0) );
		  
		  p(0) <= s0(0);
		  
		  q01: ma port map
	   ( x => a6(1),
        y => b6(0),
        sin => '0',
        cin => '0',
        sout => s0(1),
        cout => c0(1) );
		  
		  q02: ma port map
	   ( x => a6(2),
        y => b6(0),
        sin => '0',
        cin => '0',
        sout => s0(2),
        cout => c0(2) );
		  
		  q03: ma port map
	   ( x => a6(3),
        y => b6(0),
        sin => '0',
        cin => '0',
        sout => s0(3),
        cout => c0(3) );
		  
		  q04: ma port map
	   ( x => a6(4),
        y => b6(0),
        sin => '0',
        cin => '0',
        sout => s0(4),
        cout => c0(4) );
		  
		  q05: ma port map
	   ( x => a6(5),
        y => b6(0),
        sin => '0',
        cin => '0',
        sout => s0(5),
        cout => c0(5) );
		  ---------------------------------------------------
		  q10: ma port map
		 ( x => a6(0),
		   y => b6(1),
			sin => s0(1),
			cin => c0(0),
			sout => s1(0),
			cout => c1(0) );
			
			p(1) <= s1(0);
			
			q11: ma port map
		 ( x => a6(1),
		   y => b6(1),
			sin => s0(2),
			cin => c0(1),
			sout => s1(1),
			cout => c1(1) );
			
			q12: ma port map
		 ( x => a6(2),
		   y => b6(1),
			sin => s0(3),
			cin => c0(2),
			sout => s1(2),
			cout => c1(2) );
			
			q13: ma port map
		 ( x => a6(3),
		   y => b6(1),
			sin => s0(4),
			cin => c0(3),
			sout => s1(3),
			cout => c1(3) );
			
			q14: ma port map
		 ( x => a6(4),
		   y => b6(1),
			sin => s0(5),
			cin => c0(4),
			sout => s1(4),
			cout => c1(4) );
			
			q15: ma port map
		 ( x => a6(5),
		   y => b6(1),
			sin => '0',
			cin => c0(5),
			sout => s1(5),
			cout => c1(5) );
			---------------------------------------
			q20: ma port map
		 ( x => a6(0),
		   y => b6(2),
			sin => s1(1),
			cin => c1(0),
			sout => s2(0),
			cout => c2(0) );
			
			p(2) <= s2(0);
			
			q21: ma port map
		 ( x => a6(1),
		   y => b6(2),
			sin => s1(2),
			cin => c1(1),
			sout => s2(1),
			cout => c2(1) );
			
			q22: ma port map
		 ( x => a6(2),
		   y => b6(2),
			sin => s1(3),
			cin => c1(2),
			sout => s2(2),
			cout => c2(2) );
			
			q23: ma port map
		 ( x => a6(3),
		   y => b6(2),
			sin => s1(4),
			cin => c1(3),
			sout => s2(3),
			cout => c2(3) );
			
			q24: ma port map
		 ( x => a6(4),
		   y => b6(2),
			sin => s1(5),
			cin => c1(4),
			sout => s2(4),
			cout => c2(4) );
			
			q25: ma port map
		 ( x => a6(5),
		   y => b6(2),
			sin => '0',
			cin => c1(5),
			sout => s2(5),
			cout => c2(5) );
			-------------------------------------
			q30: ma port map
		 ( x => a6(0),
		   y => b6(3),
			sin => s2(1),
			cin => c2(0),
			sout => s3(0),
			cout => c3(0) );
			
			p(3) <= s3(0);
			
			q31: ma port map
		 ( x => a6(1),
		   y => b6(3),
			sin => s2(2),
			cin => c2(1),
			sout => s3(1),
			cout => c3(1) );
			
			q32: ma port map
		 ( x => a6(2),
		   y => b6(3),
			sin => s2(3),
			cin => c2(2),
			sout => s3(2),
			cout => c3(2) );
			
			q33: ma port map
		 ( x => a6(3),
		   y => b6(3),
			sin => s2(4),
			cin => c2(3),
			sout => s3(3),
			cout => c3(3) );
			
			q34: ma port map
		 ( x => a6(4),
		   y => b6(3),
			sin => s2(5),
			cin => c2(4),
			sout => s3(4),
			cout => c3(4) );
			
			q35: ma port map
		 ( x => a6(5),
		   y => b6(3),
			sin => '0',
			cin => c2(5),
			sout => s3(5),
			cout => c3(5) );
			----------------------------------------------
			q40: ma port map
		 ( x => a6(0),
		   y => b6(4),
			sin => s3(1),
			cin => c3(0),
			sout => s4(0),
			cout => c4(0) );
			
			p(4) <= s4(0);
			
			q41: ma port map
		 ( x => a6(1),
		   y => b6(4),
			sin => s3(2),
			cin => c3(1),
			sout => s4(1),
			cout => c4(1) );
			
			q42: ma port map
		 ( x => a6(2),
		   y => b6(4),
			sin => s3(3),
			cin => c3(2),
			sout => s4(2),
			cout => c4(2) );
			
			q43: ma port map
		 ( x => a6(3),
		   y => b6(4),
			sin => s3(4),
			cin => c3(3),
			sout => s4(3),
			cout => c4(3) );
			
			q44: ma port map
		 ( x => a6(4),
		   y => b6(4),
			sin => s3(5),
			cin => c3(4),
			sout => s4(4),
			cout => c4(4) );
			
			q45: ma port map
		 ( x => a6(5),
		   y => b6(4),
			sin => '0',
			cin => c3(5),
			sout => s4(5),
			cout => c4(5) );
			---------------------------------------------
			q50: ma port map
		 ( x => a6(0),
		   y => b6(5),
			sin => s4(1),
			cin => c4(0),
			sout => s5(0),
			cout => c5(0) );
			
			p(5) <= s5(0);
			
			q51: ma port map
		 ( x => a6(1),
		   y => b6(5),
			sin => s4(2),
			cin => c4(1),
			sout => s5(1),
			cout => c5(1) );
			
			q52: ma port map
		 ( x => a6(2),
		   y => b6(5),
			sin => s4(3),
			cin => c4(2),
			sout => s5(2),
			cout => c5(2) );
			
			q53: ma port map
		 ( x => a6(3),
		   y => b6(5),
			sin => s4(4),
			cin => c4(3),
			sout => s5(3),
			cout => c5(3) );
			
			q54: ma port map
		 ( x => a6(4),
		   y => b6(5),
			sin => s4(5),
			cin => c4(4),
			sout => s5(4),
			cout => c5(4) );
			
			q55: ma port map
		 ( x => a6(5),
		   y => b6(5),
			sin => '0',
			cin => c4(5),
			sout => s5(5),
			cout => c5(5) );
			---------------------------------------------------
			q60: ma port map
		 ( x => '0',
		   y => '1',
			sin => s5(1),
			cin => c5(0),
			sout => s6(0),
         cout => c6(0) );
			
			p(6) <= s6(0);
			
			q61: ma port map
		 ( x => c6(0),
		   y => '1',
			sin => s5(2),
			cin => c5(1),
			sout => s6(1),
			cout => c6(1) );
			
			p(7) <= s6(1);
			
			q62: ma port map
		 ( x => c6(1),
		   y => '1',
			sin => s5(3),
			cin => c5(2),
			sout => s6(2),
			cout => c6(2) );
			
			p(8) <= s6(2);
			
			q63: ma port map
		 ( x => c6(2),
		   y => '1',
			sin => s5(4),
			cin => c5(3),
			sout => s6(3),
			cout => c6(3) );
			
			p(9) <= s6(3);
			
			q64: ma port map
		 ( x => c6(3),
		   y => '1',
			sin => s5(5),
			cin => c5(4),
			sout => s6(4),
			cout => c6(4) );
			
			p(10) <= s6(4);
			
			q65: ma port map
		 ( x => c6(4),
		   y => '1',
			sin => '0',
			cin => c5(5),
			sout => s6(5),
			cout => c6(5) );
			
			p(11) <= s6(5);
			p(12) <= c6(5);
			
				
	
end Behavioral;

