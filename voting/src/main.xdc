################################################################################
# XDC file for Nexys4 Artix-7 XC7A100T-1CSG324C                                #
################################################################################

set_property -dict { PACKAGE_PIN P17   IOSTANDARD LVCMOS33 } [get_ports { a }]; #IO_L12P_T1_MRCC_14 Sch=btnl
set_property -dict { PACKAGE_PIN N17   IOSTANDARD LVCMOS33 } [get_ports { b }]; #IO_L9P_T1_DQS_14 Sch=btnc
set_property -dict { PACKAGE_PIN M17   IOSTANDARD LVCMOS33 } [get_ports { c }]; #IO_L10N_T1_D15_14 Sch=btnr

set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { g }]; #IO_L18P_T2_A24_15 Sch=led[0]
