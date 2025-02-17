library IEEE;
use IEEE.Std_Logic_1164.all;

entity myNand2_tb is
end myNand2_tb;

architecture Behavioral of myNand2_tb is

    component myNand2
        port(a : in std_logic; b : in std_logic; s : out std_logic);
    end component;

    signal a, b, s : std_logic;

begin
    nand_0: myNand2 port map (a => a, b => b, s => s);

    process
    begin
        a <= '0';
        b <= '0';
        wait for 1 ns;
        assert s = '1' report "0 nand 0 != 1" severity error;

        a <= '0';
        b <= '1';
        wait for 1 ns;
        assert s = '1' report "0 nand 1 != 1" severity error;

        a <= '1';
        b <= '0';
        wait for 1 ns;
        assert s = '1' report "1 nand 0 != 1" severity error;

        a <= '1';
        b <= '1';
        wait for 1 ns;
        assert s = '0' report "1 nand 1 != 0" severity error;

        assert false report "end of test" severity note;
        wait;
    end process;
end Behavioral;
