----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/26/2021 08:51:10 PM
-- Design Name: 
-- Module Name: Display - Behavioral
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

entity DispDigit is
    Port ( mux_out : in STD_LOGIC;
           cathode_7sd, anode_7sd : out STD_LOGIC_VECTOR (7 downto 0));
end DispDigit;

architecture Behavioral of DispDigit is

begin
  process(Mux_out)
  begin
  
    if Mux_out = '1' then
      Cathode_7SD <= "10010001";
    else
      Cathode_7Sd <= "11100011";
    end if;
  end process;
  
  Anode_7SD <= "11111110";

end Behavioral;
