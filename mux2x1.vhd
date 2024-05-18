----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:21:34 05/18/2024 
-- Design Name: 
-- Module Name:    mux2x1 - Behavioral 
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

entity mux2x1 is
    Port ( S2 : in  STD_LOGIC;
           I2 : in  STD_LOGIC_VECTOR (1 downto 0);
           Y2 : out  STD_LOGIC);
end mux2x1;

architecture Behavioral of mux2x1 is

begin

process (S2, I2)
begin

if S2 = '0' then
	Y2 <= I2(0);
	
else 
	Y2 <= I2(1);
	
end if;

end process;

end Behavioral;

