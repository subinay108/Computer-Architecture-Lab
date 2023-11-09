LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY sim IS
END sim;
 
ARCHITECTURE behavior OF sim IS 
 
    COMPONENT gate
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         G : OUT  std_logic;
         L : OUT  std_logic;
         E : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal G : std_logic;
   signal L : std_logic;
   signal E : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: gate PORT MAP (
          A => A,
          B => B,
          G => G,
          L => L,
          E => E
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		A <= '0'; B <= '1';
		wait for 100 ns;
		A <= '1'; B <= '0';
		wait for 100 ns;
		A <= '1'; B <= '1';
		
      wait;
   end process;

END;
