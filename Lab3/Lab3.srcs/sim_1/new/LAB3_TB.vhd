----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/26/2021 10:21:26 PM
-- Design Name: 
-- Module Name: LAB3_TB - Behavioral
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

entity LAB3_TB is
   -- Port()
end LAB3_TB;

architecture Bench of LAB3_TB is

component Lab3 is
    Port ( A, B : in STD_LOGIC;
           Selector : in STD_LOGIC_VECTOR (2 downto 0);
           Cathode_7SD, Anode_7SD : out STD_LOGIC_VECTOR (7 downto 0));
end component;



signal A_tb :  STD_LOGIC;
signal  B_tb :  STD_LOGIC;
signal Selector_tb : STD_LOGIC_VECTOR (2 downto 0);
signal Cathode_7SD_tb: STD_LOGIC_VECTOR (7 downto 0);
signal Anode_7SD_tb : STD_LOGIC_VECTOR (7 downto 0);

begin 

  uut:Lab3 port map(Selector=> Selector_tb,
                    A => A_tb,
                    B => B_tb,
                    Cathode_7SD => Cathode_7SD_tb,
                    Anode_7SD  => Anode_7SD_tb);
stimulus: process

  begin 
    Selector_tb <= "000"; A_tb <= '0'; B_tb <= '0'; wait for 100 ns;
    Selector_tb <= "001"; A_tb <= '0'; B_tb <= '1'; wait for 100 ns;
    Selector_tb <= "010"; A_tb <= '1'; B_tb <= '0'; wait for 100 ns;
    Selector_tb <= "011"; A_tb <= '1'; B_tb <= '1'; wait for 100 ns;
    Selector_tb <= "100"; A_tb <= '1'; B_tb <= '0'; wait for 100 ns;
    Selector_tb <= "101"; A_tb <= '0'; B_tb <= '1'; wait for 100 ns;
    Selector_tb <= "110"; A_tb <= '1'; B_tb <= '0'; wait for 100 ns;
    Selector_tb <= "111"; A_tb <= '1'; B_tb <= '1'; wait for 100 ns;
    wait;
  end process;
end Bench;
