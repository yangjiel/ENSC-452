vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/smartconnect_v1_0
vlib riviera/axi_protocol_checker_v2_0_0
vlib riviera/axi_vip_v1_1_0
vlib riviera/processing_system7_vip_v1_0_2

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_0 riviera/axi_protocol_checker_v2_0_0
vmap axi_vip_v1_1_0 riviera/axi_vip_v1_1_0
vmap processing_system7_vip_v1_0_2 riviera/processing_system7_vip_v1_0_2

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/ec67/hdl" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/d5d3/hdl/verilog" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/ec67/hdl" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/d5d3/hdl/verilog" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
"C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/ec67/hdl" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/d5d3/hdl/verilog" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/ec67/hdl" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/d5d3/hdl/verilog" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/ec67/hdl" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/d5d3/hdl/verilog" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/ec67/hdl" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/d5d3/hdl/verilog" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/d5d3/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_0  -sv2k12 "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/ec67/hdl" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/d5d3/hdl/verilog" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/ec67/hdl" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/d5d3/hdl/verilog" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/d5c1/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_0  -sv2k12 "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/ec67/hdl" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/d5d3/hdl/verilog" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/ec67/hdl" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/d5d3/hdl/verilog" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/8b42/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_2  -sv2k12 "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/ec67/hdl" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/d5d3/hdl/verilog" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/ec67/hdl" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/d5d3/hdl/verilog" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/e0a2/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/ec67/hdl" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/d5d3/hdl/verilog" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/ec67/hdl" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/d5d3/hdl/verilog" "+incdir+../../../../edt_tutorial.srcs/sources_1/bd/tutorial_bd/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../bd/tutorial_bd/ip/tutorial_bd_processing_system7_0_0/sim/tutorial_bd_processing_system7_0_0.v" \
"../../../bd/tutorial_bd/sim/tutorial_bd.v" \

vlog -work xil_defaultlib \
"glbl.v"

