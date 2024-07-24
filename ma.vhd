----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:41:26 03/17/2023 
-- Design Name: 
-- Module Name:    ma - Behavioral 
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

entity ma is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           sin : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sout : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end ma;

architecture Behavioral of ma is

component FA is
    Port ( a1 : in  STD_LOGIC;
           b1 : in  STD_LOGIC;
           ci : in  STD_LOGIC;
           co : out  STD_LOGIC;
           so : out  STD_LOGIC);
end component;

begin
     w1: FA PORT MAP
	  ( a1 => sin,
       b1 => x and y,
       ci => cin, 
       co => cout,
		 so => sout );
 

end Behavioral;

