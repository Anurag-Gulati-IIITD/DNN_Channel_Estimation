## set debug_rtd_standalone true, to enable debugging
##   of this rtd, in standalone mode ... 
###################################################
set debug_rtd_standalone false


if { $debug_rtd_standalone } {
  set rt::partid xc7z020clg484-1
  if { ! [info exists ::env(RT_TMP)] } {
    set ::env(RT_TMP) [pwd]
  } 
  source $::env(SYNTH_COMMON)/task_worker.tcl
} 
set genomeRtd $env(RT_TMP)/1F9D1A33C90.rtd
set parallel_map_command "rt::do_techmap_steps"
set rt::parallelMoreOptions "set rt::bannerSuppress true"
puts "this genome's name is [subst -nocommands -novariables {L2_up__GB4}]"
puts "this genome's rtd file is $genomeRtd"
source $::env(HRT_TCL_PATH)/rtSynthPrep.tcl
source $::env(RT_TMP)/parameters.tcl
rt::set_parameter parallelChildUpdateCell true; rt::set_parameter parallelTimingMode true; rt::set_parameter parallelTimingModeRound 1; set rt::SDCFileList D:/IIIT-D/Independent_Project/design_impl/LSDNN_3__UP/LSDNN_3__UP.runs/design_LSDNN_DNN_up_0_0_synth_1/.Xil/Vivado-19300-LAPTOP-RIOQP2DJ/realtime/design_LSDNN_DNN_up_0_0_synth.xdc; 
set genomeName [subst -nocommands -novariables {L2_up__GB4}]
source $::env(SYNTH_COMMON)/synthesizeAGenome.tcl 
set rt::parallelMoreOptions "set rt::bannerSuppress false"
