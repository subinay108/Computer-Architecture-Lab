LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY sim IS
END sim;
 
ARCHITECTURE behavior OF sim IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT gate
    PORT(
         a : IN  std_logic_vector(1 downto 0);
         b : IN  std_logic_vector(1 downto 0);
         g : OUT  std_logic;
         l : OUT  std_logic;
         e : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(1 downto 0) := (others => '0');
   signal b : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal g : std_logic;
   signal l : std_logic;
   signal e : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: gate PORT MAP (
          a => a,
          b => b,
          g => g,
          l => l,
          e => e
        );

   stim_proc: process
   begin		
      wait for 10 ns;
		a <= "00"; b <= "00";
		wait for 10 ns;	
		a <= "00"; b <= "01";
		wait for 10 ns;	
		a <= "00"; b <= "10";
		wait for 10 ns;	
		a <= "00"; b <= "11";
		
		wait for 10 ns;
		a <= "01"; b <= "00";
		wait for 10 ns;	
		a <= "01"; b <= "01";
		wait for 10 ns;	
		a <= "01"; b <= "10";
		wait for 10 ns;	
		a <= "01"; b <= "11";
		
		wait for 10 ns;
		a <= "10"; b <= "00";
		wait for 10 ns;	
		a <= "10"; b <= "01";
		wait for 10 ns;	
		a <= "10"; b <= "10";
		wait for 10 ns;	
		a <= "10"; b <= "11";
		
		wait for 10 ns;
		a <= "11"; b <= "00";
		wait for 10 ns;	
		a <= "11"; b <= "01";
		wait for 10 ns;	
		a <= "11"; b <= "10";
		wait for 10 ns;	
		a <= "11"; b <= "11";
		
		
      wait;
   end process;

END;
