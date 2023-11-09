library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity gate is
    Port ( i : in  STD_LOGIC_VECTOR (2 downto 0);
           o : out  STD_LOGIC_VECTOR (7 downto 0));
end gate;

architecture Behavioral of gate is

begin
	 Decoder:process(i)
	 begin	 
		 if i = "000" then o <= "00000001";
		 elsif i = "001" then o <= "00000010";
		 elsif i = "010" then o <= "00000100";
		 elsif i = "011" then o <= "00001000";
		 elsif i = "100" then o <= "00010000";
		 elsif i = "101" then o <= "00100000";
		 elsif i = "110" then o <= "01000000";
		 else o <= "10000000";
		 end if;
	 end process;

end Behavioral;

