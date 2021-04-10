----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2021 08:49:02 PM
-- Design Name: 
-- Module Name: DFFSingleBit - Behavioral
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

entity DFFSingleBit is
    Port ( D, CLK : in STD_LOGIC;
           Q : out STD_LOGIC);
end DFFSingleBit;

architecture Behavioral of DFFSingleBit is

begin

state: process(CLK)
  begin
    if rising_edge(CLK) then 
      Q <= D; 
    end if;
  end process;
end Behavioral;
