#If required use the below command and launch symbol server from an external shell.
#symbol_server.bat -S -s tcp::1534
connect -path [list tcp::1534 tcp:192.168.33.153:3121]
source D:/IIIT-D/Channel_Estimation/design_impl/LSDNN_3__UP/LSDNN_3__UP.sdk/design_LSDNN_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248A39C95"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248A39C95" && level==0} -index 1
fpga -file D:/IIIT-D/Channel_Estimation/design_impl/LSDNN_3__UP/LSDNN_3__UP.sdk/design_LSDNN_wrapper_hw_platform_0/design_LSDNN_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248A39C95"} -index 0
loadhw -hw D:/IIIT-D/Channel_Estimation/design_impl/LSDNN_3__UP/LSDNN_3__UP.sdk/design_LSDNN_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248A39C95"} -index 0
ps7_init
ps7_post_config
configparams force-mem-access 0
bpadd -addr &main
