
set PATH=
call D:/Softwares/Xilinx/Vivado/Vivado/2019.1/bin/xelab xil_defaultlib.apatb_DNN_wlo_top glbl -prj DNN_wlo.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm --initfile "D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s DNN_wlo 
call D:/Softwares/Xilinx/Vivado/Vivado/2019.1/bin/xsim --noieeewarnings DNN_wlo -tclbatch DNN_wlo.tcl

