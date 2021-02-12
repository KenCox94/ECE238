----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/11/2021 05:18:37 PM
-- Design Name: 
-- Module Name: bench - bench
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
architecture bench of LAB1B is

component LAB1B is 
    Port ( a, b : in STD_LOGIC;
           cathode_7sd, anode_7sd : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal   a_tb, b_tb  : std_logic;
signal   cathode_tb, anode_tb : std_logic_vector  (7 downto 0);


begin 
   uut:Lab1B port map(A => a_tb,
                       B => b_tb,
                       cathode_7sd => cathode_tb,
                       anode_7sd => anode_tb);
stimulus: process
    begin
      a_tb <= '0'; b_tb <= '0'; wait for 100 ns;
      a_tb <= '0'; b_tb <= '1'; wait for 100 ns;
      a_tb <= '1'; b_tb <= '0'; wait for 100 ns;
      a_tb <= '1'; b_tb <= '1'; wait for 100 ns;
      wait;
    end process;
end bench;
