----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:30:51 04/20/2024 
-- Design Name: 
-- Module Name:    decoderbehavioral - Behavioral 
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

entity decoderbehavioral is
    Port ( i : in  STD_LOGIC_VECTOR (1 downto 0);
           d : out  STD_LOGIC_VECTOR (3 downto 0));
end decoderbehavioral;

architecture Behavioral of decoderbehavioral is

begin

process(i)
begin

if i = "00" then
d <= "0001";

elsif i = "01" then
d <= "0010";

elsif i = "10" then
d <= "0100";

else
d <= "1000";

end if;

end process;

end Behavioral;

