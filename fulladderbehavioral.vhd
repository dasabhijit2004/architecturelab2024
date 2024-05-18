----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:25:59 04/27/2024 
-- Design Name: 
-- Module Name:    fulladderbehavioral - Behavioral 
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

entity fulladderbehavioral is
    Port ( i : in  STD_LOGIC_VECTOR (2 downto 0);
           s : out  STD_LOGIC_VECTOR (1 downto 0));
end fulladderbehavioral;

architecture Behavioral of fulladderbehavioral is

begin

process (i)

begin

if (i(0) = '1' and i(1) = '1' and i(2) = '1') then
s(0) <= '1';
s(1) <= '1';

elsif (i(0) = '1' and i(1) = '1') or (i(0) = '1' and i(2) = '1') or (i(1) = '1' and i(2) = '1') then
s(0) <= '1';
s(1) <= '0'; 

elsif (i(0) = '0' and i(1) = '0' and i(2) = '0') then
s(0) <= '0';
s(1) <= '0';

else
s(0) <= '0';
s(1) <= '1';

end if;

end process;

end Behavioral;

