// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _CMF_testa_array_HH_
#define _CMF_testa_array_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct CMF_testa_array : public sc_module {
    // Port declarations 7
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<32> > ap_return;


    // Module declarations
    CMF_testa_array(sc_module_name name);
    SC_HAS_PROCESS(CMF_testa_array);

    ~CMF_testa_array();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sc_signal< sc_lv<1> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > k;
    sc_signal< sc_lv<32> > storemerge_fu_50_p3;
    sc_signal< sc_lv<30> > tmp_fu_28_p4;
    sc_signal< sc_lv<1> > icmp_fu_38_p2;
    sc_signal< sc_lv<32> > tmp_2_fu_44_p2;
    sc_signal< sc_lv<1> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_fsm_state1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<30> ap_const_lv30_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<32> ap_const_lv32_28;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_icmp_fu_38_p2();
    void thread_storemerge_fu_50_p3();
    void thread_tmp_2_fu_44_p2();
    void thread_tmp_fu_28_p4();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif