library ieee;
use ieee.std_logic_1164.all;

entity switch2x2 is
	generic(width:integer:=8);
	port(
		inpt0: in std_logic_vector(width-1 downto 0);
		inpt1: in std_logic_vector(width-1 downto 0);
		ctrl: in std_logic_vector(1 downto 0);
		outp0: out std_logic_vector(width-1 downto 0);
		outp1: out std_logic_vector(width-1 downto 0)
	);
end switch2x2;

architecture ToDo of switch2x2 is
begin
	process(ctrl, inpt0, inpt1)
	begin
		case ctrl is
			when "00" =>
				outp0 <= inpt0;
				outp1 <= inpt1;
			when "01" =>
				outp0 <= inpt1;
				outp1 <= inpt0;
			when "10" =>
				outp0 <= inpt0;
				outp1 <= inpt0;
			when "11" =>
				outp0 <= inpt1;
				outp1 <= inpt1;
			when others =>
		end case;
	end process;
end ToDo;