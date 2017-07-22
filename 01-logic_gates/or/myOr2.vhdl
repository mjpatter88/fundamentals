library IEEE;
use IEEE.Std_Logic_1164.all;

entity myOr2 is
    port(a: in std_logic; b: in std_logic; s: out std_logic);
end myOr2;

architecture behavioral of myOr2 is
-- component declaration
    component myNot
        port(a: in std_logic; s: out std_logic);
    end component;

    component myNand2
        port(a: in std_logic; b: in std_logic; s: out std_logic);
    end component;

-- signal declaration
    signal not1_out: std_logic;
    signal not2_out: std_logic;

begin
-- component instantiation and port mappping
    myNot_1: myNot port map(a => a, s => not1_out);
    myNot_2: myNot port map(a => b, s => not2_out);
    myNand2_1: myNand2 port map(a => not1_out, b => not2_out, s => s);
end behavioral;
