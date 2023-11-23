library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity gate is
    Port ( I : in  STD_LOGIC_VECTOR (9 downto 0);
           O : out  STD_LOGIC_VECTOR (3 downto 0));
end gate;

architecture Behavioral of gate is

begin
	 o(0) <= i(1) or i(3) or i(5) or i(7) or i(9);
	 o(1) <= i(2) or i(3) or i(6) or i(7);
	 o(2) <= i(4) or i(5) or i(6) or i(7);
	 o(3) <= i(8) or i(9);

end Behavioral;

