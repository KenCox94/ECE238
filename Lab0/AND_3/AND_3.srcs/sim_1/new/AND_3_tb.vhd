----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/28/2021 04:00:27 PM
-- Design Name: 
-- Module Name: AND_3_tb - bench
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

entity AND_3_tb is
--  Port ( );
end AND_3_tb;

architecture bench of AND_3_tb is

component AND_3
  Port(A,B,C :in std_logic;
       F      :out std_logic);
end component;
 
 signal  A_tb, B_tb, C_tb :std_logic;
 signal  F_tb :std_logic;
 
 begin
 
 
  uut:AND_3 port map(A => A_tb,
                     B => B_tb,
                     C => C_tb,
                     F => F_tb);
                      
  stimulus: process
  begin
    A_tb <= '0'; B_tb <= '0'; C_tb <= '1'; wait for 100 ns;
    A_tb <= '0'; B_tb <= '1'; C_tb <= '0'; wait for 100 ns;
    A_tb <= '0'; B_tb <= '1'; C_tb <= '1'; wait for 100 ns;
    A_tb <= '1'; B_tb <= '0'; C_tb <= '0'; wait for 100 ns;
    A_tb <= '1'; B_tb <= '0'; C_tb <= '1'; wait for 100 ns;
    A_tb <= '1'; B_tb <= '1'; C_tb <= '0'; wait for 100 ns;
    A_tb <= '1'; B_tb <= '1'; C_tb <= '1'; wait for 100 ns;
    A_tb <= '0'; B_tb <= '0'; C_tb <= '0'; wait for 100 ns;
    wait;
  end process; 
end bench;
