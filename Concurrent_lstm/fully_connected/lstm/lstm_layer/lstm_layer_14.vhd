library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity lstm_layer_14 is
    port (
        x_0 : in STD_LOGIC_VECTOR(15 downto 0);
        x_1 : in STD_LOGIC_VECTOR(15 downto 0);
        x_2 : in STD_LOGIC_VECTOR(15 downto 0);
        x_3 : in STD_LOGIC_VECTOR(15 downto 0);
        x_4 : in STD_LOGIC_VECTOR(15 downto 0);
        x_5 : in STD_LOGIC_VECTOR(15 downto 0);
        x_6 : in STD_LOGIC_VECTOR(15 downto 0);
        x_7 : in STD_LOGIC_VECTOR(15 downto 0);
        x_8 : in STD_LOGIC_VECTOR(15 downto 0);
        x_9 : in STD_LOGIC_VECTOR(15 downto 0);
        x_10 : in STD_LOGIC_VECTOR(15 downto 0);
        x_11 : in STD_LOGIC_VECTOR(15 downto 0);
        x_12 : in STD_LOGIC_VECTOR(15 downto 0);
        x_13 : in STD_LOGIC_VECTOR(15 downto 0);
        x_14 : in STD_LOGIC_VECTOR(15 downto 0);
        x_15 : in STD_LOGIC_VECTOR(15 downto 0);
        x_16 : in STD_LOGIC_VECTOR(15 downto 0);
        x_17 : in STD_LOGIC_VECTOR(15 downto 0);
        x_18 : in STD_LOGIC_VECTOR(15 downto 0);
        x_19 : in STD_LOGIC_VECTOR(15 downto 0);
        x_20 : in STD_LOGIC_VECTOR(15 downto 0);
        x_21 : in STD_LOGIC_VECTOR(15 downto 0);
        x_22 : in STD_LOGIC_VECTOR(15 downto 0);
        x_23 : in STD_LOGIC_VECTOR(15 downto 0);
        x_24 : in STD_LOGIC_VECTOR(15 downto 0);
        x_25 : in STD_LOGIC_VECTOR(15 downto 0);
        x_26 : in STD_LOGIC_VECTOR(15 downto 0);
        x_27 : in STD_LOGIC_VECTOR(15 downto 0);
        y_0 : out STD_LOGIC_VECTOR(15 downto 0);
        y_1 : out STD_LOGIC_VECTOR(15 downto 0);
        y_2 : out STD_LOGIC_VECTOR(15 downto 0);
        y_3 : out STD_LOGIC_VECTOR(15 downto 0);
        y_4 : out STD_LOGIC_VECTOR(15 downto 0);
        y_5 : out STD_LOGIC_VECTOR(15 downto 0);
        y_6 : out STD_LOGIC_VECTOR(15 downto 0);
        y_7 : out STD_LOGIC_VECTOR(15 downto 0);
        y_8 : out STD_LOGIC_VECTOR(15 downto 0);
        y_9 : out STD_LOGIC_VECTOR(15 downto 0);
        y_10 : out STD_LOGIC_VECTOR(15 downto 0);
        y_11 : out STD_LOGIC_VECTOR(15 downto 0);
        y_12 : out STD_LOGIC_VECTOR(15 downto 0);
        y_13 : out STD_LOGIC_VECTOR(15 downto 0);
        y_14 : out STD_LOGIC_VECTOR(15 downto 0);
        y_15 : out STD_LOGIC_VECTOR(15 downto 0);
        y_16 : out STD_LOGIC_VECTOR(15 downto 0);
        y_17 : out STD_LOGIC_VECTOR(15 downto 0);
        y_18 : out STD_LOGIC_VECTOR(15 downto 0);
        y_19 : out STD_LOGIC_VECTOR(15 downto 0);
        y_20 : out STD_LOGIC_VECTOR(15 downto 0);
        y_21 : out STD_LOGIC_VECTOR(15 downto 0);
        y_22 : out STD_LOGIC_VECTOR(15 downto 0);
        y_23 : out STD_LOGIC_VECTOR(15 downto 0);
        y_24 : out STD_LOGIC_VECTOR(15 downto 0);
        y_25 : out STD_LOGIC_VECTOR(15 downto 0);
        y_26 : out STD_LOGIC_VECTOR(15 downto 0);
        y_27 : out STD_LOGIC_VECTOR(15 downto 0)
    );
end lstm_layer_14 ;
architecture Behavioral of lstm_layer_14 is
signal sig_c_t_minus_14_0 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_h_t_minus_14_0 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_c_t_minus_14_1 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_h_t_minus_14_1 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_c_t_minus_14_2 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_h_t_minus_14_2 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_c_t_minus_14_3 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_h_t_minus_14_3 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_c_t_minus_14_4 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_h_t_minus_14_4 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_c_t_minus_14_5 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_h_t_minus_14_5 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_c_t_minus_14_6 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_h_t_minus_14_6 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_c_t_minus_14_7 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_h_t_minus_14_7 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_c_t_minus_14_8 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_h_t_minus_14_8 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_c_t_minus_14_9 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_h_t_minus_14_9 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_c_t_minus_14_10 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_h_t_minus_14_10 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_c_t_minus_14_11 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_h_t_minus_14_11 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_c_t_minus_14_12 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_h_t_minus_14_12 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_c_t_minus_14_13 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_h_t_minus_14_13 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_c_t_minus_14_14 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_h_t_minus_14_14 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_c_t_minus_14_15 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_h_t_minus_14_15 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_c_t_minus_14_16 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_h_t_minus_14_16 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_c_t_minus_14_17 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_h_t_minus_14_17 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_c_t_minus_14_18 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_h_t_minus_14_18 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_c_t_minus_14_19 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_h_t_minus_14_19 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_c_t_minus_14_20 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_h_t_minus_14_20 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_c_t_minus_14_21 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_h_t_minus_14_21 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_c_t_minus_14_22 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_h_t_minus_14_22 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_c_t_minus_14_23 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_h_t_minus_14_23 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_c_t_minus_14_24 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_h_t_minus_14_24 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_c_t_minus_14_25 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_h_t_minus_14_25 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_c_t_minus_14_26 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_h_t_minus_14_26 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_c_t_minus_14_27 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_h_t_minus_14_27 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_c_t_minus_14_28 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_h_t_minus_14_28 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
component  neuron_14 is
	Port (
		x : in STD_LOGIC_VECTOR(15 downto 0);
		c_t_minus_in : in STD_LOGIC_VECTOR(15 downto 0);
		h_t_minus_in : in STD_LOGIC_VECTOR(15 downto 0);
		c_t_minus_out : out STD_LOGIC_VECTOR(15 downto 0) ;
		h_t_minus_out : out STD_LOGIC_VECTOR(15 downto 0);
		y : out STD_LOGIC_VECTOR(15 downto 0)
    );
end component neuron_14;
begin
ut0_neuron_14: neuron_14 port map(x_0,sig_c_t_minus_14_0,sig_h_t_minus_14_0,sig_h_t_minus_14_1,sig_c_t_minus_14_1,y_0);
ut1_neuron_14: neuron_14 port map(x_1,sig_c_t_minus_14_1,sig_h_t_minus_14_1,sig_h_t_minus_14_2,sig_c_t_minus_14_2,y_1);
ut2_neuron_14: neuron_14 port map(x_2,sig_c_t_minus_14_2,sig_h_t_minus_14_2,sig_h_t_minus_14_3,sig_c_t_minus_14_3,y_2);
ut3_neuron_14: neuron_14 port map(x_3,sig_c_t_minus_14_3,sig_h_t_minus_14_3,sig_h_t_minus_14_4,sig_c_t_minus_14_4,y_3);
ut4_neuron_14: neuron_14 port map(x_4,sig_c_t_minus_14_4,sig_h_t_minus_14_4,sig_h_t_minus_14_5,sig_c_t_minus_14_5,y_4);
ut5_neuron_14: neuron_14 port map(x_5,sig_c_t_minus_14_5,sig_h_t_minus_14_5,sig_h_t_minus_14_6,sig_c_t_minus_14_6,y_5);
ut6_neuron_14: neuron_14 port map(x_6,sig_c_t_minus_14_6,sig_h_t_minus_14_6,sig_h_t_minus_14_7,sig_c_t_minus_14_7,y_6);
ut7_neuron_14: neuron_14 port map(x_7,sig_c_t_minus_14_7,sig_h_t_minus_14_7,sig_h_t_minus_14_8,sig_c_t_minus_14_8,y_7);
ut8_neuron_14: neuron_14 port map(x_8,sig_c_t_minus_14_8,sig_h_t_minus_14_8,sig_h_t_minus_14_9,sig_c_t_minus_14_9,y_8);
ut9_neuron_14: neuron_14 port map(x_9,sig_c_t_minus_14_9,sig_h_t_minus_14_9,sig_h_t_minus_14_10,sig_c_t_minus_14_10,y_9);
ut10_neuron_14: neuron_14 port map(x_10,sig_c_t_minus_14_10,sig_h_t_minus_14_10,sig_h_t_minus_14_11,sig_c_t_minus_14_11,y_10);
ut11_neuron_14: neuron_14 port map(x_11,sig_c_t_minus_14_11,sig_h_t_minus_14_11,sig_h_t_minus_14_12,sig_c_t_minus_14_12,y_11);
ut12_neuron_14: neuron_14 port map(x_12,sig_c_t_minus_14_12,sig_h_t_minus_14_12,sig_h_t_minus_14_13,sig_c_t_minus_14_13,y_12);
ut13_neuron_14: neuron_14 port map(x_13,sig_c_t_minus_14_13,sig_h_t_minus_14_13,sig_h_t_minus_14_14,sig_c_t_minus_14_14,y_13);
ut14_neuron_14: neuron_14 port map(x_14,sig_c_t_minus_14_14,sig_h_t_minus_14_14,sig_h_t_minus_14_15,sig_c_t_minus_14_15,y_14);
ut15_neuron_14: neuron_14 port map(x_15,sig_c_t_minus_14_15,sig_h_t_minus_14_15,sig_h_t_minus_14_16,sig_c_t_minus_14_16,y_15);
ut16_neuron_14: neuron_14 port map(x_16,sig_c_t_minus_14_16,sig_h_t_minus_14_16,sig_h_t_minus_14_17,sig_c_t_minus_14_17,y_16);
ut17_neuron_14: neuron_14 port map(x_17,sig_c_t_minus_14_17,sig_h_t_minus_14_17,sig_h_t_minus_14_18,sig_c_t_minus_14_18,y_17);
ut18_neuron_14: neuron_14 port map(x_18,sig_c_t_minus_14_18,sig_h_t_minus_14_18,sig_h_t_minus_14_19,sig_c_t_minus_14_19,y_18);
ut19_neuron_14: neuron_14 port map(x_19,sig_c_t_minus_14_19,sig_h_t_minus_14_19,sig_h_t_minus_14_20,sig_c_t_minus_14_20,y_19);
ut20_neuron_14: neuron_14 port map(x_20,sig_c_t_minus_14_20,sig_h_t_minus_14_20,sig_h_t_minus_14_21,sig_c_t_minus_14_21,y_20);
ut21_neuron_14: neuron_14 port map(x_21,sig_c_t_minus_14_21,sig_h_t_minus_14_21,sig_h_t_minus_14_22,sig_c_t_minus_14_22,y_21);
ut22_neuron_14: neuron_14 port map(x_22,sig_c_t_minus_14_22,sig_h_t_minus_14_22,sig_h_t_minus_14_23,sig_c_t_minus_14_23,y_22);
ut23_neuron_14: neuron_14 port map(x_23,sig_c_t_minus_14_23,sig_h_t_minus_14_23,sig_h_t_minus_14_24,sig_c_t_minus_14_24,y_23);
ut24_neuron_14: neuron_14 port map(x_24,sig_c_t_minus_14_24,sig_h_t_minus_14_24,sig_h_t_minus_14_25,sig_c_t_minus_14_25,y_24);
ut25_neuron_14: neuron_14 port map(x_25,sig_c_t_minus_14_25,sig_h_t_minus_14_25,sig_h_t_minus_14_26,sig_c_t_minus_14_26,y_25);
ut26_neuron_14: neuron_14 port map(x_26,sig_c_t_minus_14_26,sig_h_t_minus_14_26,sig_h_t_minus_14_27,sig_c_t_minus_14_27,y_26);
ut27_neuron_14: neuron_14 port map(x_27,sig_c_t_minus_14_27,sig_h_t_minus_14_27,sig_h_t_minus_14_28,sig_c_t_minus_14_28,y_27);
end Behavioral;