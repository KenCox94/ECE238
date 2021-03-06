----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/18/2021 05:59:19 PM
-- Design Name: 
-- Module Name: bench - testbench
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

entity bench is
--  Port ( );
end bench;

architecture testbench of bench is

component fulladder
   port ( a, b, cin : in std_logic;
         sum, cout : out std_logic);
end component;

signal a_tb, b_tb, cin_tb : std_logic;
signal sum_tb, cout_tb : std_logic;

begin
  
  uut:fulladder port map( a => a_tb,
                          b => b_tb,
                          cin => cin_tb,
                          sum => sum_tb,
                          cout => cout_tb);
                          
stimulus: process

  begin
    A_tb <='0'; B_tb <= '0'; Cin_tb <= '0'; wait for 100 ns;
    A_tb <='0'; B_tb <= '0'; Cin_tb <= '1'; wait for 100 ns;
    A_tb <='0'; B_tb <= '1'; Cin_tb <= '0'; wait for 100 ns;
    A_tb <='0'; B_tb <= '1'; Cin_tb <= '1'; wait for 100 ns;
    A_tb <='1'; B_tb <= '0'; Cin_tb <= '0'; wait for 100 ns;
    A_tb <='1'; B_tb <= '0'; Cin_tb <= '1'; wait for 100 ns;
    A_tb <='1'; B_tb <= '1'; Cin_tb <= '0'; wait for 100 ns;
    A_tb <='1'; B_tb <= '1'; Cin_tb <= '1'; wait for 100 ns;
    wait;
  end process;
end testbench;
