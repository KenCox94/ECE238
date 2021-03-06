
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity fourbitadder is
Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
       b : in STD_LOGIC_VECTOR (3 downto 0);
       cin : in STD_LOGIC;
       sum : out STD_LOGIC_VECTOR (3 downto 0);
       cout : out STD_LOGIC);
end fourbitadder;
 
architecture Behavioral of fourbitadder is
 
component fulladder
Port ( a : in STD_LOGIC;
       b : in STD_LOGIC;
       cin : in STD_LOGIC;
       sum : out STD_LOGIC;
       cout : out STD_LOGIC);
end component;
 
signal carry1,carry2,carry3: STD_LOGIC;
 
begin
 
fa0: fulladder port map( a(0), b(0), cin, sum(0), carry1);
fa1: fulladder port map( a(1), b(1), carry1, sum(1), carry2);
fa2: fulladder port map( a(2), b(2), carry2, sum(2), carry3);
fa3: fulladder port map( a(3), b(3), carry3, sum(3), Cout);
 
end Behavioral;