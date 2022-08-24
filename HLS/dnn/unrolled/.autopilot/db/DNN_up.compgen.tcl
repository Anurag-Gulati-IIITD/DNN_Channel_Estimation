# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 399
set hasByteEnable 0
set MemName DNN_up_std_o
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "00111111001101001001010010100011" "00111111001101100110100100010110" "00111111001101110010110111100100" "00111111001101011011100111011000" "00111111001101001101111101011001" "00111111001101100001010100100011" "00111111001101110000101011110110" "00111111001101100011100010101000" "00111111001101010101010010111001" "00111111001101011110100110101111" "00111111001101101100010011000110" "00111111001101100110011111101000" "00111111001101011001111010010101" "00111111001101011110010111110011" "00111111001101101010011110111101" "00111111001101100101101101000010" "00111111001101011000101100101111" "00111111001101011110000100011010" "00111111001101101011111101110111" "00111111001101100100100111110101" "00111111001101010011011001100001" "00111111001101011011000011011110" "00111111001101101111010111001011" "00111111001101100111111010010101" "00111111001101001111100101101110" "00111111001101010101011100000100" "00111111001101110000000100110010" "00111111001101010001011000110011" "00111111001101001110011101101000" "00111111001101101110010010011111" "00111111001101110110111000101111" "00111111001101010111101111001000" "00111111001101000111100111110110" "00111111001101100001100101000100" "00111111001101110101010000111011" "00111111001101011111101010011000" "00111111001101000101010000000100" "00111111001101010000010010000001" "00111111001101101010110000100001" "00111111001101101000000111001011" "00111111001101001100101011100110" "00111111001101000100000111101110" "00111111001101011100100101110001" "00111111001101101111001100001010" "00111111001101011100110100011100" "00111111001101000010110011010100" "00111111001101001111000111000011" "00111111001101101111100100000001" "00111111001101101100110000111110" "00111111001101001010010111110000" "00111111001101000100010010111111" "00111111001101100101111101010010" "00111111001101110001011101101010" "00111111001101010101111000011000" "00111111001101001010111100111110" "00111111001101100011101100100101" "00111111001101110010011100000011" "00111111001101100000001110000010" "00111111001101010001101001010100" "00111111001101011111100110001011" "00111111001101101110011000110010" "00111111001101100101100110011111" "00111111001101011000001110100101" "00111111001101011110010010010011" "00111111001101101010111011110011" "00111111001101100110011010101010" "00111111001101011010000011001111" "00111111001101011110011100100001" "00111111001101101010111000011001" "00111111001101100100111000111000" "00111111001101010110010000001111" "00111111001101011100111101000110" "00111111001101101101100010110010" "00111111001101100101100001100000" "00111111001101010000111100001111" "00111111001101011000011110110101" "00111111001101110000111111110001" "00111111001101101011101001011010" "00111111001101010010000011110011" "00111111001101110001001001001101" "00111111001101110100001011101110" "00111111001101010100001101001010" "00111111001101001010110101111001" "00111111001101101000111111110011" "00111111001101110111010110100111" "00111111001101011011100111000111" "00111111001101000101011111000001" "00111111001101011000111010101000" "00111111001101110000110110010101" "00111111001101100011110110110100" "00111111001101000111100101001111" "00111111001101001001000000101110" "00111111001101100011110001110101" "00111111001101101100000110100000" "00111111001101010100000110110111" "00111111001101000010000101001011" "00111111001101010101101000001000" "00111111001101110000100100110001" "00111111001101100101011101100100" "00111111001101000101110001111001" "00111111001101001001001110100111" "00111111001101101011111010001100" "00111111001101110001110110000010" "00111111001101001111111111001001" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 400
set hasByteEnable 0
set MemName DNN_up_mean_o
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "10111011001110000000011001101100" "10111010101011011100110100101101" "00111010001001000001101000100110" "00111011000110011010111010010010" "00111011010101000100010101100111" "00111011001111011100101011010001" "00111010101000110101000011010011" "10111010101000000010101110000100" "10111011011000100010101000101100" "10111011100010101100111000100101" "10111011010000000000010100111110" "00110111110000001111000000100000" "00111011010100000111100001010011" "00111011100111110011100000111111" "00111011100001100111101011011001" "00111010101001001100000111101100" "10111011000100101001101010100010" "10111011100101110110001101011110" "10111011100110110101101001100100" "10111011001010011100110111000100" "00111010010001010010000111011110" "00111011011100011101001111101101" "00111011100111110011100000111111" "00111011011101011110010000011101" "00111010011100010110111101000100" "10111011000101100100011000101000" "10111011100100100101111111101001" "10111011001000111101011100001010" "00111010000101111100100000001000" "00111011010111011110011110100111" "00111011100110010110001100010011" "00111011011111010100101111110001" "00111010101000100100010001100011" "10111011000010000001111001000111" "10111011100101001011101111100100" "10111011100111110111001011110111" "10111011001100110111000000000100" "00111010011001101010111111001101" "00111011100001101010010011001010" "00111011101010010110000010110111" "00111011011000101111001110000000" "00110101100001100011011110111101" "10111011010100101100001110000111" "10111011100100011101100110110010" "10111011010101110100100100101000" "10111010001110111011000111110010" "00111010110110110000010101110101" "00111011001101101000010010001100" "00111011001001011101111100100010" "00111010110001011110101100110001" "00111001101100101100100000111111" "10111010001111111010000010010100" "00111010101111011010100101000011" "00111011001110001010111000110010" "00111011010001110101110001001011" "00111011000010011101001001111100" "00111001100111001100001100011010" "10111010111010111110110111111010" "10111011010111011110011110100111" "10111011011011011110010101001011" "10111011000011000011111100111110" "00111010001001001110001101111010" "00111011010111100110110111011111" "00111011100110001001000101011100" "00111011011010110001001111100000" "00111010000111100101010111000001" "10111011001101110000101011000100" "10111011100111101010000101000000" "10111011100100110000011110101111" "10111010111111001001001101100100" "00111010110010011111101101100001" "00111011100010100111000111011110" "00111011100111110111101101011011" "00111011010100101001000100110010" "00111000101011100001000001001001" "10111011010001110010100111110110" "10111011100110100011110100101110" "10111011100010001100111001110000" "00111010110000000010011011001100" "00111011100000011001000010001110" "00111011100101111011011101000001" "00111011010100101011001011000000" "00111001101100011011101111001111" "10111011001100111011001100100000" "10111011100110000010110010110010" "10111011100100010001100011000010" "10111011000001110000000100010001" "00111010101111010010001100001100" "00111011100011110001000010101010" "00111011101010000001100110001111" "00111011010100101101010001001110" "10111001110100101100001110000111" "10111011011101001110100001110101" "10111011101000100001001000001110" "10111011011000111100110110011010" "10111001101111010100010010011010" "00111011001001011000101100111111" "00111011011100110011010001000000" "00111011010000010011001100111100" "00111010100011111100100100110110" "10111010001101010110011101010101" "10111010111001101010111111001101" "10111011000010010100110001000100" "10111010111111010001100110011100" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 401
set hasByteEnable 0
set MemName DNN_up_LS_data
set CoreName ap_simcore_mem
set PortList { 2 0 }
set DataWd 32
set AddrRange 104
set AddrWd 7
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 402
set hasByteEnable 0
set MemName DNN_up_y_L3
set CoreName ap_simcore_mem
set PortList { 2 3 }
set DataWd 32
set AddrRange 104
set AddrWd 7
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 403
set hasByteEnable 0
set MemName DNN_up_denorm_DNN
set CoreName ap_simcore_mem
set PortList { 2 1 }
set DataWd 32
set AddrRange 104
set AddrWd 7
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 404 \
    name LS_stream_V_data \
    reset_level 0 \
    sync_rst true \
    corename {LS_stream} \
    metadata {  } \
    op interface \
    ports { LS_stream_TDATA { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'LS_stream_V_data'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 405 \
    name LS_stream_V_last_V \
    reset_level 0 \
    sync_rst true \
    corename {LS_stream} \
    metadata {  } \
    op interface \
    ports { LS_stream_TVALID { I 1 bit } LS_stream_TREADY { O 1 bit } LS_stream_TLAST { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'LS_stream_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 406 \
    name DNN_out_V_data \
    reset_level 0 \
    sync_rst true \
    corename {DNN_out} \
    metadata {  } \
    op interface \
    ports { DNN_out_TDATA { O 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'DNN_out_V_data'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 407 \
    name DNN_out_V_last_V \
    reset_level 0 \
    sync_rst true \
    corename {DNN_out} \
    metadata {  } \
    op interface \
    ports { DNN_out_TVALID { O 1 bit } DNN_out_TREADY { I 1 bit } DNN_out_TLAST { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'DNN_out_V_last_V'"
}
}



# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -1 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst_n
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -2 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_rst_n \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


