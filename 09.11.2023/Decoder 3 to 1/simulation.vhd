LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY sim IS
END sim;
 
ARCHITECTURE behavior OF sim IS 
  
    COMPONENT gate
    PORT(
         i : IN  std_logic_vector(2 downto 0);
         o : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal i : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal o : std_logic_vector(7 downto 0);

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: gate PORT MAP (
          i => i,
          o => o
        );

 
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		i <= "001";
		wait for 100 ns;	
		i <= "010";
		wait for 100 ns;	
		i <= "011";
		wait for 100 ns;	
		i <= "100";
		wait for 100 ns;	
		i <= "101";
		wait for 100 ns;	
		i <= "110";
		wait for 100 ns;	
		i <= "111";
		
      wait;
   end process;

END;
