----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:56:35 04/22/2024 
-- Design Name: 
-- Module Name:    jkflipflop - Behavioral 
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

entity jkflipflop is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           j : in  STD_LOGIC;
           k : in  STD_LOGIC;
           q : out  STD_LOGIC;
           qb : out  STD_LOGIC);
end jkflipflop;

architecture Behavioral of jkflipflop is

signal nxt, prv : STD_LOGIC;

begin

process (j,k,clk,rst)
begin

nxt <= '0';

if rst = '1' then
nxt <= '0';

elsif clk = '1' and clk'event then
if j /= k then
nxt <= j;

elsif j = '1' and k = '1' then
nxt <= not prv;

else
nxt <= prv;

end if;

end if;

end process;

q <= nxt;
qb <= not nxt;
prv <= nxt;

end Behavioral;


