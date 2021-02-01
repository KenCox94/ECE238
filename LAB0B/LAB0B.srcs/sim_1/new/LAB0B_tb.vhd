----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/01/2021 07:19:59 AM
-- Design Name: 
-- Module Name: LAB0B_tb - Behavioral
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

entity LAB0B_tb is
--Port ( );
end LAB0B_tb;

architecture bench of LAB0B_tb is

    component LAB0B
      port(A,B : in std_logic;
           F_XOR : inout std_logic;
           F_NAND, F_NOR, F_XNOR, F_BUFF : out std_logic);
    end component;
     
    signal A_tb, B_tb   : std_logic;
    signal F_NAND_tb, F_NOR_tb, F_XOR_tb    : std_logic;
    signal F_XNOR_tb, F_BUFF_tb     : std_logic;
   
begin

    uut:LAB0B port map(A => A_tb,
                       B => B_tb,
                       F_NAND => F_NAND_tb,
                       F_NOR => F_NOR_tb,
                       F_XOR => F_XOR_tb,
                       F_XNOR => F_XNOR_tb,
                       F_BUFF => F_BUFF_tb);
                       
stimulus: process
    begin 
        A_tb <= '0'; B_tb <= '0'; wait for 100 ns;   
        A_tb <= '0'; B_tb <= '1'; wait for 100 ns;   
        A_tb <= '1'; B_tb <= '1'; wait for 100 ns;   
        A_tb <= '1'; B_tb <= '0'; wait for 100 ns;   
        wait;
    end process;
end bench;
