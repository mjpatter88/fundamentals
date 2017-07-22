library IEEE;
use IEEE.Std_Logic_1164.all;

entity myAnd2 is
    port(a: in std_logic; b: in std_logic; s: out std_logic);
end myAnd2;

architecture behavioral of myAnd2 is

    component myNand2
        port(a: in std_logic; b: in std_logic; s: out std_logic);
    end component;

    component myNot
        port(a: in std_logic; s: out std_logic);
    end component;

    signal nandOut: std_logic;

begin

    myNand2_1: myNand2 port map(a => a, b => b, s => nandOut);
    myNot_1: myNot port map(a => nandOut, s => s);

end behavioral;
