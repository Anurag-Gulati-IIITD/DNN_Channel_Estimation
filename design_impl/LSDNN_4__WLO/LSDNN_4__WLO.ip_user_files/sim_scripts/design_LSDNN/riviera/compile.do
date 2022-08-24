vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_5
vlib riviera/processing_system7_vip_v1_0_7
vlib riviera/lib_pkg_v1_0_2
vlib riviera/fifo_generator_v13_2_4
vlib riviera/lib_fifo_v1_0_13
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/lib_cdc_v1_0_2
vlib riviera/axi_datamover_v5_1_21
vlib riviera/axi_sg_v4_1_12
vlib riviera/axi_dma_v7_1_20
vlib riviera/xlconstant_v1_1_6
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/smartconnect_v1_0
vlib riviera/xbip_utils_v3_0_10
vlib riviera/axi_utils_v2_0_6
vlib riviera/xbip_pipe_v3_0_6
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_dsp48_addsub_v3_0_6
vlib riviera/xbip_dsp48_multadd_v3_0_6
vlib riviera/xbip_bram18k_v3_0_6
vlib riviera/mult_gen_v12_0_15
vlib riviera/floating_point_v7_1_8
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_data_fifo_v2_1_18
vlib riviera/axi_register_slice_v2_1_19
vlib riviera/axi_protocol_converter_v2_1_19

vmap xilinx_vip riviera/xilinx_vip
vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_5 riviera/axi_vip_v1_1_5
vmap processing_system7_vip_v1_0_7 riviera/processing_system7_vip_v1_0_7
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_4 riviera/fifo_generator_v13_2_4
vmap lib_fifo_v1_0_13 riviera/lib_fifo_v1_0_13
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_21 riviera/axi_datamover_v5_1_21
vmap axi_sg_v4_1_12 riviera/axi_sg_v4_1_12
vmap axi_dma_v7_1_20 riviera/axi_dma_v7_1_20
vmap xlconstant_v1_1_6 riviera/xlconstant_v1_1_6
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap xbip_utils_v3_0_10 riviera/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 riviera/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 riviera/xbip_pipe_v3_0_6
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 riviera/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 riviera/xbip_dsp48_multadd_v3_0_6
vmap xbip_bram18k_v3_0_6 riviera/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_15 riviera/mult_gen_v12_0_15
vmap floating_point_v7_1_8 riviera/floating_point_v7_1_8
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_data_fifo_v2_1_18 riviera/axi_data_fifo_v2_1_18
vmap axi_register_slice_v2_1_19 riviera/axi_register_slice_v2_1_19
vmap axi_protocol_converter_v2_1_19 riviera/axi_protocol_converter_v2_1_19

vlog -work xilinx_vip  -sv2k12 "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_5  -sv2k12 "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_7  -sv2k12 "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0/sim/design_LSDNN_processing_system7_0_0.v" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_4 -93 \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_13 -93 \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/4dac/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_21 -93 \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/e644/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_12 -93 \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/91f3/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_20 -93 \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/260a/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_dma_0_0/sim/design_LSDNN_axi_dma_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/sim/bd_db18.v" \

vlog -work xlconstant_v1_1_6  -v2k5 "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/66e7/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_0/sim/bd_db18_one_0.v" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_1/sim/bd_db18_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_2/sim/bd_db18_arsw_0.sv" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_3/sim/bd_db18_rsw_0.sv" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_4/sim/bd_db18_awsw_0.sv" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_5/sim/bd_db18_wsw_0.sv" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_6/sim/bd_db18_bsw_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_7/sim/bd_db18_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_8/sim/bd_db18_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/7de4/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_9/sim/bd_db18_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_10/sim/bd_db18_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_11/sim/bd_db18_sarn_0.sv" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_12/sim/bd_db18_srn_0.sv" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_13/sim/bd_db18_s01mmu_0.sv" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_14/sim/bd_db18_s01tr_0.sv" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_15/sim/bd_db18_s01sic_0.sv" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_16/sim/bd_db18_s01a2s_0.sv" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_17/sim/bd_db18_sawn_0.sv" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_18/sim/bd_db18_swn_0.sv" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_19/sim/bd_db18_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_20/sim/bd_db18_m00s2a_0.sv" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_21/sim/bd_db18_m00arn_0.sv" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_22/sim/bd_db18_m00rn_0.sv" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_23/sim/bd_db18_m00awn_0.sv" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_24/sim/bd_db18_m00wn_0.sv" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_25/sim/bd_db18_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/bd_0/ip/ip_26/sim/bd_db18_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_LSDNN/ip/design_LSDNN_axi_smc_0/sim/design_LSDNN_axi_smc_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_LSDNN/ip/design_LSDNN_rst_ps7_0_100M_0/sim/design_LSDNN_rst_ps7_0_100M_0.vhd" \

vcom -work xbip_utils_v3_0_10 -93 \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1123/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93 \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93 \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93 \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6 -93 \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93 \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_15 -93 \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d4d2/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_8 -93 \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/83a3/hdl/floating_point_v7_1_vh_rfs.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d2c7/hdl/verilog/LS_estimator_faddhbi.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d2c7/hdl/verilog/LS_estimator_fdivkbM.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d2c7/hdl/verilog/LS_estimator_fmuljbC.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d2c7/hdl/verilog/LS_estimator_fsubibs.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d2c7/hdl/verilog/LS_estimator_preabkb.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d2c7/hdl/verilog/LS_estimator.v" \

vcom -work xil_defaultlib -93 \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d2c7/hdl/ip/LS_estimator_ap_fadd_3_full_dsp_32.vhd" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d2c7/hdl/ip/LS_estimator_ap_fdiv_14_no_dsp_32.vhd" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d2c7/hdl/ip/LS_estimator_ap_fmul_2_max_dsp_32.vhd" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d2c7/hdl/ip/LS_estimator_ap_fsub_3_full_dsp_32.vhd" \
"../../../bd/design_LSDNN/ip/design_LSDNN_LS_estimator_0_0/sim/design_LSDNN_LS_estimator_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/DNN_wlo_168_denorc3C.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/DNN_wlo_168_fcmp_bWr.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/DNN_wlo_168_fpextbkb.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/DNN_wlo_168_LS_dac2C.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/DNN_wlo_168_mac_mb0s.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/DNN_wlo_168_mac_mbXr.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/DNN_wlo_168_mac_mbYs.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/DNN_wlo_168_mac_mbZs.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/DNN_wlo_168_mac_mc0C.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/DNN_wlo_168_mac_mc4D.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/DNN_wlo_168_mac_mcSB.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/DNN_wlo_168_mac_mcTB.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/DNN_wlo_168_mac_mcUB.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/DNN_wlo_168_mac_mcVB.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/DNN_wlo_168_mac_mcWB.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/DNN_wlo_168_mac_mcXB.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/DNN_wlo_168_mac_mcYC.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/DNN_wlo_168_mac_mcZC.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/DNN_wlo_168_mean_c1C.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/DNN_wlo_168_sdiv_eOg.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/DNN_wlo_168_std_o_V.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/DNN_wlo_168_y_L3_V.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_BIAfYi.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEI0iy.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEI1iI.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEI2iS.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEI3i2.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEI4jc.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEI5jm.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEI6jw.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEI7jG.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEI8jQ.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEI9j0.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIAem.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbak.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbAo.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbbk.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbBo.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbck.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbCo.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbdk.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbDo.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbek.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbEo.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIBew.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbfk.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbFp.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbgk.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbGp.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbhl.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbHp.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbil.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbIp.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbjl.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbJp.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbkl.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbKp.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbll.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbLp.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbml.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbMq.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbnm.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbNq.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbom.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbOq.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbpm.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbPq.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbqm.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbQq.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbrm.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbRq.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbsm.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbSr.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbtn.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbTr.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbun.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbUr.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbvn.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbVr.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbwn.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbxn.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbyn.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIbzo.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEICeG.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIDeQ.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIEe0.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIFfa.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIg8j.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIGfk.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIhbi.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIHfu.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIibs.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIIfE.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIjbC.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIJfO.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIkbM.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIKfY.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIlbW.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEILf8.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEImb6.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIMgi.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIncg.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEINgs.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIocq.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIOgC.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIpcA.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIPgM.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIqcK.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIQgW.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIrcU.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIRg6.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIsc4.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIShg.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEItde.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIThq.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIudo.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIUhA.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIvdy.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIVhK.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIwdI.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIWhU.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIxdS.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIXh4.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIyd2.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIYie.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIzec.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L2_wlo_168_L1_WEIZio.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_BIAb1s.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIb2s.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIb3s.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIb4t.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIb5t.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIb6t.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIb7t.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIb8t.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIb9t.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIcau.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIcAy.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIcbu.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIcBy.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIccu.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIcCy.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIcdu.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIcDy.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIceu.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIcEy.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIcfu.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIcFz.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIcgu.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIcGz.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIchv.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIcHz.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIciv.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIcIz.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIcjv.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIcJz.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIckv.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIcKz.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIclv.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIcLz.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIcMA.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIcmv.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIcNA.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIcnw.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIcOA.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIcow.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIcPA.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIcpw.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIcQA.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIcqw.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIcRA.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIcrw.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIcsw.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIctx.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIcux.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIcvx.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIcwx.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIcxx.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIcyx.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/L3_wlo_168_L2_WEIczy.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/normalize_wlo_168.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/normalize_wlo_168cud.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/normalize_wlo_168dEe.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/reconstruct_complex_s.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/separate_complex_wlo.v" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/verilog/DNN_wlo_168.v" \

vcom -work xil_defaultlib -93 \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/ip/DNN_wlo_168_ap_fcmp_0_no_dsp_32.vhd" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/d54e/hdl/ip/DNN_wlo_168_ap_fpext_0_no_dsp_32.vhd" \
"../../../bd/design_LSDNN/ip/design_LSDNN_DNN_wlo_168_0_0/sim/design_LSDNN_DNN_wlo_168_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_18  -v2k5 "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_19  -v2k5 "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_19  -v2k5 "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/ec67/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/8c62/hdl" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/1ddd/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ipshared/b2d0/hdl/verilog" "+incdir+../../../../LSDNN_4__WLO.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_processing_system7_0_0" "+incdir+D:/Softwares/Xilinx/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_LSDNN/ip/design_LSDNN_auto_pc_0/sim/design_LSDNN_auto_pc_0.v" \
"../../../bd/design_LSDNN/sim/design_LSDNN.v" \

vlog -work xil_defaultlib \
"glbl.v"

