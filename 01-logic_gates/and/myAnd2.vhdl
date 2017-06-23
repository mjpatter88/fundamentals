entity myAnd2 is
    port(a: in bit; b: in bit; s: out bit);
end myAnd2;

architecture behavioral of myAnd2 is

    component myNand2
        port(a: in bit; b: in bit; s: out bit);
    end component;

    component myNot
        port(i: in bit; o: out bit);
    end component;

    signal nandOut: bit;

begin

    myNand2_1: myNand2 port map(a => a, b => b, s => nandOut);
    myNot_1: myNot port map(i => nandOut, o => s);

end behavioral;
