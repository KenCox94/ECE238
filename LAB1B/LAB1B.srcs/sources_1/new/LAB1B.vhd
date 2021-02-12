----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/11/2021 05:00:23 PM
-- Design Name: 
-- Module Name: LAB1B - Comparator
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LAB1B is
    Port ( A, B : in STD_LOGIC;
           cathode_7sd : out STD_LOGIC_VECTOR (7 downto 0);
           anode_7sd : out STD_LOGIC_VECTOR (7 downto 0));
end LAB1B;

architecture Comparator of LAB1B is
signal F_E, F_L, F_G: std_logic;
begin 
    F_E <= (not(A) and not(B)) or (A and B);
    F_L <= (A) and not(B);
    F_G <= not(A) and B;
process(F_E, F_L, F_G)    
  Begin    
    if F_E = '1' then
        cathode_7sd <= "11100001";
    elsif F_L = '1' then
        cathode_7sd <= "11100011";
    elsif F_G = '1' then
        cathode_7sd <= "11000001";
    else
        cathode_7sd <= "00000010";
  end if;
end process;
Anode_7sd <= "11111110";
end Comparator;
