# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.cache/wt [current_project]
set_property parent.project_path D:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part_repo_paths {C:/Users/Anurag/AppData/Roaming/Xilinx/Vivado/2019.1/xhub/board_store} [current_project]
set_property board_part digilentinc.com:zedboard:part0:1.0 [current_project]
set_property ip_repo_paths {
  d:/IIIT-D/Independent_Project/HLS/least_squares
  d:/IIIT-D/Independent_Project/HLS/dnn
} [current_project]
update_ip_catalog
set_property ip_output_repo d:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib D:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.srcs/sources_1/bd/design_LSDNN/hdl/design_LSDNN_wrapper.v
add_files D:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.srcs/sources_1/bd/design_LSDNN/design_LSDNN.bd
set_property used_in_implementation false [get_files -all d:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0/design_LSDNN_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_axi_dma_0_0/design_LSDNN_axi_dma_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_axi_dma_0_0/design_LSDNN_axi_dma_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_axi_dma_0_0/design_LSDNN_axi_dma_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_1/bd_db18_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_1/bd_db18_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_2/bd_db18_arsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_3/bd_db18_rsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_4/bd_db18_awsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_5/bd_db18_wsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_6/bd_db18_bsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_10/bd_db18_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_11/bd_db18_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_12/bd_db18_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_16/bd_db18_s01a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_17/bd_db18_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_18/bd_db18_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_19/bd_db18_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_20/bd_db18_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_21/bd_db18_m00arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_22/bd_db18_m00rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_23/bd_db18_m00awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_24/bd_db18_m00wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_25/bd_db18_m00bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_rst_ps7_0_100M_0/design_LSDNN_rst_ps7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_rst_ps7_0_100M_0/design_LSDNN_rst_ps7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_rst_ps7_0_100M_0/design_LSDNN_rst_ps7_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_auto_pc_0/design_LSDNN_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_LS_estimator_0_0/constraints/LS_estimator_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_DNN_up_0_0/constraints/DNN_up_ooc.xdc]
set_property used_in_implementation false [get_files -all D:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.srcs/sources_1/bd/design_LSDNN/design_LSDNN_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top design_LSDNN_wrapper -part xc7z020clg484-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef design_LSDNN_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file design_LSDNN_wrapper_utilization_synth.rpt -pb design_LSDNN_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
