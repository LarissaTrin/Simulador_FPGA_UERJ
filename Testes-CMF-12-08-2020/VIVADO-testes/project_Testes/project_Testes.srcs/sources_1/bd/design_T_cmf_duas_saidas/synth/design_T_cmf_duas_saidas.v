//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Wed Aug 12 19:07:31 2020
//Host        : DESKTOP-5MP17PP running 64-bit major release  (build 9200)
//Command     : generate_target design_T_cmf_duas_saidas.bd
//Design      : design_T_cmf_duas_saidas
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_T_cmf_duas_saidas,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_T_cmf_duas_saidas,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_T_cmf_duas_saidas.hwdef" *) 
module design_T_cmf_duas_saidas
   ();

  wire [31:0]xlconstant_0_dout;

  design_T_cmf_duas_saidas_CMF_duas_saidas_0_0 CMF_duas_saidas_0
       (.Entrada(xlconstant_0_dout),
        .ap_start(1'b0));
  design_T_cmf_duas_saidas_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
