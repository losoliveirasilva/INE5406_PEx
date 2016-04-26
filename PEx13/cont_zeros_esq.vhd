library ieee;
use ieee.std_logic_1164.all;

entity cont_zeros_esq is
    port(
        inpt: in std_logic_vector(3 downto 0);
        outp: out std_logic_vector(2 downto 0)
    );
end entity;

architecture behavior of cont_zeros_esq is
begin

    outp <= "000" when inpt >= "1000" else
            "001" when inpt >= "0100" and inpt < "1000" else
            "010" when inpt >= "0010" and inpt < "0100" else
            "011" when inpt >= "0001" and inpt < "0010" else
            "100";

end architecture;