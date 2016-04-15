library IEEE;
use IEEE.Std_Logic_1164.all;
use IEEE.numeric_std.all;

entity aritmetico is
	generic (width: integer:= 8);
	port (
		inpt0: in signed(width-1 downto 0);
		inpt1: in signed(width-1 downto 0);
		ctrl: in std_logic_vector(1 downto 0);
		outp: out signed(width-1 downto 0)
	);
end;

architecture arch of aritmetico is
begin
	process(ctrl, inpt0, inpt1)
		begin
			case ctrl is
				when "00" =>
					outp <= inpt0 + inpt1;
				when "01" =>
					outp <= inpt0 - inpt1;
				when "10" =>
					outp <= inpt0 + 1;
				when "11" =>
					outp <= inpt0 - 1;
				when others =>
			end case;
		end process;
end;