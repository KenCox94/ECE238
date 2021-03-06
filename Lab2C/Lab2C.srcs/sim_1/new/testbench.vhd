LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Tb_4_Adder IS
END Tb_4_Adder;
 
ARCHITECTURE behavior OF Tb_4_Adder IS

 
COMPONENT fourbitadder
PORT(
a : IN std_logic_vector(3 downto 0);
b : IN std_logic_vector(3 downto 0);
Cin : IN std_logic;
sum : OUT std_logic_vector(3 downto 0);
Cout : OUT std_logic
);
END COMPONENT;

signal a : std_logic_vector(3 downto 0) := (others => '0');
signal b : std_logic_vector(3 downto 0) := (others => '0');
signal Cin : std_logic := '0';
 
signal sum : std_logic_vector(3 downto 0);
signal Cout : std_logic;
 
BEGIN

uut: fourbitadder PORT MAP (
A => A,
B => B,
Cin => Cin,
sum => sum,
Cout => Cout);
 
stim_proc: process
  begin
    a <= "0110"; b <= "1100"; wait for 100 ns;
    a <= "1111"; b <= "1100"; wait for 100 ns;
    a <= "0110"; b <= "0111"; wait for 100 ns;   
    a <= "0110"; b <= "1110"; wait for 100 ns;
    a <= "1111"; b <= "1111"; wait for 100 ns;
 
  wait;
 
end process;
 
END;
