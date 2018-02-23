vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/axi_protocol_checker_v2_0_0
vlib modelsim_lib/msim/axi_vip_v1_1_0
vlib modelsim_lib/msim/processing_system7_vip_v1_0_2

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_0 modelsim_lib/msim/axi_protocol_checker_v2_0_0
vmap axi_vip_v1_1_0 modelsim_lib/msim/axi_vip_v1_1_0
vmap processing_system7_vip_v1_0_2 modelsim_lib/msim/processing_system7_vip_v1_0_2

vlog -work xil_defaultlib -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_0 -L axi_vip_v1_1_0 -L processing_system7_vip_v1_0_2 -L xilinx_vip "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/ec67/hdl" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/d5d3/hdl/verilog" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/ec67/hdl" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/d5d3/hdl/verilog" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
"C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/ec67/hdl" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/d5d3/hdl/verilog" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/ec67/hdl" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/d5d3/hdl/verilog" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_0 -L axi_vip_v1_1_0 -L processing_system7_vip_v1_0_2 -L xilinx_vip "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/ec67/hdl" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/d5d3/hdl/verilog" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/ec67/hdl" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/d5d3/hdl/verilog" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/d5d3/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_0 -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_0 -L axi_vip_v1_1_0 -L processing_system7_vip_v1_0_2 -L xilinx_vip "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/ec67/hdl" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/d5d3/hdl/verilog" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/ec67/hdl" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/d5d3/hdl/verilog" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/d5c1/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_0 -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_0 -L axi_vip_v1_1_0 -L processing_system7_vip_v1_0_2 -L xilinx_vip "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/ec67/hdl" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/d5d3/hdl/verilog" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/ec67/hdl" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/d5d3/hdl/verilog" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/8b42/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_2 -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_0 -L axi_vip_v1_1_0 -L processing_system7_vip_v1_0_2 -L xilinx_vip "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/ec67/hdl" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/d5d3/hdl/verilog" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/ec67/hdl" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/d5d3/hdl/verilog" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/e0a2/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/ec67/hdl" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/d5d3/hdl/verilog" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/ec67/hdl" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/d5d3/hdl/verilog" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../bd/tutorial_bd/ip/tutorial_bd_processing_system7_0_0/sim/tutorial_bd_processing_system7_0_0.v" \
"../../../bd/tutorial_bd/sim/tutorial_bd.v" \

vlog -work xil_defaultlib \
"glbl.v"

