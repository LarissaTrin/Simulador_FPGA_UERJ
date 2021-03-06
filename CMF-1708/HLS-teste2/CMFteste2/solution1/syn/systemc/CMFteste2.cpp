// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "CMFteste2.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic CMFteste2::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic CMFteste2::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<1> CMFteste2::ap_ST_fsm_state1 = "1";
const sc_lv<32> CMFteste2::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> CMFteste2::ap_const_lv32_64000000 = "1100100000000000000000000000000";
const sc_lv<32> CMFteste2::ap_const_lv32_1000000 = "1000000000000000000000000";
const bool CMFteste2::ap_const_boolean_1 = true;

CMFteste2::CMFteste2(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_Saida_V);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( tmp_fu_29_p2 );
    sensitive << ( tmp_1_fu_35_p2 );

    SC_METHOD(thread_Saida_V_ap_vld);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_storemerge_fu_41_p3);
    sensitive << ( tmp_fu_29_p2 );
    sensitive << ( tmp_1_fu_35_p2 );

    SC_METHOD(thread_tmp_1_fu_35_p2);
    sensitive << ( N_V );

    SC_METHOD(thread_tmp_fu_29_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( N_V );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "1";
    N_V = "00000000000000000000000000000000";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "CMFteste2_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, Saida_V, "(port)Saida_V");
    sc_trace(mVcdFile, Saida_V_ap_vld, "(port)Saida_V_ap_vld");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, N_V, "N_V");
    sc_trace(mVcdFile, storemerge_fu_41_p3, "storemerge_fu_41_p3");
    sc_trace(mVcdFile, tmp_fu_29_p2, "tmp_fu_29_p2");
    sc_trace(mVcdFile, tmp_1_fu_35_p2, "tmp_1_fu_35_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("CMFteste2.hdltvin.dat");
    mHdltvoutHandle.open("CMFteste2.hdltvout.dat");
}

CMFteste2::~CMFteste2() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
}

void CMFteste2::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        N_V = storemerge_fu_41_p3.read();
    }
}

void CMFteste2::thread_Saida_V() {
    Saida_V = (!tmp_fu_29_p2.read()[0].is_01())? sc_lv<32>(): ((tmp_fu_29_p2.read()[0].to_bool())? tmp_1_fu_35_p2.read(): ap_const_lv32_0);
}

void CMFteste2::thread_Saida_V_ap_vld() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        Saida_V_ap_vld = ap_const_logic_1;
    } else {
        Saida_V_ap_vld = ap_const_logic_0;
    }
}

void CMFteste2::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void CMFteste2::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void CMFteste2::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void CMFteste2::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void CMFteste2::thread_storemerge_fu_41_p3() {
    storemerge_fu_41_p3 = (!tmp_fu_29_p2.read()[0].is_01())? sc_lv<32>(): ((tmp_fu_29_p2.read()[0].to_bool())? tmp_1_fu_35_p2.read(): ap_const_lv32_0);
}

void CMFteste2::thread_tmp_1_fu_35_p2() {
    tmp_1_fu_35_p2 = (!N_V.read().is_01() || !ap_const_lv32_1000000.is_01())? sc_lv<32>(): (sc_biguint<32>(N_V.read()) + sc_biguint<32>(ap_const_lv32_1000000));
}

void CMFteste2::thread_tmp_fu_29_p2() {
    tmp_fu_29_p2 = (!N_V.read().is_01() || !ap_const_lv32_64000000.is_01())? sc_lv<1>(): (sc_bigint<32>(N_V.read()) < sc_bigint<32>(ap_const_lv32_64000000));
}

void CMFteste2::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            ap_NS_fsm = ap_ST_fsm_state1;
break;
        default : 
            ap_NS_fsm = "X";
            break;
    }
}

void CMFteste2::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"Saida_V\" :  \"" << Saida_V.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"Saida_V_ap_vld\" :  \"" << Saida_V_ap_vld.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

