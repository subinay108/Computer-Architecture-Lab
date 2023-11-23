LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY sim IS
END sim;
 
ARCHITECTURE behavior OF sim IS 
  
    COMPONENT gate
    PORT(
         I : IN  std_logic_vector(9 downto 0);
         O : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I : std_logic_vector(9 downto 0) := (others => '0');

 	--Outputs
   signal O : std_logic_vector(3 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: gate PORT MAP (
          I => I,
          O => O
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		i <= "0000000001";
		wait for 100 ns;	
		i <= "0000000010";
		wait for 100 ns;	
		i <= "0000000100";
		wait for 100 ns;	
		i <= "0000001000";
		wait for 100 ns;	
		i <= "0000010000";
		wait for 100 ns;	
		i <= "0000100000";
		wait for 100 ns;	
		i <= "0001000000";
		wait for 100 ns;	
		i <= "0010000000";
		wait for 100 ns;	
		i <= "0100000000";
		wait for 100 ns;	
		i <= "1000000000";
      wait;
   end process;

END;
