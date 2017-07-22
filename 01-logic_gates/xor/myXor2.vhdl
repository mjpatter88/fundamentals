library IEEE;
use IEEE.Std_Logic_1164.all;

entity myXor2 is
    port(a: in std_logic; b: in std_logic; s: out std_logic);
end myXor2;

architecture behavorial of myXor2 is

    -- declare components
    component myNand2 is
        port(a: in std_logic; b: in std_logic; s: out std_logic);
    end component;

    component myOr2 is
        port(a: in std_logic; b: in std_logic; s: out std_logic);
    end component;

    component myAnd2 is
        port(a: in std_logic; b: in std_logic; s: out std_logic);
    end component;

    -- signals
    signal a_or_b_out: std_logic;
    signal a_nand_b_out: std_logic;

begin

-- initialize components and port map
    myOr2_1: myOr2 port map(a => a, b => b, s => a_or_b_out);

    myNand2_1: myNand2 port map(a => a, b => b, s => a_nand_b_out);

    myAnd2_1: myAnd2 port map(a => a_or_b_out, b => a_nand_b_out, s => s);

end behavorial;
