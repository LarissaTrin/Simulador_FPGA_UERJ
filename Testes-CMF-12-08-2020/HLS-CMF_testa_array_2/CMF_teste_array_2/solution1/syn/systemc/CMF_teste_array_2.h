// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _CMF_teste_array_2_HH_
#define _CMF_teste_array_2_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "CMF_teste_array_2bkb.h"

namespace ap_rtl {

struct CMF_teste_array_2 : public sc_module {
    // Port declarations 9
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<1> > pulsoSinc;
    sc_out< sc_lv<15> > Saida;
    sc_out< sc_logic > Saida_ap_vld;


    // Module declarations
    CMF_teste_array_2(sc_module_name name);
    SC_HAS_PROCESS(CMF_teste_array_2);

    ~CMF_teste_array_2();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    CMF_teste_array_2bkb* dados1_U;
    sc_signal< sc_lv<2> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<1> > SimCLK;
    sc_signal< sc_lv<15> > k;
    sc_signal< sc_lv<3> > dados1_address0;
    sc_signal< sc_logic > dados1_ce0;
    sc_signal< sc_lv<6> > dados1_q0;
    sc_signal< sc_lv<15> > storemerge_fu_112_p3;
    sc_signal< sc_lv<15> > ap_phi_mux_tmp_6_phi_fu_63_p4;
    sc_signal< sc_lv<1> > tmp_fu_73_p2;
    sc_signal< sc_lv<64> > tmp_7_fu_127_p1;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<13> > tmp_1_fu_90_p4;
    sc_signal< sc_lv<1> > icmp_fu_100_p2;
    sc_signal< sc_lv<15> > tmp_3_fu_106_p2;
    sc_signal< sc_lv<2> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<2> ap_ST_fsm_state1;
    static const sc_lv<2> ap_ST_fsm_state2;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<15> ap_const_lv15_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<13> ap_const_lv13_1;
    static const sc_lv<15> ap_const_lv15_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_Saida();
    void thread_Saida_ap_vld();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_mux_tmp_6_phi_fu_63_p4();
    void thread_ap_ready();
    void thread_dados1_address0();
    void thread_dados1_ce0();
    void thread_icmp_fu_100_p2();
    void thread_storemerge_fu_112_p3();
    void thread_tmp_1_fu_90_p4();
    void thread_tmp_3_fu_106_p2();
    void thread_tmp_7_fu_127_p1();
    void thread_tmp_fu_73_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
