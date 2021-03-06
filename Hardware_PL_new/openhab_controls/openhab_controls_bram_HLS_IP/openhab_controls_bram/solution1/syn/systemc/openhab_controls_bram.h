// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _openhab_controls_bram_HH_
#define _openhab_controls_bram_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct openhab_controls_bram : public sc_module {
    // Port declarations 27
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<32> > inputData_V_Addr_A;
    sc_out< sc_logic > inputData_V_EN_A;
    sc_out< sc_lv<4> > inputData_V_WEN_A;
    sc_out< sc_lv<32> > inputData_V_Din_A;
    sc_in< sc_lv<32> > inputData_V_Dout_A;
    sc_out< sc_logic > inputData_V_Clk_A;
    sc_out< sc_logic > inputData_V_Rst_A;
    sc_out< sc_lv<32> > thresholds_V_Addr_A;
    sc_out< sc_logic > thresholds_V_EN_A;
    sc_out< sc_lv<4> > thresholds_V_WEN_A;
    sc_out< sc_lv<32> > thresholds_V_Din_A;
    sc_in< sc_lv<32> > thresholds_V_Dout_A;
    sc_out< sc_logic > thresholds_V_Clk_A;
    sc_out< sc_logic > thresholds_V_Rst_A;
    sc_out< sc_lv<32> > outData_Addr_A;
    sc_out< sc_logic > outData_EN_A;
    sc_out< sc_lv<4> > outData_WEN_A;
    sc_out< sc_lv<32> > outData_Din_A;
    sc_in< sc_lv<32> > outData_Dout_A;
    sc_out< sc_logic > outData_Clk_A;
    sc_out< sc_logic > outData_Rst_A;


    // Module declarations
    openhab_controls_bram(sc_module_name name);
    SC_HAS_PROCESS(openhab_controls_bram);

    ~openhab_controls_bram();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<4> > i_fu_88_p2;
    sc_signal< sc_lv<4> > i_reg_114;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<64> > zext_ln18_1_fu_94_p1;
    sc_signal< sc_lv<64> > zext_ln18_1_reg_119;
    sc_signal< sc_lv<1> > icmp_ln16_fu_82_p2;
    sc_signal< sc_lv<4> > i_0_reg_71;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<32> > inputData_V_Addr_A_orig;
    sc_signal< sc_lv<32> > thresholds_V_Addr_A_orig;
    sc_signal< sc_lv<32> > outData_Addr_A_orig;
    sc_signal< sc_lv<1> > icmp_ln1495_fu_100_p2;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_state2;
    static const sc_lv<3> ap_ST_fsm_state3;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<4> ap_const_lv4_F;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_i_fu_88_p2();
    void thread_icmp_ln1495_fu_100_p2();
    void thread_icmp_ln16_fu_82_p2();
    void thread_inputData_V_Addr_A();
    void thread_inputData_V_Addr_A_orig();
    void thread_inputData_V_Clk_A();
    void thread_inputData_V_Din_A();
    void thread_inputData_V_EN_A();
    void thread_inputData_V_Rst_A();
    void thread_inputData_V_WEN_A();
    void thread_outData_Addr_A();
    void thread_outData_Addr_A_orig();
    void thread_outData_Clk_A();
    void thread_outData_Din_A();
    void thread_outData_EN_A();
    void thread_outData_Rst_A();
    void thread_outData_WEN_A();
    void thread_thresholds_V_Addr_A();
    void thread_thresholds_V_Addr_A_orig();
    void thread_thresholds_V_Clk_A();
    void thread_thresholds_V_Din_A();
    void thread_thresholds_V_EN_A();
    void thread_thresholds_V_Rst_A();
    void thread_thresholds_V_WEN_A();
    void thread_zext_ln18_1_fu_94_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
