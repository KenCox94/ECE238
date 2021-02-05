----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/04/2021 03:46:48 PM
-- Design Name: 
-- Module Name: Lab0C - Behavioral
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

entity Lab0C is
    Port ( A, B : in std_logic;
           F_NOT, F_AND,F_OR : out STD_LOGIC);
end Lab0C;

architecture Behavioral of Lab0C is

begin


  F_NOT <= A nand A;
  F_AND <= (A nand B) nand (A nand B); 
  F_OR <=  (A nand A) nand (B NAND B);
  
end Behavioral;
