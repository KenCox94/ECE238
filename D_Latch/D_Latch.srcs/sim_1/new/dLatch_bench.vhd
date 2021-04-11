----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2021 05:21:41 AM
-- Design Name: 
-- Module Name: dLatch_bench - Bench
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

entity dLatch_bench is
--  Port ( );
end dLatch_bench;

architecture Bench of dLatch_bench is

component DLatch
  port(D, CLK: in std_logic;
       Q: out std_logic);
end component;

signal D_tb, clk_tb, Q_tb   : std_logic;
constant clk_100MHZ_Period : time := 10ns;

begin
  uut: Dlatch port map(D_tb, clk_tb, Q_tb);
                       
clk_process: process
  begin
    clk_tb <= '0'; wait for clk_100MHZ_Period/2;
    clk_tb <= '1'; wait for clk_100MHZ_Period/2;
end process;

stimulus: process
  begin
    D_tb <= '1'; wait for 7 ns;
    D_tb <= '0'; wait for 7 ns;
end process;
end Bench;