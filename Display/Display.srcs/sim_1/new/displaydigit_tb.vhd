----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/26/2021 09:02:32 PM
-- Design Name: 
-- Module Name: Display_tb - bencht
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

entity Display_tb is
--  Port ( );
end Display_tb;

architecture bench of Display_tb is

component DispDigit is
    Port ( mux_out : in STD_LOGIC;
           cathode_7sd, anode_7sd : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal mux_out_tb : std_logic;
signal cathode_7sd_tb, Anode_7sd_tb : std_logic_vector(7 downto 0);

begin
  
  uut: DispDigit port map( mux_out => mux_out_tb,
                         cathode_7sd => cathode_7sd_tb,
                         anode_7sd => anode_7sd_tb);

stimulus: process
  begin
    mux_out_tb <= '0'; wait for 100 ns;
    mux_out_tb <= '1'; wait for 100 ns;
    wait;
  end process;
end bench;
