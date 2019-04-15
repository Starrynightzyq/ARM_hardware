# aclk {FREQ_HZ 81247969 CLK_DOMAIN m3_for_arty_a7_mig_7series_0_1_ui_clk PHASE 0} aclk1 {FREQ_HZ 50000000 CLK_DOMAIN /Clocks_and_Resets/clk_wiz_0_clk_out1 PHASE 0.0}
# Clock Domain: m3_for_arty_a7_mig_7series_0_1_ui_clk
create_clock -name aclk -period 12.308 [get_ports aclk]
# Clock Domain: /Clocks_and_Resets/clk_wiz_0_clk_out1
create_clock -name aclk1 -period 20.000 [get_ports aclk1]
# Generated clocks
