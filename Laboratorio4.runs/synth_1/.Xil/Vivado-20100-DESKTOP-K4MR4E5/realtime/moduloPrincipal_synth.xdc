set_property SRC_FILE_INFO {cfile:C:/Users/aebol/OneDrive/Documents/Vivado/hw/hw.srcs/constrs_1/imports/constraints/Basys3_Master.xdc rfile:../../../../../../../Documents/Vivado/hw/hw.srcs/constrs_1/imports/constraints/Basys3_Master.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports reloj]
set_property src_info {type:XDC file:1 line:9 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports reloj]
set_property src_info {type:XDC file:1 line:103 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports reinicio]