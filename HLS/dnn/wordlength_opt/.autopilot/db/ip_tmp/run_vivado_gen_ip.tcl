create_project prj -part xc7z020-clg484-1 -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "D:/IIIT-D/Channel_Estimation/HLS/dnn/wordlength_opt/syn/verilog/DNN_wlo_ap_hadd_3_full_dsp_16_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips DNN_wlo_ap_hadd_3_full_dsp_16]]
}
source "D:/IIIT-D/Channel_Estimation/HLS/dnn/wordlength_opt/syn/verilog/DNN_wlo_ap_hcmp_0_no_dsp_16_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips DNN_wlo_ap_hcmp_0_no_dsp_16]]
}
source "D:/IIIT-D/Channel_Estimation/HLS/dnn/wordlength_opt/syn/verilog/DNN_wlo_ap_hdiv_5_no_dsp_16_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips DNN_wlo_ap_hdiv_5_no_dsp_16]]
}
source "D:/IIIT-D/Channel_Estimation/HLS/dnn/wordlength_opt/syn/verilog/DNN_wlo_ap_hmul_2_max_dsp_16_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips DNN_wlo_ap_hmul_2_max_dsp_16]]
}
source "D:/IIIT-D/Channel_Estimation/HLS/dnn/wordlength_opt/syn/verilog/DNN_wlo_ap_hptosp_0_no_dsp_16_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips DNN_wlo_ap_hptosp_0_no_dsp_16]]
}
source "D:/IIIT-D/Channel_Estimation/HLS/dnn/wordlength_opt/syn/verilog/DNN_wlo_ap_hsub_3_full_dsp_16_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips DNN_wlo_ap_hsub_3_full_dsp_16]]
}
source "D:/IIIT-D/Channel_Estimation/HLS/dnn/wordlength_opt/syn/verilog/DNN_wlo_ap_sptohp_0_no_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips DNN_wlo_ap_sptohp_0_no_dsp_32]]
}
