// ==============================================================
// File generated on Thu Aug 13 17:51:42 -0300 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __CMFfixedop_mul_mubkb__HH__
#define __CMFfixedop_mul_mubkb__HH__
#include "ACMP_smul_ss.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(CMFfixedop_mul_mubkb) {
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_smul_ss<ID, 1, din0_WIDTH, din1_WIDTH, dout_WIDTH> ACMP_smul_ss_U;

    SC_CTOR(CMFfixedop_mul_mubkb):  ACMP_smul_ss_U ("ACMP_smul_ss_U") {
        ACMP_smul_ss_U.din0(din0);
        ACMP_smul_ss_U.din1(din1);
        ACMP_smul_ss_U.dout(dout);

    }

};

#endif //