----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:16:18 05/18/2024 
-- Design Name: 
-- Module Name:    mux4x1 - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux4x1 is
    Port ( S4 : in  STD_LOGIC_VECTOR (1 downto 0);
           I4 : in  STD_LOGIC_VECTOR (3 downto 0);
           Y4 : out  STD_LOGIC);
end mux4x1;

architecture Behavioral of mux4x1 is

begin

process (S4, I4)
begin

if S4 = "00" then
	Y4 <= I4(0);
	
elsif S4 = "01" then
	Y4 <= I4(1);
	
elsif S4 = "10" then
	Y4 <= I4(2);
	
elsif S4 = "11" then
	Y4 <= I4(3);
 
end if;

end process;

end Behavioral;

