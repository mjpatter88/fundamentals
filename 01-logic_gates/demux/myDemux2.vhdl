library IEEE;
use IEEE.Std_Logic_1164.all;

entity myDemux2 is
    port(a: in std_logic; sel: in std_logic; s: out std_logic; s2: out std_logic);
end myDemux2;

architecture behavioral of myDemux2 is

    component myAnd2
        port(a: in std_logic; b: in std_logic; s: out std_logic);
    end component;

    component myNot
        port(a: in std_logic; s: out std_logic);
    end component;

    signal selNot: std_logic;

begin

    myNot_1: myNot port map(a => sel, s => selNot);
    myAnd2_1: myAnd2 port map(a => a, b => selNot, s => s);
    myAnd2_2: myAnd2 port map(a => a, b => sel, s => s2);

end behavioral;
