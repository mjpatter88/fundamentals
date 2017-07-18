entity myDemux2 is
    port(a: in bit; sel: in bit; s: out bit; s2: out bit);
end myDemux2;

architecture behavioral of myDemux2 is

    component myAnd2
        port(a: in bit; b: in bit; s: out bit);
    end component;

    component myNot
        port(i: in bit; o: out bit);
    end component;

    signal selNot: bit;

begin

    myNot_1: myNot port map(i => sel, o => selNot);
    myAnd2_1: myAnd2 port map(a => a, b => selNot, s => s);
    myAnd2_2: myAnd2 port map(a => a, b => sel, s => s2);

end behavioral;
