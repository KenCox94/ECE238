----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/26/2021 07:14:36 PM
-- Design Name: 
-- Module Name: gates_tb - bench
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
entity gates_tb is
end gates_tb;

architecture bench of gates_tb is

component Gates
  Port (a, b: in std_logic;
        g_out: out std_logic_vector(7 downto 0));
end component;

signal a_tb, b_tb :std_logic;
signal g_out_tb : std_logic_vector(7 downto 0);

begin
  uut:Gates port map ( A => a_tb,
                       B => b_tb,
                       G_out => g_out_tb);
                       
stimulus:process 
  begin 
    a_tb <= '0'; b_tb <= '0'; wait for 100 ns;
    a_tb <= '0'; b_tb <= '1'; wait for 100 ns;
    a_tb <= '1'; b_tb <= '0'; wait for 100 ns;
    a_tb <= '1'; b_tb <= '1'; wait for 100 ns;
    wait;
  end process;
end bench;
