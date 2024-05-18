----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:18:21 05/04/2024 
-- Design Name: 
-- Module Name:    fulladderstr - Behavioral 
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

entity fulladderstr is
    Port ( A1 : in  STD_LOGIC;
           B1 : in  STD_LOGIC;
           C1 : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           Carry : out  STD_LOGIC);
end fulladderstr;

architecture Behavioral of fulladderstr is

component halfadder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s : out  STD_LOGIC;
           c : out  STD_LOGIC);
end component;

component orgate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           y : out  STD_LOGIC);
end component;

signal s1, s2, s3 : STD_LOGIC;

begin

h1 : halfadder port map (a => A1, b => B1, s => s1, c => s2);
h2 : halfadder port map (a => s1, b => C1, s => Sum, c => s3);
o1 : orgate port map (a => s2, b => s3, y => Carry);

end Behavioral;

