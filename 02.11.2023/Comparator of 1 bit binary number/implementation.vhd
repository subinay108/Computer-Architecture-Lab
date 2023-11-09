library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity gate is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           G : out  STD_LOGIC;
           L : out  STD_LOGIC;
           E : out  STD_LOGIC);
end gate;

architecture Behavioral of gate is

begin
	 G <= A and (not B);
	 L <= (not A) and B;
	 E <= A xnor B;

end Behavioral;
