library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity gate is
    Port ( a : in  STD_LOGIC_VECTOR (1 downto 0);
           b : in  STD_LOGIC_VECTOR (1 downto 0);
           g : out  STD_LOGIC;
           l : out  STD_LOGIC;
           e : out  STD_LOGIC);
end gate;

architecture Behavioral of gate is

begin
	 g <= (a(1) and (not b(1))) or ((a(1) xnor b(1)) and(a(0) and not(b(0))));
	 l <= (not(a(1)) and b(1)) or ((a(1) xnor b(1)) and (not(a(0)) and b(0)));
	 e <= (a(1) xnor b(1)) and (a(0) xnor b(0));
end Behavioral;
