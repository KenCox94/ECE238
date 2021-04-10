----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2021 08:31:34 PM
-- Design Name: 
-- Module Name: DFlipFlop_TB - Bench
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

entity DFlipFlop_TB is
--  Port ( );
end DFlipFlop_TB;

architecture Bench of DFlipFlop_TB is
  component DFFSingleBit
    port( D, CLK : in std_logic;
          Q: out std_logic);
  end component;
signal D_tb, CLK_tb, Q_tb : std_logic;
constant CLK_100MHZ_Period : time := 10ns;
        
begin
  uut: DFFSingleBit port map( D_tb, CLK_tb, Q_tb);
  
CLK_process : process
 begin
   CLK_tb <= '0'; wait for CLK_100MHZ_Period/2;
   CLK_tb <= '1'; wait for CLK_100MHZ_Period/2;
  end process;
  
stimulus: process
 begin
   D_tb <= '1'; wait for 7 ns;
   D_tb <= '0'; wait for 7 ns;
 end process;
 
end Bench;
