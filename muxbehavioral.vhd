----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:27:56 04/19/2024 
-- Design Name: 
-- Module Name:    muxbehavioral - Behavioral 
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

entity muxbehavioral is
    Port ( s : in  STD_LOGIC_VECTOR (1 downto 0);
           i : in  STD_LOGIC_VECTOR (3 downto 0);
           y : out  STD_LOGIC);
end muxbehavioral;

architecture Behavioral of muxbehavioral is

begin

process(s, i)
begin

if s = "00" then
y <= i(0);

elsif s = "01" then
y <= i(1);

elsif s = "10" then
y <= i(2);

else
y <= i(3);

end if;

end process;

end Behavioral;

