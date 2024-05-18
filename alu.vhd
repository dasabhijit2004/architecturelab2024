----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:42:42 05/18/2024 
-- Design Name: 
-- Module Name:    alu - Behavioral 
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

entity alu is
    Port ( S1 : in STD_LOGIC_VECTOR (1 downto 0);
			  A1 : in  STD_LOGIC;
           B1 : in  STD_LOGIC;
           Y1 : out  STD_LOGIC);
end alu;

architecture Behavioral of alu is

component muxbehavioral is
    Port ( s : in  STD_LOGIC_VECTOR (1 downto 0);
           i : in  STD_LOGIC_VECTOR (3 downto 0);
           y : out  STD_LOGIC);
end component;

component andgate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           y : out  STD_LOGIC);
end component;

component orgate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           y : out  STD_LOGIC);
end component;

component xorgate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           y : out  STD_LOGIC);
end component;

component notgate is
    Port ( a : in  STD_LOGIC;
           y : out  STD_LOGIC);
end component;

signal P : STD_LOGIC_VECTOR(3 downto 0);

begin

A2 : andgate port map (a => A1, b => B1, y => P(0));
O1 : orgate port map (a => A1, b => B1, y => P(1));
X1 : xorgate port map (a => A1, b => B1, y => P(2));
N1 : notgate port map (a => A1, y => P(3));
M1 : muxbehavioral port map (s => S1(1 downto 0), i => P(3 downto 0), y => Y1);

end Behavioral;

