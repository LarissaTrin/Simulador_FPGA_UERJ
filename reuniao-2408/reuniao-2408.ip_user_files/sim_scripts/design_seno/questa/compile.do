vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xlconstant_v1_1_5
vlib questa_lib/msim/sim_clk_gen_v1_0_2

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_5 questa_lib/msim/xlconstant_v1_1_5
vmap sim_clk_gen_v1_0_2 questa_lib/msim/sim_clk_gen_v1_0_2

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_seno/ipshared/d3cd/solution1/syn/vhdl/sen_second_order_eOg.vhd" \

vlog -work xil_defaultlib -64 \
"../../../bd/design_seno/ipshared/d3cd/solution1/impl/verilog/sen_second_order_eOg.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_seno/ipshared/d3cd/solution1/syn/vhdl/sen_second_order_dEe.vhd" \

vlog -work xil_defaultlib -64 \
"../../../bd/design_seno/ipshared/d3cd/solution1/impl/verilog/sen_second_order_dEe.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_seno/ipshared/d3cd/solution1/syn/vhdl/sen_second_order_cud.vhd" \

vlog -work xil_defaultlib -64 \
"../../../bd/design_seno/ipshared/d3cd/solution1/impl/verilog/sen_second_order_cud.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_seno/ipshared/d3cd/solution1/syn/vhdl/sen_ref_4oPi_tablbkb.vhd" \

vlog -work xil_defaultlib -64 \
"../../../bd/design_seno/ipshared/d3cd/solution1/impl/verilog/sen_ref_4oPi_tablbkb.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_seno/ipshared/d3cd/solution1/syn/vhdl/sen_mux_83_1_1_1.vhd" \

vlog -work xil_defaultlib -64 \
"../../../bd/design_seno/ipshared/d3cd/solution1/impl/verilog/sen_mux_83_1_1_1.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_seno/ipshared/d3cd/solution1/syn/vhdl/sen_mux_164_1_1_1.vhd" \

vlog -work xil_defaultlib -64 \
"../../../bd/design_seno/ipshared/d3cd/solution1/impl/verilog/sen_mux_164_1_1_1.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_seno/ipshared/d3cd/solution1/syn/vhdl/sen_mul_mul_15ns_hbi.vhd" \

vlog -work xil_defaultlib -64 \
"../../../bd/design_seno/ipshared/d3cd/solution1/impl/verilog/sen_mul_mul_15ns_hbi.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_seno/ipshared/d3cd/solution1/syn/vhdl/sen_mul_mul_15ns_g8j.vhd" \

vlog -work xil_defaultlib -64 \
"../../../bd/design_seno/ipshared/d3cd/solution1/impl/verilog/sen_mul_mul_15ns_g8j.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_seno/ipshared/d3cd/solution1/syn/vhdl/sen_mul_80ns_24nsfYi.vhd" \

vlog -work xil_defaultlib -64 \
"../../../bd/design_seno/ipshared/d3cd/solution1/impl/verilog/sen_mul_80ns_24nsfYi.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_seno/ipshared/d3cd/solution1/syn/vhdl/sen.vhd" \

vlog -work xil_defaultlib -64 \
"../../../bd/design_seno/ipshared/d3cd/solution1/impl/verilog/sen.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_seno/ipshared/d3cd/solution1/syn/vhdl/scaled_fixed2ieee.vhd" \

vlog -work xil_defaultlib -64 \
"../../../bd/design_seno/ipshared/d3cd/solution1/impl/verilog/scaled_fixed2ieee.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_seno/ip/design_seno_sen_0_0/sim/design_seno_sen_0_0.vhd" \

vlog -work xlconstant_v1_1_5 -64 \
"../../../../reuniao-2408.srcs/sources_1/bd/design_seno/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 \
"../../../bd/design_seno/ip/design_seno_xlconstant_0_0/sim/design_seno_xlconstant_0_0.v" \
"../../../bd/design_seno/ip/design_seno_xlconstant_1_0/sim/design_seno_xlconstant_1_0.v" \

vlog -work sim_clk_gen_v1_0_2 -64 \
"../../../../reuniao-2408.srcs/sources_1/bd/design_seno/ipshared/d987/hdl/sim_clk_gen_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 \
"../../../bd/design_seno/ip/design_seno_sim_clk_gen_0_0/sim/design_seno_sim_clk_gen_0_0.v" \
"../../../bd/design_seno/sim/design_seno.v" \

vlog -work xil_defaultlib \
"glbl.v"

