----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2021 04:31:15 PM
-- Design Name: 
-- Module Name: D_FlipFlop_TB - bench
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
use  IEEE.numeric_std.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all
entity D_FlipFlop_TB is
   -- Port( )
end D_FlipFlop_TB;

architecture bench of D_FlipFlop_TB is
  component DFlipFlop is
      Port ( D : in STD_LOGIC_VECTOR ( 7 downto 0);
             CLK : in STD_LOGIC;
             Q : out STD_LOGIC_VECTOR (7 downto 0));
  end component;
  
signal D_tb, Q_tb : std_logic_vector  (7 downto 0);
signal CLK_tb : std_logic;
constant clk_100MHZ_PERIOD : time := 10ns;

begin
  uut: DFlipFlop port map( D_tb, CLK_tb, Q_tb);
  
CLK_process : process
  begin
    clk_tb <= '0'; wait for clk_100MHZ_PERIOD / 2;
    clk_tb <= '1'; wait for clk_100MHZ_PERIOD / 2;
  end process;
  
stimulus: process 
  begin
    D_tb <= "00000000";
    for i in 0 to 511 loop
      wait for 3 ns; 
      D_tb <= std_logic_vector(unsigned(D_tb)+1); 
      wait for 3 ns;
    end loop;
end process; 
end bench;
