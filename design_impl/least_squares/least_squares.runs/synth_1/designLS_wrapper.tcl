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
set_property webtalk.parent_dir D:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.cache/wt [current_project]
set_property parent.project_path D:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part_repo_paths {C:/Users/Anurag/AppData/Roaming/Xilinx/Vivado/2019.1/xhub/board_store} [current_project]
set_property board_part digilentinc.com:zedboard:part0:1.0 [current_project]
set_property ip_repo_paths d:/IIIT-D/Channel_Estimation/HLS/least_squares [current_project]
update_ip_catalog
set_property ip_output_repo d:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib D:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/hdl/designLS_wrapper.v
add_files D:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/designLS.bd
set_property used_in_implementation false [get_files -all d:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/ip/designLS_processing_system7_0_0/designLS_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/ip/designLS_axi_dma_0_0/designLS_axi_dma_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/ip/designLS_axi_dma_0_0/designLS_axi_dma_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/ip/designLS_axi_dma_0_0/designLS_axi_dma_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/ip/designLS_axi_smc_0/ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/ip/designLS_axi_smc_0/bd_0/ip/ip_1/bd_edf3_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/ip/designLS_axi_smc_0/bd_0/ip/ip_1/bd_edf3_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/ip/designLS_axi_smc_0/bd_0/ip/ip_2/bd_edf3_arsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/ip/designLS_axi_smc_0/bd_0/ip/ip_3/bd_edf3_rsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/ip/designLS_axi_smc_0/bd_0/ip/ip_4/bd_edf3_awsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/ip/designLS_axi_smc_0/bd_0/ip/ip_5/bd_edf3_wsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/ip/designLS_axi_smc_0/bd_0/ip/ip_6/bd_edf3_bsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/ip/designLS_axi_smc_0/bd_0/ip/ip_10/bd_edf3_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/ip/designLS_axi_smc_0/bd_0/ip/ip_11/bd_edf3_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/ip/designLS_axi_smc_0/bd_0/ip/ip_12/bd_edf3_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/ip/designLS_axi_smc_0/bd_0/ip/ip_16/bd_edf3_s01a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/ip/designLS_axi_smc_0/bd_0/ip/ip_17/bd_edf3_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/ip/designLS_axi_smc_0/bd_0/ip/ip_18/bd_edf3_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/ip/designLS_axi_smc_0/bd_0/ip/ip_19/bd_edf3_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/ip/designLS_axi_smc_0/bd_0/ip/ip_20/bd_edf3_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/ip/designLS_axi_smc_0/bd_0/ip/ip_21/bd_edf3_m00arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/ip/designLS_axi_smc_0/bd_0/ip/ip_22/bd_edf3_m00rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/ip/designLS_axi_smc_0/bd_0/ip/ip_23/bd_edf3_m00awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/ip/designLS_axi_smc_0/bd_0/ip/ip_24/bd_edf3_m00wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/ip/designLS_axi_smc_0/bd_0/ip/ip_25/bd_edf3_m00bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/ip/designLS_rst_ps7_0_100M_0/designLS_rst_ps7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/ip/designLS_rst_ps7_0_100M_0/designLS_rst_ps7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/ip/designLS_rst_ps7_0_100M_0/designLS_rst_ps7_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/ip/designLS_LS_estimator_0_0/constraints/LS_estimator_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/ip/designLS_system_ila_0_0/designLS_system_ila_0_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all d:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/ip/designLS_system_ila_0_0/bd_0/ip/ip_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/ip/designLS_system_ila_0_0/bd_0/ip/ip_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/ip/designLS_system_ila_0_0/bd_0/ip/ip_0/ila_v6_2/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/ip/designLS_system_ila_0_0/bd_0/ip/ip_0/bd_8a58_ila_lib_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/ip/designLS_system_ila_0_0/bd_0/bd_8a58_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/ip/designLS_auto_pc_0/designLS_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all D:/IIIT-D/Channel_Estimation/design_impl/least_squares/least_squares.srcs/sources_1/bd/designLS/designLS_ooc.xdc]

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

synth_design -top designLS_wrapper -part xc7z020clg484-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef designLS_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file designLS_wrapper_utilization_synth.rpt -pb designLS_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
