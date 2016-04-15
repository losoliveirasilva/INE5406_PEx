library IEEE;
use IEEE.Std_Logic_1164.all;
use IEEE.numeric_std.all;

entity rotate is
	generic (width: integer:= 8);
	port (
		inpt: in std_logic_vector(width-1 downto 0);
		ctrl: in std_logic;
		outp: out std_logic_vector(width-1 downto 0)
	);
end;

architecture ToDo of rotate is
begin
	process(ctrl, inpt)
	begin
		if ctrl = '0' then
			outp <= std_logic_vector(unsigned(inpt) rol 1);
		else
			outp <= std_logic_vector(unsigned(inpt) ror 1);
		end if;
	end process;
end architecture;