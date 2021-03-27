----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/26/2021 07:49:24 PM
-- Design Name: 
-- Module Name: Multiplexer - Behavioral
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

entity Multiplexer_8_1 is
    Port ( mux_in : in STD_LOGIC_VECTOR (7 downto 0);
           Selector : in STD_LOGIC_VECTOR (2 downto 0);
           mux_out : out STD_LOGIC);
end Multiplexer_8_1;

architecture Behavioral of Multiplexer_8_1 is

begin
  
    mux_out <= mux_in(0) when Selector = "000" else
               mux_in(1) when Selector = "001" else
               mux_in(2) when Selector = "010" else
               mux_in(3) when Selector = "011" else
               mux_in(4) when Selector = "100" else
               mux_in(5) when Selector = "101" else
               mux_in(6) when Selector = "110" else
               mux_in(7) when Selector = "111";

end Behavioral;
