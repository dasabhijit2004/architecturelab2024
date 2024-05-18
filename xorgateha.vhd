----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:44:28 05/01/2024 
-- Design Name: 
-- Module Name:    xorgateha - Behavioral 
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

entity xorgateha is
    Port ( X1 : in  STD_LOGIC;
           X2 : in  STD_LOGIC;
           Y1 : out  STD_LOGIC);
end xorgateha;

architecture Behavioral of xorgateha is

begin

Y1 <= X1 xor X2;

end Behavioral;

