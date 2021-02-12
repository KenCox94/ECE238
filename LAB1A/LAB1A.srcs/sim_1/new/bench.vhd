architecture bench of LAB1A_tb is

    component LAB1A
      port(A,B : in std_logic;
           F_E, F_G, F_L : out std_logic);
    end component;
     
    signal A_tb, B_tb   : std_logic;
    signal F_G_tb, F_E_tb, F_L_tb    : std_logic;
   
begin

    uut:LAB1A port map(A => A_tb,
                       B => B_tb,
                       F_E => F_E_tb,
                       F_G => F_G_tb,
                       F_L => F_L_tb);
                       
stimulus: process
    begin 
        A_tb <= '0'; B_tb <= '0'; wait for 100 ns;   
        A_tb <= '0'; B_tb <= '1'; wait for 100 ns;   
        A_tb <= '1'; B_tb <= '1'; wait for 100 ns;   
        A_tb <= '1'; B_tb <= '0'; wait for 100 ns;   
        wait;
    end process;
end bench;
