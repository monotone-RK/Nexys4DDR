################################################################################
# XDC file for Nexys4 Artix-7 XC7A100T-1CSG324C                                #
################################################################################

create_clock -name CLK_IN -period 10.000 [get_ports CLK_IN]
set_property PACKAGE_PIN E3 [get_ports CLK_IN]
set_property IOSTANDARD LVCMOS33 [get_ports CLK_IN]

# S, High-Active
set_property PACKAGE_PIN P18 [get_ports RST_X_IN]
set_property IOSTANDARD LVCMOS33 [get_ports RST_X_IN]

##7 segment display
set_property PACKAGE_PIN T10 [get_ports {SEG[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SEG[0]}]
set_property PACKAGE_PIN R10 [get_ports {SEG[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SEG[1]}]
set_property PACKAGE_PIN K16 [get_ports {SEG[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SEG[2]}]
set_property PACKAGE_PIN K13 [get_ports {SEG[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SEG[3]}]
set_property PACKAGE_PIN P15 [get_ports {SEG[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SEG[4]}]
set_property PACKAGE_PIN T11 [get_ports {SEG[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SEG[5]}]
set_property PACKAGE_PIN L18 [get_ports {SEG[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SEG[6]}]

set_property PACKAGE_PIN J17 [get_ports {AN[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AN[0]}]
set_property PACKAGE_PIN J18 [get_ports {AN[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AN[1]}]
set_property PACKAGE_PIN T9 [get_ports {AN[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AN[2]}]
set_property PACKAGE_PIN J14 [get_ports {AN[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AN[3]}]
set_property PACKAGE_PIN P14 [get_ports {AN[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AN[4]}]
set_property PACKAGE_PIN T14 [get_ports {AN[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AN[5]}]
set_property PACKAGE_PIN K2 [get_ports {AN[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AN[6]}]
set_property PACKAGE_PIN U13 [get_ports {AN[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AN[7]}]
