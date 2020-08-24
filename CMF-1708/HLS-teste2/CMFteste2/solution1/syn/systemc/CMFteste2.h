// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _CMFteste2_HH_
#define _CMFteste2_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct CMFteste2 : public sc_module {
    // Port declarations 8
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<32> > Saida_V;
    sc_out< sc_logic > Saida_V_ap_vld;


    // Module declarations
    CMFteste2(sc_module_name name);
    SC_HAS_PROCESS(CMFteste2);

    ~CMFteste2();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sc_signal< sc_lv<1> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > N_V;
    sc_signal< sc_lv<32> > storemerge_fu_41_p3;
    sc_signal< sc_lv<1> > tmp_fu_29_p2;
    sc_signal< sc_lv<32> > tmp_1_fu_35_p2;
    sc_signal< sc_lv<1> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_fsm_state1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_64000000;
    static const sc_lv<32> ap_const_lv32_1000000;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_Saida_V();
    void thread_Saida_V_ap_vld();
    void thread_ap_CS_fsm_state1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_storemerge_fu_41_p3();
    void thread_tmp_1_fu_35_p2();
    void thread_tmp_fu_29_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif