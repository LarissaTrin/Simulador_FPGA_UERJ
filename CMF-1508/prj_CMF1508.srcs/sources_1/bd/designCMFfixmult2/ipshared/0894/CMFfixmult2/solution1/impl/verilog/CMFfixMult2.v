// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="CMFfixMult2,hls_ip_2018_3,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xa7a12tcsg325-1q,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.180000,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=1,HLS_SYN_FF=0,HLS_SYN_LUT=0,HLS_VERSION=2018_3}" *)

module CMFfixMult2 (
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        EntradaA1_V,
        EntradaA2_V,
        SaidaA1_V,
        SaidaA1_V_ap_vld,
        SaidaA2_V,
        SaidaA2_V_ap_vld,
        SaidaB1_V,
        SaidaB1_V_ap_vld
);


input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [17:0] EntradaA1_V;
input  [17:0] EntradaA2_V;
output  [17:0] SaidaA1_V;
output   SaidaA1_V_ap_vld;
output  [17:0] SaidaA2_V;
output   SaidaA2_V_ap_vld;
output  [8:0] SaidaB1_V;
output   SaidaB1_V_ap_vld;

reg SaidaA1_V_ap_vld;
reg SaidaA2_V_ap_vld;
reg SaidaB1_V_ap_vld;

wire  signed [29:0] r_V_fu_83_p2;

CMFfixMult2_mul_mbkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 18 ),
    .din1_WIDTH( 18 ),
    .dout_WIDTH( 30 ))
CMFfixMult2_mul_mbkb_U1(
    .din0(EntradaA2_V),
    .din1(EntradaA1_V),
    .dout(r_V_fu_83_p2)
);

always @ (*) begin
    if ((ap_start == 1'b1)) begin
        SaidaA1_V_ap_vld = 1'b1;
    end else begin
        SaidaA1_V_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((ap_start == 1'b1)) begin
        SaidaA2_V_ap_vld = 1'b1;
    end else begin
        SaidaA2_V_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((ap_start == 1'b1)) begin
        SaidaB1_V_ap_vld = 1'b1;
    end else begin
        SaidaB1_V_ap_vld = 1'b0;
    end
end

assign SaidaA1_V = {{r_V_fu_83_p2[29:12]}};

assign SaidaA2_V = {{r_V_fu_83_p2[29:12]}};

assign SaidaB1_V = 9'd353;

assign ap_done = ap_start;

assign ap_idle = 1'b1;

assign ap_ready = ap_start;

endmodule //CMFfixMult2
