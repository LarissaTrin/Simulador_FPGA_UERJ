// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _CMF_duas_saidas_HH_
#define _CMF_duas_saidas_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct CMF_duas_saidas : public sc_module {
    // Port declarations 9
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<32> > Saida1;
    sc_out< sc_logic > Saida1_ap_vld;
    sc_out< sc_lv<32> > Saida2;
    sc_out< sc_logic > Saida2_ap_vld;
    sc_in< sc_lv<32> > Entrada;
    // Port declarations for the virtual clock. 
    sc_in_clk ap_virtual_clock;


    // Module declarations
    CMF_duas_saidas(sc_module_name name);
    SC_HAS_PROCESS(CMF_duas_saidas);

    ~CMF_duas_saidas();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_Saida1();
    void thread_Saida1_ap_vld();
    void thread_Saida2();
    void thread_Saida2_ap_vld();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif