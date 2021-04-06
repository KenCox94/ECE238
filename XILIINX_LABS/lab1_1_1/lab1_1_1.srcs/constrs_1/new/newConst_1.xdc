## Clock signal
set_property PACKAGE_PIN W5 [get_ports clk]
  set_property IOSTANDARD LVCMOS33 [get_ports clk]
  create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]
set_property PACKAGE_PIN W13 [get_ports s]
set_property PACKAGE_PIN V17 [get_ports x]
set_property PACKAGE_PIN V16 [get_ports y]
set_property PACKAGE_PIN U16 [get_ports m]

set_property IOSTANDARD LVCMOS33 [get_ports m]
set_property IOSTANDARD LVCMOS33 [get_ports s]
set_property IOSTANDARD LVCMOS33 [get_ports x]
set_property IOSTANDARD LVCMOS33 [get_ports y]
