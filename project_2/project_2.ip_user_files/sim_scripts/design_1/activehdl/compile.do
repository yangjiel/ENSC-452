vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_protocol_checker_v2_0_0
vlib activehdl/axi_vip_v1_1_0
vlib activehdl/processing_system7_vip_v1_0_2

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_0 activehdl/axi_protocol_checker_v2_0_0
vmap axi_vip_v1_1_0 activehdl/axi_vip_v1_1_0
vmap processing_system7_vip_v1_0_2 activehdl/processing_system7_vip_v1_0_2

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/d5d3/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/d5d3/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
"C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/d5d3/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/d5d3/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/d5d3/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/d5d3/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../project_2.srcs/sources_1/bd/design_1/ipshared/d5d3/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_0  -sv2k12 "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/d5d3/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/d5d3/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../project_2.srcs/sources_1/bd/design_1/ipshared/d5c1/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_0  -sv2k12 "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/d5d3/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/d5d3/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../project_2.srcs/sources_1/bd/design_1/ipshared/8b42/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_2  -sv2k12 "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/d5d3/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/d5d3/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../project_2.srcs/sources_1/bd/design_1/ipshared/e0a2/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/d5d3/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/d5d3/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0_1/sim/design_1_processing_system7_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ipshared/8125/src/ADAU1761_interface.vhd" \
"../../../bd/design_1/ipshared/8125/src/adau1761_configuraiton_data.vhd" \
"../../../bd/design_1/ipshared/8125/src/adau1761_izedboard.vhd" \
"../../../bd/design_1/ipshared/8125/src/audio_top.vhd" \
"../../../bd/design_1/ipshared/8125/src/clocking.vhd" \
"../../../bd/design_1/ipshared/8125/src/i2c.vhd" \
"../../../bd/design_1/ipshared/8125/src/i2s_data_interface.vhd" \
"../../../bd/design_1/ipshared/8125/src/i3c2.vhd" \
"../../../bd/design_1/ipshared/8125/src/audio_testbench.vhd" \
"../../../bd/design_1/ip/design_1_audio_testbench_0_0_1/sim/design_1_audio_testbench_0_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

