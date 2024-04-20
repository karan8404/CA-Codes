----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:31:13 04/20/2024 
-- Design Name: 
-- Module Name:    incrementunit - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity incrementunit is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC);
end incrementunit;

architecture Behavioral of incrementunit is

component HA is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s : out  STD_LOGIC;
           c : out  STD_LOGIC);
end component;

signal sig : STD_LOGIC_VECTOR(2 downto 0);

begin

HA1 :HA port map (a(0),b,s(0),sig(0));
HA2 :HA port map (a(1),sig(0),s(1),sig(1));
HA3 :HA port map (a(2),sig(1),s(2),sig(2));
HA4 :HA port map (a(3),sig(2),s(3),cout);

end Behavioral;

