vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_5
vlib modelsim_lib/msim/processing_system7_vip_v1_0_7
vlib modelsim_lib/msim/lib_pkg_v1_0_2
vlib modelsim_lib/msim/fifo_generator_v13_2_4
vlib modelsim_lib/msim/lib_fifo_v1_0_13
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_2
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/axi_datamover_v5_1_21
vlib modelsim_lib/msim/axi_sg_v4_1_12
vlib modelsim_lib/msim/axi_dma_v7_1_20
vlib modelsim_lib/msim/xlconstant_v1_1_6
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/xbip_utils_v3_0_10
vlib modelsim_lib/msim/axi_utils_v2_0_6
vlib modelsim_lib/msim/xbip_pipe_v3_0_6
vlib modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vlib modelsim_lib/msim/xbip_dsp48_addsub_v3_0_6
vlib modelsim_lib/msim/xbip_dsp48_multadd_v3_0_6
vlib modelsim_lib/msim/xbip_bram18k_v3_0_6
vlib modelsim_lib/msim/mult_gen_v12_0_15
vlib modelsim_lib/msim/floating_point_v7_1_8
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_data_fifo_v2_1_18
vlib modelsim_lib/msim/axi_register_slice_v2_1_19
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_19

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_5 modelsim_lib/msim/axi_vip_v1_1_5
vmap processing_system7_vip_v1_0_7 modelsim_lib/msim/processing_system7_vip_v1_0_7
vmap lib_pkg_v1_0_2 modelsim_lib/msim/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_4 modelsim_lib/msim/fifo_generator_v13_2_4
vmap lib_fifo_v1_0_13 modelsim_lib/msim/lib_fifo_v1_0_13
vmap lib_srl_fifo_v1_0_2 modelsim_lib/msim/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_21 modelsim_lib/msim/axi_datamover_v5_1_21
vmap axi_sg_v4_1_12 modelsim_lib/msim/axi_sg_v4_1_12
vmap axi_dma_v7_1_20 modelsim_lib/msim/axi_dma_v7_1_20
vmap xlconstant_v1_1_6 modelsim_lib/msim/xlconstant_v1_1_6
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap xbip_utils_v3_0_10 modelsim_lib/msim/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 modelsim_lib/msim/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 modelsim_lib/msim/xbip_pipe_v3_0_6
vmap xbip_dsp48_wrapper_v3_0_4 modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 modelsim_lib/msim/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 modelsim_lib/msim/xbip_dsp48_multadd_v3_0_6
vmap xbip_bram18k_v3_0_6 modelsim_lib/msim/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_15 modelsim_lib/msim/mult_gen_v12_0_15
vmap floating_point_v7_1_8 modelsim_lib/msim/floating_point_v7_1_8
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_data_fifo_v2_1_18 modelsim_lib/msim/axi_data_fifo_v2_1_18
vmap axi_register_slice_v2_1_19 modelsim_lib/msim/axi_register_slice_v2_1_19
vmap axi_protocol_converter_v2_1_19 modelsim_lib/msim/axi_protocol_converter_v2_1_19

vlog -work xilinx_vip -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_5 -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_7 -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0/sim/design_LSDNN_processing_system7_0_0.v" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_4 -64 -incr "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_4 -64 -93 \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_4 -64 -incr "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_13 -64 -93 \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/4dac/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_21 -64 -93 \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/e644/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_12 -64 -93 \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/91f3/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_20 -64 -93 \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/260a/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_dma_0_0/sim/design_LSDNN_axi_dma_0_0.vhd" \

vlog -work xlconstant_v1_1_6 -64 -incr "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/66e7/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_0/sim/bd_db18_one_0.v" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_1/sim/bd_db18_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_2/sim/bd_db18_arsw_0.sv" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_3/sim/bd_db18_rsw_0.sv" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_4/sim/bd_db18_awsw_0.sv" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_5/sim/bd_db18_wsw_0.sv" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_6/sim/bd_db18_bsw_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_7/sim/bd_db18_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_8/sim/bd_db18_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/7de4/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_9/sim/bd_db18_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_10/sim/bd_db18_s00a2s_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_11/sim/bd_db18_sarn_0.sv" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_12/sim/bd_db18_srn_0.sv" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_13/sim/bd_db18_s01mmu_0.sv" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_14/sim/bd_db18_s01tr_0.sv" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_15/sim/bd_db18_s01sic_0.sv" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_16/sim/bd_db18_s01a2s_0.sv" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_17/sim/bd_db18_sawn_0.sv" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_18/sim/bd_db18_swn_0.sv" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_19/sim/bd_db18_sbn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_20/sim/bd_db18_m00s2a_0.sv" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_21/sim/bd_db18_m00arn_0.sv" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_22/sim/bd_db18_m00rn_0.sv" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_23/sim/bd_db18_m00awn_0.sv" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_24/sim/bd_db18_m00wn_0.sv" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_25/sim/bd_db18_m00bn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_26/sim/bd_db18_m00e_0.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/sim/bd_db18.v" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/sim/design_LSDNN_axi_smc_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_LSDNN/ip/design_LSDNN_rst_ps7_0_100M_0/sim/design_LSDNN_rst_ps7_0_100M_0.vhd" \

vcom -work xbip_utils_v3_0_10 -64 -93 \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1123/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -64 -93 \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -64 -93 \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -64 -93 \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -64 -93 \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6 -64 -93 \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -64 -93 \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_15 -64 -93 \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/d4d2/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_8 -64 -93 \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/83a3/hdl/floating_point_v7_1_vh_rfs.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/d2c7/hdl/verilog/LS_estimator_faddhbi.v" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/d2c7/hdl/verilog/LS_estimator_fdivkbM.v" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/d2c7/hdl/verilog/LS_estimator_fmuljbC.v" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/d2c7/hdl/verilog/LS_estimator_fsubibs.v" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/d2c7/hdl/verilog/LS_estimator_preabkb.v" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/d2c7/hdl/verilog/LS_estimator.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/d2c7/hdl/ip/LS_estimator_ap_fadd_3_full_dsp_32.vhd" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/d2c7/hdl/ip/LS_estimator_ap_fdiv_14_no_dsp_32.vhd" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/d2c7/hdl/ip/LS_estimator_ap_fmul_2_max_dsp_32.vhd" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/d2c7/hdl/ip/LS_estimator_ap_fsub_3_full_dsp_32.vhd" \
"../../../bd/design_LSDNN/ip/design_LSDNN_LS_estimator_0_0/sim/design_LSDNN_LS_estimator_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b7e2/hdl/verilog/DNN_u_denorm_DNN.v" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b7e2/hdl/verilog/DNN_u_faddfsub_32bkb.v" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b7e2/hdl/verilog/DNN_u_fcmp_32ns_3eOg.v" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b7e2/hdl/verilog/DNN_u_fdiv_32ns_3dEe.v" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b7e2/hdl/verilog/DNN_u_fmul_32ns_3cud.v" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b7e2/hdl/verilog/DNN_u_L1_BIAS.v" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b7e2/hdl/verilog/DNN_u_L1_WEIGHTS.v" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b7e2/hdl/verilog/DNN_u_L2_BIAS.v" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b7e2/hdl/verilog/DNN_u_L2_WEIGHTS.v" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b7e2/hdl/verilog/DNN_u_LS_data.v" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b7e2/hdl/verilog/DNN_u_mean_in.v" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b7e2/hdl/verilog/DNN_u_mean_o.v" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b7e2/hdl/verilog/DNN_u_norm_LS_data.v" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b7e2/hdl/verilog/DNN_u_std_in.v" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b7e2/hdl/verilog/DNN_u_std_o.v" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b7e2/hdl/verilog/DNN_u_y_L2.v" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b7e2/hdl/verilog/reconstruct_complex_s.v" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b7e2/hdl/verilog/separate_complex_u.v" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b7e2/hdl/verilog/DNN_u.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b7e2/hdl/ip/DNN_u_ap_faddfsub_3_full_dsp_32.vhd" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b7e2/hdl/ip/DNN_u_ap_fcmp_0_no_dsp_32.vhd" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b7e2/hdl/ip/DNN_u_ap_fdiv_14_no_dsp_32.vhd" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b7e2/hdl/ip/DNN_u_ap_fmul_2_max_dsp_32.vhd" \
"../../../bd/design_LSDNN/ip/design_LSDNN_DNN_u_0_0/sim/design_LSDNN_DNN_u_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_18 -64 -incr "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_19 -64 -incr "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_19 -64 -incr "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_LSDNN/ip/design_LSDNN_auto_pc_0/sim/design_LSDNN_auto_pc_0.v" \
"../../../bd/design_LSDNN/sim/design_LSDNN.v" \

vlog -work xil_defaultlib \
"glbl.v"

