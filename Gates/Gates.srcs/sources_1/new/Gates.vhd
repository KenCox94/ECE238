----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/26/2021 07:13:18 PM
-- Design Name: 
-- Module Name: Gates - Behavioral
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

entity Gates is
    Port ( A, B : in STD_LOGIC;
           G_Out : out STD_LOGIC_VECTOR (7 downto 0));
end Gates;

architecture Behavioral of Gates is

begin
   g_out(0) <= A; 
   g_out(1) <= not B;
   g_out(2) <= A and B;
   g_out(3) <= A or B;
   g_out(4) <= A nand B;
   g_out(5) <= A nor B;
   g_out(6) <= A xor B;
   g_out(7) <= A xnor B;

 
end Behavioral;
