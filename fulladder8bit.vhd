----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:10:25 05/16/2024 
-- Design Name: 
-- Module Name:    fulladder8bit - Behavioral 
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

entity fulladder8bit is
    Port ( A8 : in  STD_LOGIC_VECTOR (7 downto 0);
           B8 : in  STD_LOGIC_VECTOR (7 downto 0);
           Cin8 : in  STD_LOGIC;
           S8 : out  STD_LOGIC_VECTOR (7 downto 0);
           Cout8 : out  STD_LOGIC);
end fulladder8bit;

architecture Behavioral of fulladder8bit is

Signal Ca : STD_LOGIC_VECTOR(6 downto 0);

component fulladder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           s : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component;

begin

F0 : fulladder port map (A8(0), B8(0), Cin8, S8(0), Ca(0));
F1 : fulladder port map (A8(1), B8(1), Ca(0), S8(1), Ca(1));
F2 : fulladder port map (A8(2), B8(2), Ca(1), S8(2), Ca(2));
F3 : fulladder port map (A8(3), B8(3), Ca(2), S8(3), Ca(3));
F4 : fulladder port map (A8(4), B8(4), Ca(3), S8(4), Ca(4));
F5 : fulladder port map (A8(5), B8(5), Ca(4), S8(5), Ca(5));
F6 : fulladder port map (A8(6), B8(6), Ca(5), S8(6), Ca(6));
F7 : fulladder port map (A8(7), B8(7), Ca(6), S8(7), Cout8); 

end Behavioral;


