 ----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:26:45 04/25/2024 
-- Design Name: 
-- Module Name:    encoder - Behavioral 
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

entity encoder is
    Port ( i : in  STD_LOGIC_VECTOR (3 downto 0);
           d : out  STD_LOGIC_VECTOR (1 downto 0));
end encoder;

architecture Behavioral of encoder is

begin

process (i)
begin

if i = "1000" then
d <= "11"; 

elsif i = "0100" then
d <= "10";

elsif i = "0010" then
d <= "01";

elsif i = "0001" then
d <= "00";

else 
d <= "ZZ";

end if;

end process;

end Behavioral;

