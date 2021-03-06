----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/18/2021 04:44:42 PM
-- Design Name: 
-- Module Name: lab2_tb - bench
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

entity lab2_tb is
end lab2_tb;

architecture bench of lab2_tb is

component halfadd
  Port ( a,b : in std_logic;
        sum, cout : out std_logic);
end component;

signal a_tb, b_tb: std_logic;
signal cout_tb, sum_tb : std_logic;

begin

  uut:halfadd port map( a => a_tb,
                     b => b_tb,
                     sum => sum_tb,
                     cout => cout_tb);
stimulus: process
 begin
   A_tb <='0'; B_tb <= '0'; wait for 100 ns;
   A_tb <='0'; B_tb <= '1'; wait for 100 ns;
   A_tb <='1'; B_tb <= '0'; wait for 100 ns;
   A_tb <='1'; B_tb <= '1'; wait for 100 ns;
   wait;
 end process;
end bench;
