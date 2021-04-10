----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2021 04:40:02 AM
-- Design Name: 
-- Module Name: DLatch - Behavioral
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

entity DLatch is
    Port ( D , CLK : in STD_LOGIC;
           Q : out STD_LOGIC);
end DLatch;

architecture Behavioral of DLatch is

begin 

  state: process(D, CLK)

  begin
   if CLK = '1' then 
     Q <= D;
   
   end if;
  end process;

end Behavioral;
