----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:20:51 04/19/2024 
-- Design Name: 
-- Module Name:    muxdataflow - Behavioral 
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

entity muxdataflow is
    Port ( s : in  STD_LOGIC_VECTOR (1 downto 0);
           i : in  STD_LOGIC_VECTOR (3 downto 0);
           y : out  STD_LOGIC);
end muxdataflow;

architecture Behavioral of muxdataflow is

begin

y <= (not(s(1)) and not(s(0)) and i(0)) or (not(s(1)) and s(0) and i(1)) or (s(1) and not(s(0)) and i(2)) or (s(1) and s(0) and i(3));

end Behavioral;

