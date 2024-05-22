library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ram_7 is
    Port ( clk : in std_logic;
we : in std_logic;
a : in STD_LOGIC_vector(9 downto 0);
di : in std_logic_vector(15 downto 0);
do : out std_logic_vector(15 downto 0)
);
end ram_7;

architecture syn of ram_7 is

    type ram_type is array (0 to 783) of std_logic_vector(15 downto 0);
    signal ram : ram_type := ( 
"0000000001110011","1000000011110100","0000000010000011","1000000011111010","1000000100110101","0000000100010001","1000000000010000","0000000110010011","0000000001110011","1000000010000000","0000000111110110","0000000001010000","1000000000100010","1000000001000010","1000000011110110","1000000000010010","0000000010010011","0000000001110000","0000000001011010","0000000000100100","1000000001110101","0000000001010110","1000000000101010","0000000001001000","1000000001010001","0000000111101101","0000000010111111","0000000010111100","1000000011111110","0000000001110000","0000000001111010","0000000001111001","1000000110001001","1000000011101110","1000010001110111","1000011001010101","1000100010101010","1000011110101111","1000110000000011","1001000110001011","1001000111010110","1000111111110000","1001000001011000","1001000001110010","1000111010011101","1000111100000010","1000011011011111","1000100011010111","1000011000001100","1000000001011001","1000011011001100","1000010100000001","0000000000011000","0000000010100010","0000000010110101","1000000011000110","1000000000111111","1000000101111111","0000000011111100","1000110101010000","1000111000101110","1000000100100010","1000100101100001","1000111110101001","1001001100100100","1001100100000110","1001110111100101","1001110110001001","1001011101100010","1001100100110011","1001101011010101","1001101001110110","1010100100111000","1010001011111110","1000111011010101","1000110100101101","1000101010100111","1000011010100010","1000101001011010","1000010110101000","1000000111111100","1000000011000001","0000000010111110","0000000100110100","0000000001111001","0000000100010010","0000000011101101","1000110001000011","1000111011011000","1000111101101101","1001001111111100","1001111111000001","1001010001001110","1001111010010010","1010011100111001","1010101101110000","1011100010110100","1011101011011010","1010011111001101","1011010011101100","1010100101000100","1011000101001101","1010111110111010","1010010100010101","1001110110100101","1001111111001111","1001010101111100","1000101011011011","1000010101110001","1000001110101000","0000000010011110","0000000110010100","0000000011101000","0000000001011110","1000000110110011","0000101110000000","0000100000011110","1000110001000100","1010101000111000","1010010111100011","1011001000001101","1011010000100011","1100100111110100","1011001010110111","1010111110001001","1011000110000010","1011101011011110","1101000001101010","1100011010000001","1111110010010000","1100100010111100","1010111111000111","1011110100010010","1000100011001111","1000010100001110","1001011001011001","1000111101101000","1000101101011111","1000010011001101","1000001110110100","1000000010101110","1000000000111100","1000010111111000","1000110000101000","1000111111000000","0001001001010100","0000001010001000","0000110100110011","0001000010011000","0000001100001100","0000001010101010","1000011010011011","1000011011111110","1000101000010001","1001011010100111","1001011011111011","1000110110010110","1000011110111100","1000101100001111","1000110010110011","1010101101101000","1010101100111110","1001000000110111","1010111100110110","1011100110100100","1010011011100001","1001100010001111","1000100100011111","1000000010101100","1000100101011110","0000110001001110","0000110011011010","1000100000101100","0001000011010100","0000101011010100","0000110000100010","0000010100101100","0000010101101010","0000100010010000","0000001001111000","0000000000001000","1000010111111110","1000100101111110","1000101000010011","1000001101100011","0000010100111100","1000000111000011","1000000011110111","1000100010001110","1000010011110000","1000001110011111","1000101110001010","1000111111100001","1000110011000110","1010010011010110","1001000011110001","0000000100100111","0000101000101000","0000010100101001","0000100111000100","0000100010001111","0000000011111100","0000010111111001","0000001110001000","0000000000111110","0000010101101000","0000001001100000","1000000011010001","0000000011010001","1000000111111111","1000100000101001","1000011011110000","0000001010110101","0000100011101110","0000011001000011","0000000101000011","0000010111110100","0000010001100011","1000000100110010","0000000000000010","1000100000010110","1000111011010011","1010100100011101","1001000100111010","1000110000110001","0000110001100111","0000001000000101","0000110000001110","0000100010110101","0000001110000100","0000010110101011","0000011100000110","0000110001000110","0000000100111010","1000010110000000","0000010010111001","1000000000110100","1000010111111101","1000001010000101","0000000100111010","0000010010101001","0000010100110011","0000011101000010","1000000001001110","0000010000110001","1000010011101011","1000011001001100","0000000000101110","1000110010000000","1001001101111100","1010111100001010","1000111111111011","0000101110101010","0001010001101111","1000001000011110","0000011111110111","0000010100010110","0000001110101010","0000010110111000","0000000000111001","0000001011011011","0000000001000011","1000100110111101","1000001100101101","0000010000111011","1000001100110011","0000010110100011","0000001001000110","0000100001001111","0001000111101010","0000100011010100","0000000011100101","1000001001010111","0000000011110010","0000000100100101","1000001011001010","1000011110110101","1000101010101010","1001110001011001","1000001100001000","0000110000101001","0001010010000110","0001000000100010","0000011100001000","0000001110101000","0000010101001111","0000100111110111","0000000010001011","1000011100001000","1000000000111101","1000101110101001","1000100101100101","1000101100011011","1000001011110000","1000000100000010","0000011011100111","0000111110111001","0000100010101111","0000011101111010","0000010010100101","0000000011110110","0000010101011110","1000010101110101","1000011101010011","1001100110001001","1000100111011111","1001001110101010","0000010010100110","0000100111101110","1000010000101000","0000111001110001","0000111001111001","0000110000100001","1000000111101100","1000000100100001","0000000110010100","1000010111001111","1000000011001100","0000000010110011","1000000110111011","1000010100110111","1000001000100001","0000001010111001","0000011111101011","0001000000001000","0000011101000101","0000101111010111","0000000111011110","0000010010111010","1000010011011001","1000001001100110","1000010101111001","1010010101101101","1010011100111001","1001000010110101","0000101100001011","0000100000001010","0001100101000101","0001001010010010","0000110111011111","0000111110100011","1000001011101010","1000000011111110","0000101100001111","0000010110011111","0000000101111101","1000010011011110","1000011110001001","1001100011100111","1010001110001100","1000111101001010","0000011110110110","0001000101001101","0000101000110010","0000100110011010","1000001011111001","1000100111000011","1000010011001101","0000000011000110","1000110100011101","1001100010000000","1000000010101010","0000100100000110","0000111000101110","1000110011101111","0000001011000011","0000110001111111","0000111011001110","0000010111101110","0000010011111100","0000011011110001","0000000101011011","1000010111110001","1000001011000000","1000001000001111","1000111110111001","1010100010100001","1011010001010011","1001000111110010","0000000011011110","0000011011111010","0000010111111111","0000001001001011","1000010010010011","0000010000010010","0000100100011011","0000000010000010","1000110100101000","1000010110101010","0000010001101011","1000010010011010","1000111000001111","1000111001110101","0000111111000110","0000110010100000","0000100100001110","0000001101100101","0000010110111110","0000000001111011","1000011000010100","1000010110100010","1000011011001010","1000010111111110","1001010011001000","1011011011000011","1010101111000111","1001001010001000","1000100101010100","0000001100011010","0000011110111110","0001000011001111","0001000101001101","0000100001101001","1000000111110001","1000010011111010","0000000010101010","1000010100011010","1001001100000111","1010000011001001","1000100100100010","0000011011100000","1000000100001010","1000011001101110","0000101101110001","1000010101111011","1000010011101110","1000001010110000","1000100101111011","1000010100110010","1000110011101010","1000011010110111","1001100010010111","1010011111001001","1001101111110001","1001001110001010","1000011000101011","1000010111111000","0001000000110000","0001000100000001","1000000111110001","0000101000000001","0000010000010000","0000100100011100","0000000100111001","1000100111101100","1001000000111011","1001110000111011","1000100001111000","0000110110110010","1000110000011110","1000100000011000","1000010101101011","1000010100001000","1000011010101101","0000001010010110","0000000101000010","1000000010101111","1000010100110000","1001000111110011","1010000010011100","1001010110001010","1001000101110010","1001001011000010","1000100010010100","0000000000111000","0000100111010111","0000100000011111","0000011111001011","0000000100101110","0000001101101111","1000000011100101","1000001100001111","1000111101100000","1001111000001111","1001110101001111","1000111101011101","0000000001101100","1000010001011011","1000010111100001","1000000100011110","0000100101011010","1000011111101111","1000001010100111","1000001110000111","0000000001111011","1000011001101011","1001100000100111","1001001100000101","1000110011000110","1000110110001100","1000011110010101","1000011001110110","1000000100110011","1000000011011001","0000100101101100","1000000000101010","1000010111111000","1000010001110011","1000001010101000","1000100010011101","1000001111110001","0001001000011001","0001000011101100","1001011010010001","0000100111010101","1000000110011101","0000011110000010","1000010101110101","1000000001101000","1000010010101110","1000100101111101","1000101001011011","1000101011011100","1000011011110111","1001010001010111","1001000010000010","1001000110010111","1000110111111100","1000101001010100","1000110011011111","1000010100100000","1000011101100010","1000000100011110","0000000110011110","1000001111010100","1000000100101000","1001000111101101","1001010110111111","1001011000111110","0000011110001010","0001000111100000","1001000111101000","1000000110010110","0000111011010011","0000111010010011","1000111011010110","0000011001000001","1000100001000111","0000000010000110","1000111100000000","1000111011110100","1000111001111101","1001100000111100","1001001110011010","1000111101000000","1000111100100100","1000011110000010","1000111001001001","1000101111010111","1000110110100011","1001011011100111","1000100000101100","1000100000011011","1000100110111111","1001001111100111","1001010010111110","1000110101010110","1000001111010111","1001000011010001","1000101111101011","1000000101101110","0000010101000110","0000011111011010","1001100011110001","1001011100101100","1010011101010010","1010011011000000","1000111010001111","1000100011000010","1000101111011011","1000110101101010","1001000100110001","1000100100101010","1000101000000111","1000011100011011","1001001101101110","1001000110111001","1001010111101110","1010000011110011","1001100001010001","1010101000101100","1001110000001110","1001100010111000","1001001010111000","1001001100010001","1001001001111101","1001001111111110","1000000000110100","1000000011010101","1001000011000100","1001110001011100","1010001011011011","1001001110001010","1001010101101001","1001000011011111","1000110101010000","1000001110111100","1000100110101010","1000101100110111","1000110010011110","1000101011000101","1000111001101001","1001000010111110","1001001001011100","1000100101101101","1001000001001111","1001001100101001","1001100100110011","1001100100001101","1000110101101110","1001001010010100","1010010100111011","0000010000011101","1000101010010011","1000111100000111","1000000101000001","1000000000101011","1000001001111001","1001011111111000","1001101000101100","1000100101000010","0000000101110000","1000011001000100","0000001100111011","1000000110010101","1000010110001100","1000011011000010","1000111110011001","1000101010001011","1001010011100101","1000101011000000","1000100111100001","1000011111011000","1000110000111000","1000110101000011","1000110010001011","1001011011011001","1010000000010000","1010001010001111","1010010100000001","1000101001101111","1000011110110101","1001011000001101","0000000011010011","1000000111010001","0000000110001111","1010010000111101","1001111011001001","0000101111010101","1000010101011001","0000011001000011","0000011001111101","1001000110011010","1000010010110100","1000101001110110","1001010000101001","1001011111010011","1001011011111110","1000111000101001","1000101110011111","1000110100000111","1000110000111011","1001000001111001","1000111111110011","1010001110011101","1001110101101101","1001000111111010","1001010011111110","1000100001001101","1000111011110101","1001000001001011","1000000001010000","0000000011010001","0000000011010111","1000000010110011","1000000010111100","0000101011000000","0000110011111000","0000101001110000","0000000111010101","1000010101101001","1000011011000111","1000010000011101","1000100100111011","1000111101101111","1000010101110011","1000010110111110","1000111000000100","1000101000000110","1000001011001000","1001010101010110","1000101101100100","1001000101110110","1000101000100001","1010000001011000","1010001011110000","1001000111111001","1001010010010001","1000001011101011","0000000011000011","1000000010000011","1000000001101100","1001000100101000","0001001000010100","0000001001001110","0000000111101011","1000000000100000","0000001010011100","0000010100111100","0000010010101110","0000000101011010","0000100101001000","0000010110111010","1000001010010101","0000010111010010","1000001110010000","1000000001101010","1000001110100100","0000000001001010","1000000001001111","1000001110011111","1000111010001111","1000111001110100","1000100100001010","1000101011000001","1000110111011101","1000000110111110","0000000000100010","1000000001001011","0000000000100001","0000000000111001","1000110110000110","1001000110000100","1000010010110110","1000000010110100","0000011111111100","0000001101011110","0000010101011011","0000011111100011","0000000010101111","1000001110100111","0000011001100110","0000010001101101","0000101111001101","0000011111101111","0000010010000111","0000011111111101","0000001000110111","1000011010010011","1001000110111100","1000000010011110","1000001000111010","1000110011101111","0000111011011000","0000000010110101","0000000001000111","1000000000100001","0000000111111101","0000000100000110","1000000001000101","0001000100111101","0001011011001110","1000100010011000","1000000101000100","0000001000100101","0000001010101001","0001001110111001","0000010100110101","0000001101101001","0010101101010000","0001010111110010","0000010101111110","0000111110111111","0001100001011110","0000011001010011","0001001100000100","1000010011010001","1000001100111110","0000000110111110","0001001000110110","1000000010001001","0000000110100001","0000000010000100","0000000011000101");
begin
process (clk)
begin
if (clk'event and clk = '1') then
if (we = '1') then
RAM(conv_integer(a)) <= di;
end if;
end if;
end process;
do <= RAM(conv_integer(a));
end syn;
