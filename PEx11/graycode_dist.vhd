library ieee;
use ieee.std_logic_1164.all;
entity graycode_dist is
    generic(width: integer := 4);
    port(
    inpt0: in std_logic_vector(width-1 downto 0);
    inpt1: in std_logic_vector(width-1 downto 0);
    outp: out std_logic_vector(width-1 downto 0)
);
end entity;
