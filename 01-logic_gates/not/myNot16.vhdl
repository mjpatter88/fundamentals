library IEEE;
use IEEE.Std_Logic_1164.all;

entity myNot16 is
    port(a: in std_logic_vector(15 downto 0); s: out std_logic_vector(15 downto 0));
end myNot16;

architecture behavioral of myNot16 is

    component myNot
        port(a: in std_logic; s: out std_logic);
    end component;

begin

    generate_nots:
    for i in 0 to 15 generate
        myNot2_i: myNot port map(a => a(i), s => s(i));
    end generate generate_nots;

end behavioral;
