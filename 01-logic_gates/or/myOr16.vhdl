library IEEE;
use IEEE.Std_Logic_1164.all;

entity myOr16 is
    port(a: in std_logic_vector(15 downto 0); b: in std_logic_vector(15 downto 0); s: out std_logic_vector(15 downto 0));
end myOr16;

architecture behavioral of myOr16 is

    component myOr2
        port(a: in std_logic; b: in std_logic; s: out std_logic);
    end component;

begin

    generate_ands:
    for i in 0 to 15 generate
        myOr2_i: myOr2 port map(a => a(i), b => b(i), s => s(i));
    end generate generate_ands;

end behavioral;
