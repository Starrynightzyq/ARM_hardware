## This file is a general .xdc for the Nexys4 DDR Rev. C
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { sys_clock }]; #IO_L12P_T1_MRCC_35 Sch=clk100mhz
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {sys_clock}];


##Switches

set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { dip_switches_4bits_tri_i[0] }]; #IO_L24N_T3_RS0_15 Sch=sw[0]
set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { dip_switches_4bits_tri_i[1] }]; #IO_L3N_T0_DQS_EMCCLK_14 Sch=sw[1]
set_property -dict { PACKAGE_PIN M13   IOSTANDARD LVCMOS33 } [get_ports { dip_switches_4bits_tri_i[2] }]; #IO_L6N_T0_D08_VREF_14 Sch=sw[2]
set_property -dict { PACKAGE_PIN R15   IOSTANDARD LVCMOS33 } [get_ports { dip_switches_4bits_tri_i[3] }]; #IO_L13N_T2_MRCC_14 Sch=sw[3]
#set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { DAPLink_tri_o[0]  }]; #IO_L12N_T1_MRCC_14 Sch=sw[4]
#set_property -dict { PACKAGE_PIN T18   IOSTANDARD LVCMOS33 } [get_ports { DAPLink_tri_o[1]  }]; #IO_L7N_T1_D10_14 Sch=sw[5]
#set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { DAPLink_tri_o[2]  }]; #IO_L17N_T2_A13_D29_14 Sch=sw[6]
#set_property -dict { PACKAGE_PIN R13   IOSTANDARD LVCMOS33 } [get_ports { DAPLink_tri_o[3]  }]; #IO_L5N_T0_D07_14 Sch=sw[7]
#set_property -dict { PACKAGE_PIN T8    IOSTANDARD LVCMOS18 } [get_ports { DAPLink_tri_o[4]  }]; #IO_L24N_T3_34 Sch=sw[8]
#set_property -dict { PACKAGE_PIN U8    IOSTANDARD LVCMOS18 } [get_ports { DAPLink_tri_o[5]  }]; #IO_25_34 Sch=sw[9]
#set_property -dict { PACKAGE_PIN R16   IOSTANDARD LVCMOS33 } [get_ports { DAPLink_tri_o[6]  }]; #IO_L15P_T2_DQS_RDWR_B_14 Sch=sw[10]
#set_property -dict { PACKAGE_PIN T13   IOSTANDARD LVCMOS33 } [get_ports { switch_0[ 7]  }]; #IO_L23P_T3_A03_D19_14 Sch=sw[11]
set_property -dict { PACKAGE_PIN H6    IOSTANDARD LVCMOS33 } [get_ports { switch_0[0]  }]; #IO_L24P_T3_35 Sch=sw[12]
set_property -dict { PACKAGE_PIN U12   IOSTANDARD LVCMOS33 } [get_ports { switch_0[1]  }]; #IO_L20P_T3_A08_D24_14 Sch=sw[13]
set_property -dict { PACKAGE_PIN U11   IOSTANDARD LVCMOS33 } [get_ports { switch_0[2] }]; #IO_L19N_T3_A09_D25_VREF_14 Sch=sw[14]
set_property -dict { PACKAGE_PIN V10   IOSTANDARD LVCMOS33 } [get_ports { switch_0[3] }]; #IO_L21P_T3_DQS_14 Sch=sw[15]


## LEDs

set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { led_4bits_tri_io[0] }]; #IO_L18P_T2_A24_15 Sch=led[0]
set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { led_4bits_tri_io[1] }]; #IO_L24P_T3_RS1_15 Sch=led[1]
set_property -dict { PACKAGE_PIN J13   IOSTANDARD LVCMOS33 } [get_ports { led_4bits_tri_io[2] }]; #IO_L17N_T2_A25_15 Sch=led[2]
set_property -dict { PACKAGE_PIN N14   IOSTANDARD LVCMOS33 } [get_ports { led_4bits_tri_io[3] }]; #IO_L8P_T1_D11_14 Sch=led[3]
set_property -dict { PACKAGE_PIN R18   IOSTANDARD LVCMOS33 } [get_ports { DAPLink_tri_o[0]  }]; #IO_L7P_T1_D09_14 Sch=led[4]
set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { DAPLink_tri_o[1]  }]; #IO_L18N_T2_A11_D27_14 Sch=led[5]
set_property -dict { PACKAGE_PIN U17   IOSTANDARD LVCMOS33 } [get_ports { DAPLink_tri_o[2]  }]; #IO_L17P_T2_A14_D30_14 Sch=led[6]
set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports { DAPLink_tri_o[3]  }]; #IO_L18P_T2_A12_D28_14 Sch=led[7]
set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { DAPLink_tri_o[4]  }]; #IO_L16N_T2_A15_D31_14 Sch=led[8]
set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS33 } [get_ports { DAPLink_tri_o[5]  }]; #IO_L14N_T2_SRCC_14 Sch=led[9]
set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33 } [get_ports { DAPLink_tri_o[6]  }]; #IO_L22P_T3_A05_D21_14 Sch=led[10]
set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS33 } [get_ports { DAPLink_tri_o[7]  }]; #IO_L15N_T2_DQS_DOUT_CSO_B_14 Sch=led[11]
set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports { DAPLink_tri_o[8]  }]; #IO_L16P_T2_CSI_B_14 Sch=led[12]
set_property -dict { PACKAGE_PIN V14   IOSTANDARD LVCMOS33 } [get_ports { DAPLink_tri_o[9]  }]; #IO_L22N_T3_A04_D20_14 Sch=led[13]
set_property -dict { PACKAGE_PIN V12   IOSTANDARD LVCMOS33 } [get_ports { DAPLink_tri_o[10] }]; #IO_L20N_T3_A07_D23_14 Sch=led[14]
set_property -dict { PACKAGE_PIN V11   IOSTANDARD LVCMOS33 } [get_ports { DAPLink_tri_o[11] }]; #IO_L21N_T3_DQS_A06_D22_14 Sch=led[15]

#set_property -dict { PACKAGE_PIN R12   IOSTANDARD LVCMOS33 } [get_ports { LED16_B }]; #IO_L5P_T0_D06_14 Sch=led16_b
#set_property -dict { PACKAGE_PIN M16   IOSTANDARD LVCMOS33 } [get_ports { LED16_G }]; #IO_L10P_T1_D14_14 Sch=led16_g
#set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33 } [get_ports { LED16_R }]; #IO_L11P_T1_SRCC_14 Sch=led16_r
#set_property -dict { PACKAGE_PIN G14   IOSTANDARD LVCMOS33 } [get_ports { LED17_B }]; #IO_L15N_T2_DQS_ADV_B_15 Sch=led17_b
#set_property -dict { PACKAGE_PIN R11   IOSTANDARD LVCMOS33 } [get_ports { LED17_G }]; #IO_0_14 Sch=led17_g
#set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports { LED17_R }]; #IO_L11N_T1_SRCC_14 Sch=led17_r


##7 segment display

#set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { CA }]; #IO_L24N_T3_A00_D16_14 Sch=ca
#set_property -dict { PACKAGE_PIN R10   IOSTANDARD LVCMOS33 } [get_ports { CB }]; #IO_25_14 Sch=cb
#set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports { CC }]; #IO_25_15 Sch=cc
#set_property -dict { PACKAGE_PIN K13   IOSTANDARD LVCMOS33 } [get_ports { CD }]; #IO_L17P_T2_A26_15 Sch=cd
#set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { CE }]; #IO_L13P_T2_MRCC_14 Sch=ce
#set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { CF }]; #IO_L19P_T3_A10_D26_14 Sch=cf
#set_property -dict { PACKAGE_PIN L18   IOSTANDARD LVCMOS33 } [get_ports { CG }]; #IO_L4P_T0_D04_14 Sch=cg

#set_property -dict { PACKAGE_PIN H15   IOSTANDARD LVCMOS33 } [get_ports { DP }]; #IO_L19N_T3_A21_VREF_15 Sch=dp

#set_property -dict { PACKAGE_PIN J17   IOSTANDARD LVCMOS33 } [get_ports { AN[0] }]; #IO_L23P_T3_FOE_B_15 Sch=an[0]
#set_property -dict { PACKAGE_PIN J18   IOSTANDARD LVCMOS33 } [get_ports { AN[1] }]; #IO_L23N_T3_FWE_B_15 Sch=an[1]
#set_property -dict { PACKAGE_PIN T9    IOSTANDARD LVCMOS33 } [get_ports { AN[2] }]; #IO_L24P_T3_A01_D17_14 Sch=an[2]
#set_property -dict { PACKAGE_PIN J14   IOSTANDARD LVCMOS33 } [get_ports { AN[3] }]; #IO_L19P_T3_A22_15 Sch=an[3]
#set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports { AN[4] }]; #IO_L8N_T1_D12_14 Sch=an[4]
#set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33 } [get_ports { AN[5] }]; #IO_L14P_T2_SRCC_14 Sch=an[5]
#set_property -dict { PACKAGE_PIN K2    IOSTANDARD LVCMOS33 } [get_ports { AN[6] }]; #IO_L23P_T3_35 Sch=an[6]
#set_property -dict { PACKAGE_PIN U13   IOSTANDARD LVCMOS33 } [get_ports { AN[7] }]; #IO_L23N_T3_A02_D18_14 Sch=an[7]


##Buttons

set_property -dict { PACKAGE_PIN C12   IOSTANDARD LVCMOS33 } [get_ports { reset }]; #IO_L3P_T0_DQS_AD1P_15 Sch=cpu_resetn

#set_property -dict { PACKAGE_PIN N17   IOSTANDARD LVCMOS33 } [get_ports { BTNC }]; #IO_L9P_T1_DQS_14 Sch=btnc
#set_property -dict { PACKAGE_PIN M18   IOSTANDARD LVCMOS33 } [get_ports { BTNU }]; #IO_L4N_T0_D05_14 Sch=btnu
#set_property -dict { PACKAGE_PIN P17   IOSTANDARD LVCMOS33 } [get_ports { BTNL }]; #IO_L12P_T1_MRCC_14 Sch=btnl
#set_property -dict { PACKAGE_PIN M17   IOSTANDARD LVCMOS33 } [get_ports { BTNR }]; #IO_L10N_T1_D15_14 Sch=btnr
#set_property -dict { PACKAGE_PIN P18   IOSTANDARD LVCMOS33 } [get_ports { BTND }]; #IO_L9N_T1_DQS_D13_14 Sch=btnd


##Pmod Headers


##Pmod Header JA

#set_property -dict { PACKAGE_PIN C17   IOSTANDARD LVCMOS33 } [get_ports { JA[1] }]; #IO_L20N_T3_A19_15 Sch=ja[1]
#set_property -dict { PACKAGE_PIN D18   IOSTANDARD LVCMOS33 } [get_ports { JA[2] }]; #IO_L21N_T3_DQS_A18_15 Sch=ja[2]
#set_property -dict { PACKAGE_PIN E18   IOSTANDARD LVCMOS33 } [get_ports { JA[3] }]; #IO_L21P_T3_DQS_15 Sch=ja[3]
#set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS33 } [get_ports { JA[4] }]; #IO_L18N_T2_A23_15 Sch=ja[4]
#set_property -dict { PACKAGE_PIN D17   IOSTANDARD LVCMOS33 } [get_ports { JA[7] }]; #IO_L16N_T2_A27_15 Sch=ja[7]
#set_property -dict { PACKAGE_PIN E17   IOSTANDARD LVCMOS33 } [get_ports { JA[8] }]; #IO_L16P_T2_A28_15 Sch=ja[8]
#set_property -dict { PACKAGE_PIN F18   IOSTANDARD LVCMOS33 } [get_ports { JA[9] }]; #IO_L22N_T3_A16_15 Sch=ja[9]
#set_property -dict { PACKAGE_PIN G18   IOSTANDARD LVCMOS33 } [get_ports { JA[10] }]; #IO_L22P_T3_A17_15 Sch=ja[10]


##Pmod Header JB

#set_property -dict { PACKAGE_PIN D14   IOSTANDARD LVCMOS33 } [get_ports { JB[1] }]; #IO_L1P_T0_AD0P_15 Sch=jb[1]
set_property -dict { PACKAGE_PIN F16   IOSTANDARD LVCMOS33 } [get_ports { nTRST }]; #IO_L14N_T2_SRCC_15 Sch=jb[2]
set_property -dict { PACKAGE_PIN G16   IOSTANDARD LVCMOS33 } [get_ports { TDO[0] }]; #IO_L13N_T2_MRCC_15 Sch=jb[3]
set_property -dict { PACKAGE_PIN H14   IOSTANDARD LVCMOS33 } [get_ports { TDI }]; #IO_L15P_T2_DQS_15 Sch=jb[4]
set_property -dict { PACKAGE_PIN E16   IOSTANDARD LVCMOS33 } [get_ports { DAPLink_tri_o[12] }]; #IO_L11N_T1_SRCC_15 Sch=jb[7]
set_property -dict { PACKAGE_PIN F13   IOSTANDARD LVCMOS33 } [get_ports { DAPLink_tri_o[13] }]; #IO_L5P_T0_AD9P_15 Sch=jb[8]
set_property -dict { PACKAGE_PIN G13   IOSTANDARD LVCMOS33 } [get_ports { DAPLink_tri_o[14] }]; #IO_0_15 Sch=jb[9]
set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { DAPLink_tri_o[15] }]; #IO_L13P_T2_MRCC_15 Sch=jb[10]


##Pmod Header JC

set_property -dict { PACKAGE_PIN K1    IOSTANDARD LVCMOS33 } [get_ports { cmos_pwdn_tri_o[0] }]; #IO_L23N_T3_35 Sch=jc[1]
set_property -dict { PACKAGE_PIN F6    IOSTANDARD LVCMOS33 } [get_ports { cmos_data[0] }]; #IO_L19N_T3_VREF_35 Sch=jc[2]
set_property -dict { PACKAGE_PIN J2    IOSTANDARD LVCMOS33 } [get_ports { cmos_data[2] }]; #IO_L22N_T3_35 Sch=jc[3]
set_property -dict { PACKAGE_PIN G6    IOSTANDARD LVCMOS33 } [get_ports { cmos_data[4] }]; #IO_L19P_T3_35 Sch=jc[4]
set_property -dict { PACKAGE_PIN E7    IOSTANDARD LVCMOS33 } [get_ports { cmos_rst_tri_o[0] }]; #IO_L6P_T0_35 Sch=jc[7]
set_property -dict { PACKAGE_PIN J3    IOSTANDARD LVCMOS33 } [get_ports { cmos_data[1] }]; #IO_L22P_T3_35 Sch=jc[8]
set_property -dict { PACKAGE_PIN J4    IOSTANDARD LVCMOS33 } [get_ports { cmos_data[3] }]; #IO_L21P_T3_DQS_35 Sch=jc[9]
set_property -dict { PACKAGE_PIN E6    IOSTANDARD LVCMOS33 } [get_ports { cmos_data[5] }]; #IO_L5P_T0_AD13P_35 Sch=jc[10]


##Pmod Header JD

set_property -dict { PACKAGE_PIN H4    IOSTANDARD LVCMOS33 } [get_ports { cmos_data[6] }]; #IO_L21N_T3_DQS_35 Sch=jd[1]
set_property -dict { PACKAGE_PIN H1    IOSTANDARD LVCMOS33 } [get_ports { cmos_xclk_o_0 }]; #IO_L17P_T2_35 Sch=jd[2]
set_property -dict { PACKAGE_PIN G1    IOSTANDARD LVCMOS33 } [get_ports { cmos_href }]; #IO_L17N_T2_35 Sch=jd[3]
set_property -dict { PACKAGE_PIN G3    IOSTANDARD LVCMOS33 } [get_ports { cmos_iic_sda_io }]; #IO_L20N_T3_35 Sch=jd[4]
set_property -dict { PACKAGE_PIN H2    IOSTANDARD LVCMOS33 } [get_ports { cmos_data[7] }]; #IO_L15P_T2_DQS_35 Sch=jd[7]
set_property -dict { PACKAGE_PIN G4    IOSTANDARD LVCMOS33 } [get_ports { cmos_pclk }]; #IO_L20P_T3_35 Sch=jd[8]
set_property -dict { PACKAGE_PIN G2    IOSTANDARD LVCMOS33 } [get_ports { cmos_vsync }]; #IO_L15N_T2_DQS_35 Sch=jd[9]
set_property -dict { PACKAGE_PIN F3    IOSTANDARD LVCMOS33 } [get_ports { cmos_iic_scl_io }]; #IO_L13N_T2_MRCC_35 Sch=jd[10]


##Pmod Header JXADC

#set_property -dict { PACKAGE_PIN A14   IOSTANDARD LVDS     } [get_ports { XA_N[1] }]; #IO_L9N_T1_DQS_AD3N_15 Sch=xa_n[1]
#set_property -dict { PACKAGE_PIN A13   IOSTANDARD LVDS     } [get_ports { XA_P[1] }]; #IO_L9P_T1_DQS_AD3P_15 Sch=xa_p[1]
#set_property -dict { PACKAGE_PIN A16   IOSTANDARD LVDS     } [get_ports { XA_N[2] }]; #IO_L8N_T1_AD10N_15 Sch=xa_n[2]
#set_property -dict { PACKAGE_PIN A15   IOSTANDARD LVDS     } [get_ports { XA_P[2] }]; #IO_L8P_T1_AD10P_15 Sch=xa_p[2]
#set_property -dict { PACKAGE_PIN B17   IOSTANDARD LVDS     } [get_ports { XA_N[3] }]; #IO_L7N_T1_AD2N_15 Sch=xa_n[3]
#set_property -dict { PACKAGE_PIN B16   IOSTANDARD LVDS     } [get_ports { XA_P[3] }]; #IO_L7P_T1_AD2P_15 Sch=xa_p[3]
#set_property -dict { PACKAGE_PIN A18   IOSTANDARD LVDS     } [get_ports { XA_N[4] }]; #IO_L10N_T1_AD11N_15 Sch=xa_n[4]
#set_property -dict { PACKAGE_PIN B18   IOSTANDARD LVDS     } [get_ports { XA_P[4] }]; #IO_L10P_T1_AD11P_15 Sch=xa_p[4]


##VGA Connector

set_property -dict { PACKAGE_PIN A3    IOSTANDARD LVCMOS33 } [get_ports { vga_pRed_0[0] }]; #IO_L8N_T1_AD14N_35 Sch=vga_r[0]
set_property -dict { PACKAGE_PIN B4    IOSTANDARD LVCMOS33 } [get_ports { vga_pRed_0[1] }]; #IO_L7N_T1_AD6N_35 Sch=vga_r[1]
set_property -dict { PACKAGE_PIN C5    IOSTANDARD LVCMOS33 } [get_ports { vga_pRed_0[2] }]; #IO_L1N_T0_AD4N_35 Sch=vga_r[2]
set_property -dict { PACKAGE_PIN A4    IOSTANDARD LVCMOS33 } [get_ports { vga_pRed_0[3] }]; #IO_L8P_T1_AD14P_35 Sch=vga_r[3]

set_property -dict { PACKAGE_PIN C6    IOSTANDARD LVCMOS33 } [get_ports { vga_pGreen_0[0] }]; #IO_L1P_T0_AD4P_35 Sch=vga_g[0]
set_property -dict { PACKAGE_PIN A5    IOSTANDARD LVCMOS33 } [get_ports { vga_pGreen_0[1] }]; #IO_L3N_T0_DQS_AD5N_35 Sch=vga_g[1]
set_property -dict { PACKAGE_PIN B6    IOSTANDARD LVCMOS33 } [get_ports { vga_pGreen_0[2] }]; #IO_L2N_T0_AD12N_35 Sch=vga_g[2]
set_property -dict { PACKAGE_PIN A6    IOSTANDARD LVCMOS33 } [get_ports { vga_pGreen_0[3] }]; #IO_L3P_T0_DQS_AD5P_35 Sch=vga_g[3]

set_property -dict { PACKAGE_PIN B7    IOSTANDARD LVCMOS33 } [get_ports { vga_pBlue_0[0] }]; #IO_L2P_T0_AD12P_35 Sch=vga_b[0]
set_property -dict { PACKAGE_PIN C7    IOSTANDARD LVCMOS33 } [get_ports { vga_pBlue_0[1] }]; #IO_L4N_T0_35 Sch=vga_b[1]
set_property -dict { PACKAGE_PIN D7    IOSTANDARD LVCMOS33 } [get_ports { vga_pBlue_0[2] }]; #IO_L6N_T0_VREF_35 Sch=vga_b[2]
set_property -dict { PACKAGE_PIN D8    IOSTANDARD LVCMOS33 } [get_ports { vga_pBlue_0[3] }]; #IO_L4P_T0_35 Sch=vga_b[3]

set_property -dict { PACKAGE_PIN B11   IOSTANDARD LVCMOS33 } [get_ports { vga_pHSync_0 }]; #IO_L4P_T0_15 Sch=vga_hs
set_property -dict { PACKAGE_PIN B12   IOSTANDARD LVCMOS33 } [get_ports { vga_pVSync_0 }]; #IO_L3N_T0_DQS_AD1N_15 Sch=vga_vs


##Micro SD Connector

#set_property -dict { PACKAGE_PIN E2    IOSTANDARD LVCMOS33 } [get_ports { SD_RESET }]; #IO_L14P_T2_SRCC_35 Sch=sd_reset
#set_property -dict { PACKAGE_PIN A1    IOSTANDARD LVCMOS33 } [get_ports { SD_CD }]; #IO_L9N_T1_DQS_AD7N_35 Sch=sd_cd
#set_property -dict { PACKAGE_PIN B1    IOSTANDARD LVCMOS33 } [get_ports { SD_SCK }]; #IO_L9P_T1_DQS_AD7P_35 Sch=sd_sck
#set_property -dict { PACKAGE_PIN C1    IOSTANDARD LVCMOS33 } [get_ports { SD_CMD }]; #IO_L16N_T2_35 Sch=sd_cmd
#set_property -dict { PACKAGE_PIN C2    IOSTANDARD LVCMOS33 } [get_ports { SD_DAT[0] }]; #IO_L16P_T2_35 Sch=sd_dat[0]
#set_property -dict { PACKAGE_PIN E1    IOSTANDARD LVCMOS33 } [get_ports { SD_DAT[1] }]; #IO_L18N_T2_35 Sch=sd_dat[1]
#set_property -dict { PACKAGE_PIN F1    IOSTANDARD LVCMOS33 } [get_ports { SD_DAT[2] }]; #IO_L18P_T2_35 Sch=sd_dat[2]
#set_property -dict { PACKAGE_PIN D2    IOSTANDARD LVCMOS33 } [get_ports { SD_DAT[3] }]; #IO_L14N_T2_SRCC_35 Sch=sd_dat[3]


##Accelerometer

#set_property -dict { PACKAGE_PIN E15   IOSTANDARD LVCMOS33 } [get_ports { ACL_MISO }]; #IO_L11P_T1_SRCC_15 Sch=acl_miso
#set_property -dict { PACKAGE_PIN F14   IOSTANDARD LVCMOS33 } [get_ports { ACL_MOSI }]; #IO_L5N_T0_AD9N_15 Sch=acl_mosi
#set_property -dict { PACKAGE_PIN F15   IOSTANDARD LVCMOS33 } [get_ports { ACL_SCLK }]; #IO_L14P_T2_SRCC_15 Sch=acl_sclk
#set_property -dict { PACKAGE_PIN D15   IOSTANDARD LVCMOS33 } [get_ports { ACL_CSN }]; #IO_L12P_T1_MRCC_15 Sch=acl_csn
#set_property -dict { PACKAGE_PIN B13   IOSTANDARD LVCMOS33 } [get_ports { ACL_INT[1] }]; #IO_L2P_T0_AD8P_15 Sch=acl_int[1]
#set_property -dict { PACKAGE_PIN C16   IOSTANDARD LVCMOS33 } [get_ports { ACL_INT[2] }]; #IO_L20P_T3_A20_15 Sch=acl_int[2]


##Temperature Sensor

set_property -dict { PACKAGE_PIN C14   IOSTANDARD LVCMOS33 } [get_ports { temp_sensor_scl_io }]; #IO_L1N_T0_AD0N_15 Sch=tmp_scl
set_property -dict { PACKAGE_PIN C15   IOSTANDARD LVCMOS33 } [get_ports { temp_sensor_sda_io }]; #IO_L12N_T1_MRCC_15 Sch=tmp_sda
#set_property -dict { PACKAGE_PIN D13   IOSTANDARD LVCMOS33 } [get_ports { TMP_INT }]; #IO_L6N_T0_VREF_15 Sch=tmp_int
#set_property -dict { PACKAGE_PIN B14   IOSTANDARD LVCMOS33 } [get_ports { TMP_CT }]; #IO_L2N_T0_AD8N_15 Sch=tmp_ct

##Omnidirectional Microphone

#set_property -dict { PACKAGE_PIN J5    IOSTANDARD LVCMOS33 } [get_ports { M_CLK }]; #IO_25_35 Sch=m_clk
#set_property -dict { PACKAGE_PIN H5    IOSTANDARD LVCMOS33 } [get_ports { M_DATA }]; #IO_L24N_T3_35 Sch=m_data
#set_property -dict { PACKAGE_PIN F5    IOSTANDARD LVCMOS33 } [get_ports { M_LRSEL }]; #IO_0_35 Sch=m_lrsel


##PWM Audio Amplifier

#set_property -dict { PACKAGE_PIN A11   IOSTANDARD LVCMOS33 } [get_ports { AUD_PWM }]; #IO_L4N_T0_15 Sch=aud_pwm
#set_property -dict { PACKAGE_PIN D12   IOSTANDARD LVCMOS33 } [get_ports { AUD_SD }]; #IO_L6P_T0_15 Sch=aud_sd


##USB-RS232 Interface

set_property -dict { PACKAGE_PIN C4    IOSTANDARD LVCMOS33 } [get_ports { usb_uart_rxd }]; #IO_L7P_T1_AD6P_35 Sch=uart_txd_in
set_property -dict { PACKAGE_PIN D4    IOSTANDARD LVCMOS33 } [get_ports { usb_uart_txd }]; #IO_L11N_T1_SRCC_35 Sch=uart_rxd_out
#set_property -dict { PACKAGE_PIN D3    IOSTANDARD LVCMOS33 } [get_ports { UART_CTS }]; #IO_L12N_T1_MRCC_35 Sch=uart_cts
#set_property -dict { PACKAGE_PIN E5    IOSTANDARD LVCMOS33 } [get_ports { UART_RTS }]; #IO_L5N_T0_AD13N_35 Sch=uart_rts

##USB HID (PS/2)

#set_property -dict { PACKAGE_PIN F4    IOSTANDARD LVCMOS33 } [get_ports { PS2_CLK }]; #IO_L13P_T2_MRCC_35 Sch=ps2_clk
#set_property -dict { PACKAGE_PIN B2    IOSTANDARD LVCMOS33 } [get_ports { PS2_DATA }]; #IO_L10N_T1_AD15N_35 Sch=ps2_data


##SMSC Ethernet PHY

#set_property -dict { PACKAGE_PIN C9    IOSTANDARD LVCMOS33 } [get_ports { ETH_MDC }]; #IO_L11P_T1_SRCC_16 Sch=eth_mdc
#set_property -dict { PACKAGE_PIN A9    IOSTANDARD LVCMOS33 } [get_ports { ETH_MDIO }]; #IO_L14N_T2_SRCC_16 Sch=eth_mdio
#set_property -dict { PACKAGE_PIN B3    IOSTANDARD LVCMOS33 } [get_ports { ETH_RSTN }]; #IO_L10P_T1_AD15P_35 Sch=eth_rstn
#set_property -dict { PACKAGE_PIN D9    IOSTANDARD LVCMOS33 } [get_ports { ETH_CRSDV }]; #IO_L6N_T0_VREF_16 Sch=eth_crsdv
#set_property -dict { PACKAGE_PIN C10   IOSTANDARD LVCMOS33 } [get_ports { ETH_RXERR }]; #IO_L13N_T2_MRCC_16 Sch=eth_rxerr
#set_property -dict { PACKAGE_PIN C11   IOSTANDARD LVCMOS33 } [get_ports { ETH_RXD[0] }]; #IO_L13P_T2_MRCC_16 Sch=eth_rxd[0]
#set_property -dict { PACKAGE_PIN D10   IOSTANDARD LVCMOS33 } [get_ports { ETH_RXD[1] }]; #IO_L19N_T3_VREF_16 Sch=eth_rxd[1]
#set_property -dict { PACKAGE_PIN B9    IOSTANDARD LVCMOS33 } [get_ports { ETH_TXEN }]; #IO_L11N_T1_SRCC_16 Sch=eth_txen
#set_property -dict { PACKAGE_PIN A10   IOSTANDARD LVCMOS33 } [get_ports { ETH_TXD[0] }]; #IO_L14P_T2_SRCC_16 Sch=eth_txd[0]
#set_property -dict { PACKAGE_PIN A8    IOSTANDARD LVCMOS33 } [get_ports { ETH_TXD[1] }]; #IO_L12N_T1_MRCC_16 Sch=eth_txd[1]
#set_property -dict { PACKAGE_PIN D5    IOSTANDARD LVCMOS33 } [get_ports { ETH_REFCLK }]; #IO_L11P_T1_SRCC_35 Sch=eth_refclk
#set_property -dict { PACKAGE_PIN B8    IOSTANDARD LVCMOS33 } [get_ports { ETH_INTN }]; #IO_L12P_T1_MRCC_16 Sch=eth_intn


##Quad SPI Flash

set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS33 } [get_ports { qspi_flash_io0_io }]; #IO_L1P_T0_D00_MOSI_14 Sch=qspi_dq[0]
set_property -dict { PACKAGE_PIN K18   IOSTANDARD LVCMOS33 } [get_ports { qspi_flash_io1_io }]; #IO_L1N_T0_D01_DIN_14 Sch=qspi_dq[1]
set_property -dict { PACKAGE_PIN L14   IOSTANDARD LVCMOS33 } [get_ports { qspi_flash_io2_io }]; #IO_L2P_T0_D02_14 Sch=qspi_dq[2]
set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports { qspi_flash_io3_io }]; #IO_L2N_T0_D03_14 Sch=qspi_dq[3]
set_property -dict { PACKAGE_PIN L13   IOSTANDARD LVCMOS33 } [get_ports { qspi_flash_ss_io }]; #IO_L6P_T0_FCS_B_14 Sch=qspi_csn


# --------------------------------------------------
# JTAG ports
# --------------------------------------------------

# JTAG connected to PMOD connector JC (nearest to device)
set_property PULLUP true [get_ports nTRST]
set_property PULLDOWN true [get_ports TDI]

# --------------------------------------------------
# SWD ports
# --------------------------------------------------
# 
# Shield pin 34, (DAPLink[8]), is used to detect of the DAPLink board is fitted, active low
# To allow the base board to correctly detect when the adaptor board is not fitted, pull this pin high
set_property PULLUP true [get_ports {DAPLink_tri_o[8]}]

# Shield pin 39, (DAPLink[13]), is used as an auxillary reset, active low
# To allow the base board to work when the DAPLink adaptor board is not fitted, pull this pin high
set_property PULLUP true [get_ports {DAPLink_tri_o[13]}]

# Shield pin 40, (DAPLink[14]), is the Serial Wire data, which can be tristate.  Needs a pull-up
set_property PULLUP true [get_ports {DAPLink_tri_o[14]}]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {DAPLink_tri_o_IBUF[15]}]

# Default drive strength is 12mA.  Set higher for QSPI clock.  Signal slugged due to 200R series resistors
# No great effect as RC network is frequency limiting signal
set_property DRIVE 16 [get_ports {DAPLink_tri_o[9]}]
set_property SLEW FAST [get_ports {DAPLink_tri_o[9]}]

# Do same for DAPLink SPI clock
set_property DRIVE 16 [get_ports {DAPLink_tri_o[3]}]
set_property SLEW FAST [get_ports {DAPLink_tri_o[3]}]

# --------------------------------------------------
# Camera ports
# --------------------------------------------------
set_property PULLUP true [get_ports cmos_iic_sda_io]
set_property PULLUP true [get_ports cmos_iic_scl_io]
set_property PULLUP true [get_ports {cmos_rst_tri_o[0]}]
set_property PULLDOWN true [get_ports {cmos_pwdn_tri_o[0]}]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets cmos_pclk]



# As QSPI outputs are muxed together, remove the IOBUF property from each IO flop.
# This is because IOs go via a mux, so the flop cannot be placed in the IOB
# This removes critical warnings.  No effect on the design as the property was being ignored
set_property IOB FALSE [get_cells -hierarchical -regex .*daplink.*quad.*SCK_O_NE_4_FDRE_INST]

# --------------------------------------------------
# Clocks
# --------------------------------------------------

# Rename main clock for clarity
create_generated_clock -name cpu_clk [get_pins m3_for_arty_a7_i/Clocks_and_Resets/clk_wiz_0/inst/mmcm_adv_inst/CLKOUT0]
create_generated_clock -name qspi_clk [get_pins m3_for_arty_a7_i/Clocks_and_Resets/clk_wiz_0/inst/mmcm_adv_inst/CLKOUT1]

# --------------------------------------------------
# Input clocks
# --------------------------------------------------
# Support upto 20MHz SWD
create_clock -period 50.000 -name SWCLK [get_ports {DAPLink_tri_o[15]}]

# --------------------------------------------------
# Output clocks
# --------------------------------------------------

# Base QSPI
# Need full specification as quad_spi instance in DAPLink has same instance name
create_generated_clock -name base_qspi_clk -source [get_pins -hierarchical -filter {NAME =~ m3_for_arty_a7_i/axi_quad_spi_0/sck_o}] -divide_by 1 [get_ports qspi_flash_sck*]

# DAPLink QSPI clock is on shield pin 9.
create_generated_clock -name dap_qspi_clk -source [get_pins -hierarchical -filter {NAME =~ *axi_xip_quad_spi_0/sck_o}] -divide_by 1 [get_ports {DAPLink_tri_o[9]}]

# DAPLink SPI clock is on shield pin 3.
create_generated_clock -name dap_spi_clk -source [get_pins -hierarchical -filter {NAME =~ *axi_single_spi_0/sck_o}] -divide_by 1 [get_ports {DAPLink_tri_o[3]}]

# --------------------------------------------------
# Virtual clocks
# --------------------------------------------------
create_clock -period 100.000 -name slow_out_clk

# --------------------------------------------------
# Clock groups
# --------------------------------------------------


# Set asynchronous clocks
# This comamnd overrides all other timing settings, including the desired set_max_delay.  See forum post
# https://forums.xilinx.com/t5/Timing-Analysis/CDC-Constrains-set-clock-groups-precedes-set-max-delay/td-p/589843
# Therefore better to do set_false_paths where necessary, and set_max_delay where desired.
#set_clock_groups -name async_group -asynchronous -group {cpu_clk} #                                                 -group {qspi_clk base_qspi_clk dap_qspi_clk dap_spi_clk} #                                                 -group {SWCLK} #                                                 -group {slow_out_clk}

# REVISIT - replace with max_delay constraint
#set_false_path -from [get_clocks cpu_clk] -to [get_clocks -include_generated_clocks qspi_clk]
#set_false_path -from [get_clocks -include_generated_clocks qspi_clk] -to [get_clocks cpu_clk]

set_max_delay -datapath_only -from [get_clocks cpu_clk] -to [get_clocks -include_generated_clocks qspi_clk] 16.000
set_max_delay -datapath_only -from [get_clocks -include_generated_clocks qspi_clk] -to [get_clocks cpu_clk] 16.000

# --------------------------------------------------
# Internal timings
# --------------------------------------------------
# The DAP is asynchronous to the CPU, (SWCLK and cpu_clk).
# However need to ensure that all signals pass across the relevant CDC structures quickly enough
# This should be within 2 cycles of the fastest clock, (cpu_clk).  This is currently 50MHz, ~20ns.
# We only wish to constrain the acutal datapath, we do not need to consider clock skew and jitter
# as these are asychronous clocks
# Set to be less that cpu_clk period for guaranteed transistion times.
set_max_delay -datapath_only -from [get_clocks cpu_clk] -to [get_clocks SWCLK] 16.000
set_max_delay -datapath_only -from [get_clocks SWCLK] -to [get_clocks cpu_clk] 16.000

# *****************************************************************************
# IO timings
# *****************************************************************************

# GPIO signal selecting between the two QSPI devices is static, remove timing from it to the outputs
# Were not able to correctly specify the launch flop as -from, so use the resultant net with -through
set_false_path -through [get_nets -hierarchical *qspi_sel] -to [get_clocks dap_qspi_clk]


# --------------------------------------------------
# DAPLink QSPI
# --------------------------------------------------

# The signals to and from the DAPLink QSPI have 200R in series.  These slow the outputs
# Data is written out on the falling edge of dap_qspi_clk, read by QSPI on rising edge (output delay).
# Data is read out of QSPI on the falling edge, and read by the FPGA on the rising edge (input delay).
# Limiting factor is QSPI Tco of 8ns.
# Add extra 0.5ns to all times due to 200R and board connectors.
# QSPI data in, setup 1.5ns, hold of 2ns.


# QSPI Q[3:0] & CS
set_input_delay -clock [get_clocks dap_qspi_clk] -max -add_delay 8.500 [get_ports {{DAPLink_tri_o[4]} {DAPLink_tri_o[5]} {DAPLink_tri_o[6]} {DAPLink_tri_o[7]} {DAPLink_tri_o[10]}}]
set_input_delay -clock [get_clocks dap_qspi_clk] -min -add_delay 2.000 [get_ports {{DAPLink_tri_o[4]} {DAPLink_tri_o[5]} {DAPLink_tri_o[6]} {DAPLink_tri_o[7]} {DAPLink_tri_o[10]}}]

set_output_delay -clock [get_clocks dap_qspi_clk] -max -add_delay 2.000 [get_ports {{DAPLink_tri_o[4]} {DAPLink_tri_o[5]} {DAPLink_tri_o[6]} {DAPLink_tri_o[7]} {DAPLink_tri_o[10]}}]
set_output_delay -clock [get_clocks dap_qspi_clk] -min -add_delay -2.500 [get_ports {{DAPLink_tri_o[4]} {DAPLink_tri_o[5]} {DAPLink_tri_o[6]} {DAPLink_tri_o[7]} {DAPLink_tri_o[10]}}]

# --------------------------------------------------
# DAPLink SPI
# --------------------------------------------------

# The signals to and from the DAPLink SPI have 200R in series.  These slow the outputs
# Data is written out on the falling edge of dap_spi_clk, read by SPI on rising edge (output delay).
# Data is read out of SPI on the falling edge, and read by the FPGA on the rising edge (input delay).
# No values available as these will depend on the specific SDCard used.
# Use the same values as for the QSPI.

# SPI CS, MISO & MOSI

# CS
set_output_delay -clock [get_clocks dap_spi_clk] -max -add_delay 2.000 [get_ports {DAPLink_tri_o[0]}]
set_output_delay -clock [get_clocks dap_spi_clk] -min -add_delay -2.500 [get_ports {DAPLink_tri_o[0]}]

# MISO
set_input_delay -clock [get_clocks dap_spi_clk] -max -add_delay 8.500 [get_ports {DAPLink_tri_o[1]}]
set_input_delay -clock [get_clocks dap_spi_clk] -min -add_delay 2.000 [get_ports {DAPLink_tri_o[1]}]

# MOSI
set_output_delay -clock [get_clocks dap_spi_clk] -max -add_delay 2.000 [get_ports {DAPLink_tri_o[2]}]
set_output_delay -clock [get_clocks dap_spi_clk] -min -add_delay -2.500 [get_ports {DAPLink_tri_o[2]}]

# --------------------------------------------------
# Base QSPI
# --------------------------------------------------

# Data is written out on the falling edge of dap_qspi_clk, read by QSPI on rising edge (output delay).
# Data is read out of QSPI on the falling edge, and read by the FPGA on the rising edge (input delay).
# Limiting factor is base QSPI Tco of 7ns.  Add extra 0.5ns for the board


set_input_delay  -clock [get_clocks base_qspi_clk] -max -add_delay 7.5 [get_ports qspi_flash_io?_io]
set_input_delay  -clock [get_clocks base_qspi_clk] -min -add_delay 1.5 [get_ports qspi_flash_io?_io]
set_input_delay  -clock [get_clocks base_qspi_clk] -max -add_delay 7.5 [get_ports qspi_flash_ss*]
set_input_delay  -clock [get_clocks base_qspi_clk] -min -add_delay 1.5 [get_ports qspi_flash_ss*]

set_output_delay -clock [get_clocks base_qspi_clk] -max -add_delay 2.5 [get_ports qspi_flash_io?_io]
set_output_delay -clock [get_clocks base_qspi_clk] -min -add_delay -3.5 [get_ports qspi_flash_io?_io]
set_output_delay -clock [get_clocks base_qspi_clk] -max -add_delay 2.5 [get_ports qspi_flash_ss*]
set_output_delay -clock [get_clocks base_qspi_clk] -min -add_delay -3.5 [get_ports qspi_flash_ss*]


# --------------------------------------------------
# Debug signals
# --------------------------------------------------

# Large input Tsu, as clock insertion delay is a lot shorter than datapath input delay.


# SWDIO
# SWDIO is driven at both ends by posedge clk.  The clock is sourced from the DAPLink board
# For input signals it could be either side of rising edge
# For output signals need to ensure the whole round trip is less than the period
set_input_delay -clock [get_clocks SWCLK] -max -add_delay 42.000 [get_ports {DAPLink_tri_o[14]}]
set_input_delay -clock [get_clocks SWCLK] -min -add_delay -1.000 [get_ports {DAPLink_tri_o[14]}]
set_output_delay -clock [get_clocks SWCLK] -max -add_delay 5.000 [get_ports {DAPLink_tri_o[14]}]
set_output_delay -clock [get_clocks SWCLK] -min -add_delay -5.000 [get_ports {DAPLink_tri_o[14]}]

# JTAG
# Note, these are optional ports and may be removed from the build
set_input_delay -clock [get_clocks SWCLK] -add_delay 5.000 [get_ports TDI]
set_input_delay -clock [get_clocks SWCLK] -add_delay 5.000 [get_ports nTRST]
set_output_delay -clock [get_clocks SWCLK] -add_delay 5.000 [get_ports TDO*]


# --------------------------------------------------
# Untimed ports
# --------------------------------------------------
# Following ports have no timing requirement to any output or on-board clock.
# Set to small delays to give timing closure

# Use a virtual slow clock for the untimed IO
# UART
set_input_delay -clock [get_clocks slow_out_clk] -add_delay 0.500 [get_ports usb_uart_rxd]
set_input_delay -clock [get_clocks slow_out_clk] -add_delay 0.500 [get_ports {DAPLink_tri_o[12]}]
set_output_delay -clock [get_clocks slow_out_clk] -add_delay 0.500 [get_ports usb_uart_txd]
set_output_delay -clock [get_clocks slow_out_clk] -add_delay 0.500 [get_ports {DAPLink_tri_o[11]}]

# Switch inputs
set_input_delay -clock [get_clocks slow_out_clk] -add_delay 0.500 [get_ports dip_switches*]
set_input_delay -clock [get_clocks slow_out_clk] -add_delay 0.500 [get_ports push_buttons*]

# Reset
set_input_delay -clock [get_clocks cpu_clk] -add_delay 0.500 [get_ports reset*]
# Prevent reset from timing from cpu_clk to qspi_clk
set_false_path -from [get_ports reset*] -to [get_clocks qspi_clk]

# DAPLink_fitted
set_input_delay -clock [get_clocks slow_out_clk] -add_delay 0.500 [get_ports {DAPLink_tri_o[8]}]
# nSRST
set_input_delay -clock [get_clocks slow_out_clk] -add_delay 0.500 [get_ports {DAPLink_tri_o[13]}]

# Output LEDs
set_input_delay -clock [get_clocks slow_out_clk] -add_delay 0.500 [get_ports led_4bits*]
set_input_delay -clock [get_clocks slow_out_clk] -add_delay 0.500 [get_ports rgb_led*]
set_output_delay -clock [get_clocks slow_out_clk] -add_delay 0.500 [get_ports led_4bits*]
set_output_delay -clock [get_clocks slow_out_clk] -add_delay 0.500 [get_ports rgb_led*]






