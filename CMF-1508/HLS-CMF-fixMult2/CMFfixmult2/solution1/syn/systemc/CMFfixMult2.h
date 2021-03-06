// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _CMFfixMult2_HH_
#define _CMFfixMult2_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "CMFfixMult2_mul_mbkb.h"

namespace ap_rtl {

struct CMFfixMult2 : public sc_module {
    // Port declarations 12
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<18> > EntradaA1_V;
    sc_in< sc_lv<18> > EntradaA2_V;
    sc_out< sc_lv<18> > SaidaA1_V;
    sc_out< sc_logic > SaidaA1_V_ap_vld;
    sc_out< sc_lv<18> > SaidaA2_V;
    sc_out< sc_logic > SaidaA2_V_ap_vld;
    sc_out< sc_lv<9> > SaidaB1_V;
    sc_out< sc_logic > SaidaB1_V_ap_vld;
    // Port declarations for the virtual clock. 
    sc_in_clk ap_virtual_clock;


    // Module declarations
    CMFfixMult2(sc_module_name name);
    SC_HAS_PROCESS(CMFfixMult2);

    ~CMFfixMult2();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    CMFfixMult2_mul_mbkb<1,1,18,18,30>* CMFfixMult2_mul_mbkb_U1;
    sc_signal< sc_lv<30> > r_V_fu_83_p2;
    static const sc_logic ap_const_logic_1;
    static const bool ap_const_boolean_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<9> ap_const_lv9_161;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_1D;
    // Thread declarations
    void thread_SaidaA1_V();
    void thread_SaidaA1_V_ap_vld();
    void thread_SaidaA2_V();
    void thread_SaidaA2_V_ap_vld();
    void thread_SaidaB1_V();
    void thread_SaidaB1_V_ap_vld();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
