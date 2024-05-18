----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:44:01 04/20/2024 
-- Design Name: 
-- Module Name:    muxcase - Behavioral 
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

entity muxcase is
    Port ( s : in  STD_LOGIC_VECTOR (1 downto 0);
           i : in  STD_LOGIC_VECTOR (3 downto 0);
           y : out  STD_LOGIC);
end muxcase;

architecture Behavioral of muxcase is

begin

process (s,i)
begin

case s is

when "00" => y <= i(0);
when "01" => y <= i(1);
when "10" => y <= i(2);
when others => y <= i(3);

end case;

end process;

end Behavioral;

