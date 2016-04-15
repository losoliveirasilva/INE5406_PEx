library IEEE;
use IEEE.Std_Logic_1164.all;
use IEEE.numeric_std.all;

entity deslocador_cont is
	generic(width: integer := 8);
	port(
		inpt: in unsigned(width-1 downto 0);
		op: in unsigned(1 downto 0);
		outp: out unsigned(width-1 downto 0)
	);
end entity;

architecture ToDo of deslocador_cont is
begin
	process(op, inpt)
		begin
			case op is
				when "00" =>
					outp <= inpt sll 0;
				when "01" =>
					outp <= inpt sll 1;
				when "10" =>
					outp <= inpt sll 2;
				when "11" =>
					outp <= inpt sll 3;
				when others =>
			end case;
		end process;
end;