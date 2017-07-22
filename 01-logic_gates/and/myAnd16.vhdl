library IEEE;
use IEEE.Std_Logic_1164.all;

entity myAnd16 is
    port(a: in std_logic_vector(15 downto 0); b: in std_logic_vector(15 downto 0); s: out std_logic_vector(15 downto 0));
end myAnd16;

architecture behavioral of myAnd16 is

    component myAnd2
        port(a: in std_logic; b: in std_logic; s: out std_logic);
    end component;

begin

    generate_ands:
    for i in 0 to 15 generate
        myAnd2_i: myAnd2 port map(a => a(i), b => b(i), s => s(i));
    end generate generate_ands;

end behavioral;
