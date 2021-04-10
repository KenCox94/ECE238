----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2021 11:45:10 AM
-- Design Name: 
-- Module Name: DFlipFlop - Behavioral
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

entity DFlipFlop is
    Port ( D : in STD_LOGIC_VECTOR (7 downto 0);
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (7 downto 0));
end DFlipFlop;

architecture Behavioral of DFlipFlop is
begin 

state: process(CLK)
begin
  if rising_edge(CLK) then
    Q(0) <= D(0);
    Q(1) <= D(1);
    Q(2) <= D(2);
    Q(3) <= D(3);
    Q(4) <= D(4);
    Q(5) <= D(5);
    Q(6) <= D(6);
    Q(7) <= D(7);
  end if;
  
end process;
end Behavioral;
