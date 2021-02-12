----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/11/2021 04:09:15 PM
-- Design Name: 
-- Module Name: LAB01A - Behavioral
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

entity LAB01A is
    Port ( A,B : in STD_LOGIC;
           F_E, F_G, F_L : out STD_LOGIC);
end LAB01A;

architecture Behavioral of LAB01A is

begin
    F_E <= (not(A) and not(B)) or (A and B);
    F_G  <= not(A) and B;
    F_L <= (A and not(B));
end Behavioral;
