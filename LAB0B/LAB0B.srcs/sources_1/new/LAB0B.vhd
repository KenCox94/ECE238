----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/01/2021 07:02:18 AM
-- Design Name: 
-- Module Name: LAB0B - Behavioral
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

entity LAB0B is
    Port ( A, B : in STD_LOGIC;
           F_NAND : out STD_LOGIC;
           F_NOR : out STD_LOGIC;
           F_XOR : inout STD_LOGIC;
           F_XNOR : out STD_LOGIC;
           F_BUFF : out STD_LOGIC);
end LAB0B;

architecture Behavioral of LAB0B is

begin

  F_NAND <= not (A AND B);
  F_NOR <= not (A OR B); 
  F_XOR <= (not A AND B) OR (A AND not B);
  F_XNOR <= not F_XOR ;
  F_BUFF <= A, B;
  
end Behavioral;
