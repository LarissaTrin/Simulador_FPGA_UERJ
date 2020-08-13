vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/sim_clk_gen_v1_0_2
vlib modelsim_lib/msim/xil_defaultlib

vmap sim_clk_gen_v1_0_2 modelsim_lib/msim/sim_clk_gen_v1_0_2
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work sim_clk_gen_v1_0_2 -64 -incr \
"../../../../Testes1308.srcs/sources_1/bd/design_TestePrecision/ipshared/d987/hdl/sim_clk_gen_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/design_TestePrecision/ip/design_TestePrecision_sim_clk_gen_0_0/sim/design_TestePrecision_sim_clk_gen_0_0.v" \
"../../../bd/design_TestePrecision/sim/design_TestePrecision.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_TestePrecision/ipshared/ce9f/CMFtesteprecision/solution1/syn/vhdl/CMFtestePrecision.vhd" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/design_TestePrecision/ipshared/ce9f/CMFtesteprecision/solution1/impl/verilog/CMFtestePrecision.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_TestePrecision/ip/design_TestePrecision_CMFtestePrecision_0_0/sim/design_TestePrecision_CMFtestePrecision_0_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

