################################################################################
# XDC file for Nexys4 Artix-7 XC7A100T-1CSG324C                                #
################################################################################

create_clock -name CLK_IN -period 10.000 [get_ports CLK_IN]
set_property PACKAGE_PIN E3 [get_ports CLK_IN]
set_property IOSTANDARD LVCMOS33 [get_ports CLK_IN]

# S, High-Active
set_property PACKAGE_PIN P18 [get_ports RST_X_IN]
set_property IOSTANDARD LVCMOS33 [get_ports RST_X_IN]

set_property PACKAGE_PIN D4 [get_ports TXD]
set_property IOSTANDARD LVCMOS33 [get_ports TXD]
