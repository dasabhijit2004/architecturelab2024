----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:12:07 04/29/2024 
-- Design Name: 
-- Module Name:    srflipflop - Behavioral 
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

entity srflipflop is
    Port ( clk : in  STD_LOGIC;
           s : in  STD_LOGIC;
           r : in  STD_LOGIC;
           q : out  STD_LOGIC;
           qb : out  STD_LOGIC);
end srflipflop;

architecture Behavioral of srflipflop is

signal nxt, prv : STD_LOGIC := '0';

begin

process(clk, s, r)

begin

	if clk = '0' then
	nxt <= prv;
	
	elsif clk = '1' then
		if s = '0' and r = '0' then
		nxt <= prv;
		
		elsif s = '0' and r = '1' then
		nxt <= '0';
		
		elsif s = '1' and r = '0' then
		nxt <= '1';
		
		else
		nxt <= 'Z';
		
		end if;
	
	end if;

end process;

q <= nxt;
qb <= not nxt;
prv <= nxt;

end Behavioral;

