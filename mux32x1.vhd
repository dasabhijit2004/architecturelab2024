----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:15:22 05/18/2024 
-- Design Name: 
-- Module Name:    mux32x1 - Behavioral 
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

entity mux32x1 is
    Port ( S32 : in  STD_LOGIC_VECTOR (4 downto 0);
           I32 : in  STD_LOGIC_VECTOR (31 downto 0);
           Y32 : out  STD_LOGIC);
end mux32x1;

architecture Behavioral of mux32x1 is

component mux4x1 is
    Port ( S4 : in  STD_LOGIC_VECTOR (1 downto 0);
           I4 : in  STD_LOGIC_VECTOR (3 downto 0);
           Y4 : out  STD_LOGIC);
end component;

component mux2x1 is
    Port ( S2 : in  STD_LOGIC;
           I2 : in  STD_LOGIC_VECTOR (1 downto 0);
           Y2 : out  STD_LOGIC);
end component;

signal P : STD_LOGIC_VECTOR (8 downto 0);
signal Q : STD_LOGIC_VECTOR (1 downto 0);

begin

M1 : mux4x1 port map (S4 => S32(1 downto 0), I4 => I32(3 downto 0), Y4 => P(0));
M2 : mux4x1 port map (S4 => S32(1 downto 0), I4 => I32(7 downto 4), Y4 => P(1));
M3 : mux4x1 port map (S4 => S32(1 downto 0), I4 => I32(11 downto 8), Y4 => P(2));
M4 : mux4x1 port map (S4 => S32(1 downto 0), I4 => I32(15 downto 12), Y4 => P(3));
M5 : mux4x1 port map (S4 => S32(1 downto 0), I4 => I32(19 downto 16), Y4 => P(4));
M6 : mux4x1 port map (S4 => S32(1 downto 0), I4 => I32(23 downto 20), Y4 => P(5));
M7 : mux4x1 port map (S4 => S32(1 downto 0), I4 => I32(27 downto 24), Y4 => P(6));
M8 : mux4x1 port map (S4 => S32(1 downto 0), I4 => I32(31 downto 28), Y4 => P(7));

M9 : mux4x1 port map (S4 => S32(3 downto 2), I4 => P(3 downto 0), Y4 => Q(0));
M10 : mux4x1 port map (S4 => S32(3 downto 2), I4 => P(7 downto 4), Y4 => Q(1));

M11 : mux2x1 port map (S2 => S32(4), I2 => Q, Y2 => Y32);

end Behavioral;

