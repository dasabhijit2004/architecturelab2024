----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:01:35 05/18/2024 
-- Design Name: 
-- Module Name:    demux1x16 - Behavioral 
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

entity demux1x16 is
    Port ( S16 : in  STD_LOGIC_VECTOR (3 downto 0);
           I16 : in  STD_LOGIC;
           Y16 : out  STD_LOGIC_VECTOR (15 downto 0));
end demux1x16;

architecture Behavioral of demux1x16 is

component demux is
    Port ( d : in  STD_LOGIC;
           s : in  STD_LOGIC_VECTOR (1 downto 0);
           y : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

signal P16 : STD_LOGIC_VECTOR (3 downto 0);

begin

D1 : demux port map (d => I16, s => S16(3 downto 2), y => P16(3 downto 0));

D2 : demux port map (d => P16(3), s => S16(1 downto 0), y => Y16(15 downto 12));
D3 : demux port map (d => P16(2), s => S16(1 downto 0), y => Y16(11 downto 8));
D4 : demux port map (d => P16(1), s => S16(1 downto 0), y => Y16(7 downto 4));
D5 : demux port map (d => P16(0), s => S16(1 downto 0), y => Y16(3 downto 0));

end Behavioral;

