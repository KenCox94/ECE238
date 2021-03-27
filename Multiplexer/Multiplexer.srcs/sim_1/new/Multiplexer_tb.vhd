----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/26/2021 08:03:17 PM
-- Design Name: 
-- Module Name: Multiplexer_tb - bench
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

entity Multiplexer_tb is
--  Port ( );
end Multiplexer_tb;

architecture bench of Multiplexer_tb is

component Multiplexer_8_1
  Port (Selector: in std_logic_vector(2 downto 0);
        mux_in:in std_logic_vector(7 downto 0);
        mux_out: out std_logic);
end component;

signal selector_tb : std_logic_vector(2 downto 0);
signal g_out_tb : std_logic_vector(7 downto 0);
signal mux_out_tb : std_logic;

begin
  
  uut: Multiplexer_8_1 port map(Selector => selector_tb,
                           mux_in => g_out_tb,
                           mux_out => mux_out_tb);
  stimulus: process
    begin 
      Selector_tb <= "000"; g_out_tb <= "00000001"; wait for 100 ns;
      Selector_tb <= "001"; g_out_tb <= "00000010"; wait for 100 ns;
      Selector_tb <= "010"; g_out_tb <= "00000100"; wait for 100 ns;
      Selector_tb <= "011"; g_out_tb <= "00001000"; wait for 100 ns;
      Selector_tb <= "100"; g_out_tb <= "00010000"; wait for 100 ns;
      Selector_tb <= "101"; g_out_tb <= "00100000"; wait for 100 ns;
      Selector_tb <= "110"; g_out_tb <= "01000000"; wait for 100 ns;
      Selector_tb <= "111"; g_out_tb <= "10000000"; wait for 100 ns;
      wait;
  end process;
end bench;
