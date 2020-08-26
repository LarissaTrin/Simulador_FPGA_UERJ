//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Mon Aug 24 15:10:04 2020
//Host        : LAPTOP-4PLQ3L6B running 64-bit major release  (build 9200)
//Command     : generate_target design_sen.bd
//Design      : design_sen
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_sen,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_sen,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_sen.hwdef" *) 
module design_sen
   ();

  wire sim_clk_gen_0_clk;
  wire [63:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;

  design_sen_sen_0_0 sen_0
       (.Entrada(xlconstant_0_dout),
        .ap_clk(sim_clk_gen_0_clk),
        .ap_rst(1'b0),
        .ap_start(xlconstant_1_dout));
  design_sen_sim_clk_gen_0_0 sim_clk_gen_0
       (.clk(sim_clk_gen_0_clk));
  design_sen_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  design_sen_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
endmodule
