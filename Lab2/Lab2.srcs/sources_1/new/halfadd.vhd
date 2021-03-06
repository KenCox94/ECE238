----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/18/2021 04:33:59 PM
-- Design Name: 
-- Module Name: halfadd - Behavioral
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


entity halfadd is
    Port ( a,b : in STD_LOGIC;
           sum,cout : out STD_LOGIC);
end halfadd;

architecture Behavioral of halfadd is

begin

sum <= (A and not(B)) or (not(A) and B);
cout <= A and B;


end Behavioral;
