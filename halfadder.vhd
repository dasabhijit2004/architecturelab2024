----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:43:14 05/01/2024 
-- Design Name: 
-- Module Name:    halfadder - Behavioral 
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

entity halfadder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S : out  STD_LOGIC;
           C : out  STD_LOGIC);
end halfadder;

architecture Behavioral of halfadder is

component xorgateha 
    Port ( X1 : in  STD_LOGIC;
           X2 : in  STD_LOGIC;
           Y1 : out  STD_LOGIC);
end component;

component andgateha
    Port ( A1 : in  STD_LOGIC;
           A2 : in  STD_LOGIC;
           Y2 : out  STD_LOGIC);
end component;

begin

z1 : xorgateha port map(A,B,S);
z2 : andgateha port map(A,B,C);

end Behavioral;

