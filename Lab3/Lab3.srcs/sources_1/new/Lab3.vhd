----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/26/2021 09:55:20 PM
-- Design Name: 
-- Module Name: Lab3 - Behavioral
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

entity Lab3 is
    Port ( A, B : in STD_LOGIC;
           Selector : in STD_LOGIC_VECTOR (2 downto 0);
           Cathode_7SD, Anode_7SD : out STD_LOGIC_VECTOR (7 downto 0));
end Lab3;

architecture Behavioral of Lab3 is

component Gates is
    Port ( A, B : in STD_LOGIC;
           G_Out : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component Multiplexer_8_1 is
    Port ( mux_in : in STD_LOGIC_VECTOR (7 downto 0);
           Selector : in STD_LOGIC_VECTOR (2 downto 0);
           mux_out : out STD_LOGIC);
end component;


component DispDigit is
    Port ( mux_out : in STD_LOGIC;
           cathode_7sd, anode_7sd : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal MUX8to1: std_logic;
signal G_Out : std_logic_vector(7 downto 0);

begin
 

  Gates_1: Gates port map( A, B, G_Out);
 
  Multi_8_1: Multiplexer_8_1 port map(G_Out, Selector, Mux8to1);
  
  Display_7_Seg: DispDigit port map(Mux8to1, Cathode_7SD, Anode_7SD );
         

end Behavioral;
