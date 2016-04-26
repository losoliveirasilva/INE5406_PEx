library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity graycode_dist is
	generic(width: integer := 4);
	port(
	inpt0: in std_logic_vector(width-1 downto 0);
	inpt1: in std_logic_vector(width-1 downto 0);
	outp: out std_logic_vector(width-1 downto 0)
);
end entity;

architecture behavior of graycode_dist is
signal bin0, bin1 : std_logic_vector(width-1 downto 0);
begin

	bin0(width-1) <= inpt0(width-1);
	bin0(width-2 downto 0) <= bin0(width-1 downto 1) xor inpt0(width-2 downto 0);

	bin1(width-1) <= inpt1(width-1);
	bin1(width-2 downto 0) <= bin1(width-1 downto 1) xor inpt1(width-2 downto 0);

	outp <= std_logic_vector(unsigned(bin1) - unsigned(bin0));

end architecture;