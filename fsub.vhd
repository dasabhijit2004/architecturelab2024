----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:50:46 04/30/2024 
-- Design Name: 
-- Module Name:    fsub - Behavioral 
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

entity fsub is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           bin : in  STD_LOGIC;
           d : out  STD_LOGIC;
           bout : out  STD_LOGIC);
end fsub;

architecture Behavioral of fsub is

begin

process (x, y, bin)

begin

if y /= bin then
d <= not x;
bout <= not x;

elsif y = bin then
d <= x;
bout <= y;

end if;

end process;

end Behavioral;

