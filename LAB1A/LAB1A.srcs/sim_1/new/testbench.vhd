architecture bench of LAB01A_tb is

    component LAB01A
      port(A_tb,B_tb : in std_logic;
           F_E_tb, F_G_tb, F_L_tb : out std_logic);
    end component;
     
    signal A_tb, B_tb   : std_logic;
    signal F_G_tb, F_E_tb, F_L_tb    : std_logic;
   
begin

    uut:LAB01A port map(A => A_tb,
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