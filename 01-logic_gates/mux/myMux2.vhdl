library IEEE;
use IEEE.Std_Logic_1164.all;

entity myMux2 is
    port(a: in std_logic; b: in std_logic; sel: in std_logic; s: out std_logic);
end myMux2;

architecture behavioral of myMux2 is

    component myAnd2
        port(a: in std_logic; b: in std_logic; s: out std_logic);
    end component;

    component myOr2
        port(a: in std_logic; b: in std_logic; s: out std_logic);
    end component;

    component myNot
        port(a: in std_logic; s: out std_logic);
    end component;

    signal selNot: std_logic;
    signal aAndNotSelOut: std_logic;
    signal bAndSelOut: std_logic;

begin

    myNot_1: myNot port map(a => sel, s => selNot);
    myAnd2_1: myAnd2 port map(a => a, b => selNot, s => aAndNotSelOut);
    myAnd2_2: myAnd2 port map(a => b, b => sel, s => bAndSelOut);
    myOr2_1: myOr2 port map(a => aAndNotSelOut, b => bAndSelOut, s => s);

end behavioral;
