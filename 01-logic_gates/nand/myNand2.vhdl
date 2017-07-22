library IEEE;
use IEEE.Std_Logic_1164.all;

entity myNand2 is
    port(a : in std_logic; b : in std_logic; s : out std_logic);
end myNand2;

architecture Behavorial of myNand2 is
begin
    s <= a nand b;
end Behavorial;
