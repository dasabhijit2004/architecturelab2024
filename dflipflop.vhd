----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:43:07 04/21/2024 
-- Design Name: 
-- Module Name:    dflipflop - Behavioral 
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

entity dflipflop is
    Port ( clk : in  STD_LOGIC;
			  rst : in STD_LOGIC;
           d : in  STD_LOGIC;
           q : out  STD_LOGIC;
           qb : out  STD_LOGIC);
end dflipflop;

architecture Behavioral of dflipflop is

begin

process (clk, rst, d)
begin

q <= '0';
qb <= '1';

if rst = '1' then
q <= '0';
qb <= '1';

elsif clk = '1' and clk'event then
q <= d;
qb <= not d;

end if;

end process;

end Behavioral;

