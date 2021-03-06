----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/18/2021 05:30:32 PM
-- Design Name: 
-- Module Name: FullAdder - Behavioral
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

entity FullAdder is
    Port ( A, B, Cin : in std_logic;
           Sum, cout : out STD_LOGIC);
end FullAdder;

architecture Behavioral of FullAdder is

component halfadd
  port(A,B : in std_logic;
       sum, cout : out std_logic);
end component;

signal sum_AB, carry1, carry2 : std_logic;

begin

HA1 : halfadd port map( a => a,
                        b => b,
                        sum => sum_AB,
                         cout => carry1);
                       
HA2 : halfadd port map( a => sum_AB,
                        b => cin,
                        sum => sum,
                        cout => carry2);
                       
cout <= carry1 or carry2;

end Behavioral;
