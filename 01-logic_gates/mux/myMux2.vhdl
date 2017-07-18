entity myMux2 is
    port(a: in bit; b: in bit; sel: in bit; s: out bit);
end myMux2;

architecture behavioral of myMux2 is

    component myAnd2
        port(a: in bit; b: in bit; s: out bit);
    end component;

    component myOr2
        port(a: in bit; b: in bit; o: out bit);
    end component;

    component myNot
        port(i: in bit; o: out bit);
    end component;

    signal selNot: bit;
    signal aAndNotSelOut: bit;
    signal bAndSelOut: bit;

begin

    myNot_1: myNot port map(i => sel, o => selNot);
    myAnd2_1: myAnd2 port map(a => a, b => selNot, s => aAndNotSelOut);
    myAnd2_2: myAnd2 port map(a => b, b => sel, s => bAndSelOut);
    myOr2_1: myOr2 port map(a => aAndNotSelOut, b => bAndSelOut, o => s);

end behavioral;
