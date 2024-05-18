----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:17:21 04/17/2024 
-- Design Name: 
-- Module Name:    halfsubtractor - Behavioral 
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

entity halfsubtractor is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           s : out  STD_LOGIC;
           b : out  STD_LOGIC);
end halfsubtractor;

architecture Behavioral of halfsubtractor is

begin

s <= x xor y;
b <= (not x) and y;

end Behavioral;

