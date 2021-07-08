// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "pp_1.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic pp_1::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic pp_1::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> pp_1::ap_ST_fsm_state1 = "1";
const sc_lv<3> pp_1::ap_ST_fsm_state2 = "10";
const sc_lv<3> pp_1::ap_ST_fsm_state3 = "100";
const sc_lv<32> pp_1::ap_const_lv32_0 = "00000000000000000000000000000000";
const bool pp_1::ap_const_boolean_1 = true;
const sc_lv<32> pp_1::ap_const_lv32_1 = "1";
const sc_lv<1> pp_1::ap_const_lv1_0 = "0";
const sc_lv<32> pp_1::ap_const_lv32_2 = "10";
const sc_lv<5> pp_1::ap_const_lv5_0 = "00000";
const sc_lv<5> pp_1::ap_const_lv5_14 = "10100";
const sc_lv<5> pp_1::ap_const_lv5_1 = "1";
const sc_lv<32> pp_1::ap_const_lv32_5 = "101";
const sc_lv<1> pp_1::ap_const_lv1_1 = "1";

pp_1::pp_1(sc_module_name name) : sc_module(name), mVcdFile(0) {
    regslice_both_inStream_V_data_V_U = new regslice_both<32>("regslice_both_inStream_V_data_V_U");
    regslice_both_inStream_V_data_V_U->ap_clk(ap_clk);
    regslice_both_inStream_V_data_V_U->ap_rst(ap_rst_n_inv);
    regslice_both_inStream_V_data_V_U->data_in(inStream_TDATA);
    regslice_both_inStream_V_data_V_U->vld_in(inStream_TVALID);
    regslice_both_inStream_V_data_V_U->ack_in(regslice_both_inStream_V_data_V_U_ack_in);
    regslice_both_inStream_V_data_V_U->data_out(inStream_TDATA_int);
    regslice_both_inStream_V_data_V_U->vld_out(inStream_TVALID_int);
    regslice_both_inStream_V_data_V_U->ack_out(inStream_TREADY_int);
    regslice_both_inStream_V_data_V_U->apdone_blk(regslice_both_inStream_V_data_V_U_apdone_blk);
    regslice_both_inStream_V_keep_V_U = new regslice_both<4>("regslice_both_inStream_V_keep_V_U");
    regslice_both_inStream_V_keep_V_U->ap_clk(ap_clk);
    regslice_both_inStream_V_keep_V_U->ap_rst(ap_rst_n_inv);
    regslice_both_inStream_V_keep_V_U->data_in(inStream_TKEEP);
    regslice_both_inStream_V_keep_V_U->vld_in(inStream_TVALID);
    regslice_both_inStream_V_keep_V_U->ack_in(regslice_both_inStream_V_keep_V_U_ack_in);
    regslice_both_inStream_V_keep_V_U->data_out(inStream_TKEEP_int);
    regslice_both_inStream_V_keep_V_U->vld_out(regslice_both_inStream_V_keep_V_U_vld_out);
    regslice_both_inStream_V_keep_V_U->ack_out(inStream_TREADY_int);
    regslice_both_inStream_V_keep_V_U->apdone_blk(regslice_both_inStream_V_keep_V_U_apdone_blk);
    regslice_both_inStream_V_strb_V_U = new regslice_both<4>("regslice_both_inStream_V_strb_V_U");
    regslice_both_inStream_V_strb_V_U->ap_clk(ap_clk);
    regslice_both_inStream_V_strb_V_U->ap_rst(ap_rst_n_inv);
    regslice_both_inStream_V_strb_V_U->data_in(inStream_TSTRB);
    regslice_both_inStream_V_strb_V_U->vld_in(inStream_TVALID);
    regslice_both_inStream_V_strb_V_U->ack_in(regslice_both_inStream_V_strb_V_U_ack_in);
    regslice_both_inStream_V_strb_V_U->data_out(inStream_TSTRB_int);
    regslice_both_inStream_V_strb_V_U->vld_out(regslice_both_inStream_V_strb_V_U_vld_out);
    regslice_both_inStream_V_strb_V_U->ack_out(inStream_TREADY_int);
    regslice_both_inStream_V_strb_V_U->apdone_blk(regslice_both_inStream_V_strb_V_U_apdone_blk);
    regslice_both_inStream_V_user_V_U = new regslice_both<1>("regslice_both_inStream_V_user_V_U");
    regslice_both_inStream_V_user_V_U->ap_clk(ap_clk);
    regslice_both_inStream_V_user_V_U->ap_rst(ap_rst_n_inv);
    regslice_both_inStream_V_user_V_U->data_in(inStream_TUSER);
    regslice_both_inStream_V_user_V_U->vld_in(inStream_TVALID);
    regslice_both_inStream_V_user_V_U->ack_in(regslice_both_inStream_V_user_V_U_ack_in);
    regslice_both_inStream_V_user_V_U->data_out(inStream_TUSER_int);
    regslice_both_inStream_V_user_V_U->vld_out(regslice_both_inStream_V_user_V_U_vld_out);
    regslice_both_inStream_V_user_V_U->ack_out(inStream_TREADY_int);
    regslice_both_inStream_V_user_V_U->apdone_blk(regslice_both_inStream_V_user_V_U_apdone_blk);
    regslice_both_inStream_V_last_V_U = new regslice_both<1>("regslice_both_inStream_V_last_V_U");
    regslice_both_inStream_V_last_V_U->ap_clk(ap_clk);
    regslice_both_inStream_V_last_V_U->ap_rst(ap_rst_n_inv);
    regslice_both_inStream_V_last_V_U->data_in(inStream_TLAST);
    regslice_both_inStream_V_last_V_U->vld_in(inStream_TVALID);
    regslice_both_inStream_V_last_V_U->ack_in(regslice_both_inStream_V_last_V_U_ack_in);
    regslice_both_inStream_V_last_V_U->data_out(inStream_TLAST_int);
    regslice_both_inStream_V_last_V_U->vld_out(regslice_both_inStream_V_last_V_U_vld_out);
    regslice_both_inStream_V_last_V_U->ack_out(inStream_TREADY_int);
    regslice_both_inStream_V_last_V_U->apdone_blk(regslice_both_inStream_V_last_V_U_apdone_blk);
    regslice_both_inStream_V_id_V_U = new regslice_both<1>("regslice_both_inStream_V_id_V_U");
    regslice_both_inStream_V_id_V_U->ap_clk(ap_clk);
    regslice_both_inStream_V_id_V_U->ap_rst(ap_rst_n_inv);
    regslice_both_inStream_V_id_V_U->data_in(inStream_TID);
    regslice_both_inStream_V_id_V_U->vld_in(inStream_TVALID);
    regslice_both_inStream_V_id_V_U->ack_in(regslice_both_inStream_V_id_V_U_ack_in);
    regslice_both_inStream_V_id_V_U->data_out(inStream_TID_int);
    regslice_both_inStream_V_id_V_U->vld_out(regslice_both_inStream_V_id_V_U_vld_out);
    regslice_both_inStream_V_id_V_U->ack_out(inStream_TREADY_int);
    regslice_both_inStream_V_id_V_U->apdone_blk(regslice_both_inStream_V_id_V_U_apdone_blk);
    regslice_both_inStream_V_dest_V_U = new regslice_both<1>("regslice_both_inStream_V_dest_V_U");
    regslice_both_inStream_V_dest_V_U->ap_clk(ap_clk);
    regslice_both_inStream_V_dest_V_U->ap_rst(ap_rst_n_inv);
    regslice_both_inStream_V_dest_V_U->data_in(inStream_TDEST);
    regslice_both_inStream_V_dest_V_U->vld_in(inStream_TVALID);
    regslice_both_inStream_V_dest_V_U->ack_in(regslice_both_inStream_V_dest_V_U_ack_in);
    regslice_both_inStream_V_dest_V_U->data_out(inStream_TDEST_int);
    regslice_both_inStream_V_dest_V_U->vld_out(regslice_both_inStream_V_dest_V_U_vld_out);
    regslice_both_inStream_V_dest_V_U->ack_out(inStream_TREADY_int);
    regslice_both_inStream_V_dest_V_U->apdone_blk(regslice_both_inStream_V_dest_V_U_apdone_blk);
    regslice_both_outStream_V_data_V_U = new regslice_both<32>("regslice_both_outStream_V_data_V_U");
    regslice_both_outStream_V_data_V_U->ap_clk(ap_clk);
    regslice_both_outStream_V_data_V_U->ap_rst(ap_rst_n_inv);
    regslice_both_outStream_V_data_V_U->data_in(outStream_TDATA_int);
    regslice_both_outStream_V_data_V_U->vld_in(outStream_TVALID_int);
    regslice_both_outStream_V_data_V_U->ack_in(outStream_TREADY_int);
    regslice_both_outStream_V_data_V_U->data_out(outStream_TDATA);
    regslice_both_outStream_V_data_V_U->vld_out(regslice_both_outStream_V_data_V_U_vld_out);
    regslice_both_outStream_V_data_V_U->ack_out(outStream_TREADY);
    regslice_both_outStream_V_data_V_U->apdone_blk(regslice_both_outStream_V_data_V_U_apdone_blk);
    regslice_both_outStream_V_keep_V_U = new regslice_both<4>("regslice_both_outStream_V_keep_V_U");
    regslice_both_outStream_V_keep_V_U->ap_clk(ap_clk);
    regslice_both_outStream_V_keep_V_U->ap_rst(ap_rst_n_inv);
    regslice_both_outStream_V_keep_V_U->data_in(inStream_TKEEP_int);
    regslice_both_outStream_V_keep_V_U->vld_in(outStream_TVALID_int);
    regslice_both_outStream_V_keep_V_U->ack_in(regslice_both_outStream_V_keep_V_U_ack_in_dummy);
    regslice_both_outStream_V_keep_V_U->data_out(outStream_TKEEP);
    regslice_both_outStream_V_keep_V_U->vld_out(regslice_both_outStream_V_keep_V_U_vld_out);
    regslice_both_outStream_V_keep_V_U->ack_out(outStream_TREADY);
    regslice_both_outStream_V_keep_V_U->apdone_blk(regslice_both_outStream_V_keep_V_U_apdone_blk);
    regslice_both_outStream_V_strb_V_U = new regslice_both<4>("regslice_both_outStream_V_strb_V_U");
    regslice_both_outStream_V_strb_V_U->ap_clk(ap_clk);
    regslice_both_outStream_V_strb_V_U->ap_rst(ap_rst_n_inv);
    regslice_both_outStream_V_strb_V_U->data_in(inStream_TSTRB_int);
    regslice_both_outStream_V_strb_V_U->vld_in(outStream_TVALID_int);
    regslice_both_outStream_V_strb_V_U->ack_in(regslice_both_outStream_V_strb_V_U_ack_in_dummy);
    regslice_both_outStream_V_strb_V_U->data_out(outStream_TSTRB);
    regslice_both_outStream_V_strb_V_U->vld_out(regslice_both_outStream_V_strb_V_U_vld_out);
    regslice_both_outStream_V_strb_V_U->ack_out(outStream_TREADY);
    regslice_both_outStream_V_strb_V_U->apdone_blk(regslice_both_outStream_V_strb_V_U_apdone_blk);
    regslice_both_outStream_V_user_V_U = new regslice_both<1>("regslice_both_outStream_V_user_V_U");
    regslice_both_outStream_V_user_V_U->ap_clk(ap_clk);
    regslice_both_outStream_V_user_V_U->ap_rst(ap_rst_n_inv);
    regslice_both_outStream_V_user_V_U->data_in(inStream_TUSER_int);
    regslice_both_outStream_V_user_V_U->vld_in(outStream_TVALID_int);
    regslice_both_outStream_V_user_V_U->ack_in(regslice_both_outStream_V_user_V_U_ack_in_dummy);
    regslice_both_outStream_V_user_V_U->data_out(outStream_TUSER);
    regslice_both_outStream_V_user_V_U->vld_out(regslice_both_outStream_V_user_V_U_vld_out);
    regslice_both_outStream_V_user_V_U->ack_out(outStream_TREADY);
    regslice_both_outStream_V_user_V_U->apdone_blk(regslice_both_outStream_V_user_V_U_apdone_blk);
    regslice_both_outStream_V_last_V_U = new regslice_both<1>("regslice_both_outStream_V_last_V_U");
    regslice_both_outStream_V_last_V_U->ap_clk(ap_clk);
    regslice_both_outStream_V_last_V_U->ap_rst(ap_rst_n_inv);
    regslice_both_outStream_V_last_V_U->data_in(inStream_TLAST_int);
    regslice_both_outStream_V_last_V_U->vld_in(outStream_TVALID_int);
    regslice_both_outStream_V_last_V_U->ack_in(regslice_both_outStream_V_last_V_U_ack_in_dummy);
    regslice_both_outStream_V_last_V_U->data_out(outStream_TLAST);
    regslice_both_outStream_V_last_V_U->vld_out(regslice_both_outStream_V_last_V_U_vld_out);
    regslice_both_outStream_V_last_V_U->ack_out(outStream_TREADY);
    regslice_both_outStream_V_last_V_U->apdone_blk(regslice_both_outStream_V_last_V_U_apdone_blk);
    regslice_both_outStream_V_id_V_U = new regslice_both<1>("regslice_both_outStream_V_id_V_U");
    regslice_both_outStream_V_id_V_U->ap_clk(ap_clk);
    regslice_both_outStream_V_id_V_U->ap_rst(ap_rst_n_inv);
    regslice_both_outStream_V_id_V_U->data_in(inStream_TID_int);
    regslice_both_outStream_V_id_V_U->vld_in(outStream_TVALID_int);
    regslice_both_outStream_V_id_V_U->ack_in(regslice_both_outStream_V_id_V_U_ack_in_dummy);
    regslice_both_outStream_V_id_V_U->data_out(outStream_TID);
    regslice_both_outStream_V_id_V_U->vld_out(regslice_both_outStream_V_id_V_U_vld_out);
    regslice_both_outStream_V_id_V_U->ack_out(outStream_TREADY);
    regslice_both_outStream_V_id_V_U->apdone_blk(regslice_both_outStream_V_id_V_U_apdone_blk);
    regslice_both_outStream_V_dest_V_U = new regslice_both<1>("regslice_both_outStream_V_dest_V_U");
    regslice_both_outStream_V_dest_V_U->ap_clk(ap_clk);
    regslice_both_outStream_V_dest_V_U->ap_rst(ap_rst_n_inv);
    regslice_both_outStream_V_dest_V_U->data_in(inStream_TDEST_int);
    regslice_both_outStream_V_dest_V_U->vld_in(outStream_TVALID_int);
    regslice_both_outStream_V_dest_V_U->ack_in(regslice_both_outStream_V_dest_V_U_ack_in_dummy);
    regslice_both_outStream_V_dest_V_U->data_out(outStream_TDEST);
    regslice_both_outStream_V_dest_V_U->vld_out(regslice_both_outStream_V_dest_V_U_vld_out);
    regslice_both_outStream_V_dest_V_U->ack_out(outStream_TREADY);
    regslice_both_outStream_V_dest_V_U->apdone_blk(regslice_both_outStream_V_dest_V_U_apdone_blk);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_state2);
    sensitive << ( icmp_ln14_fu_116_p2 );
    sensitive << ( regslice_both_outStream_V_data_V_U_apdone_blk );
    sensitive << ( inStream_TVALID_int );

    SC_METHOD(thread_ap_block_state2_io);
    sensitive << ( icmp_ln14_fu_116_p2 );
    sensitive << ( outStream_TREADY_int );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln14_fu_116_p2 );
    sensitive << ( regslice_both_outStream_V_data_V_U_apdone_blk );
    sensitive << ( ap_block_state2_io );
    sensitive << ( inStream_TVALID_int );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln14_fu_116_p2 );
    sensitive << ( regslice_both_outStream_V_data_V_U_apdone_blk );
    sensitive << ( ap_block_state2_io );
    sensitive << ( inStream_TVALID_int );

    SC_METHOD(thread_ap_rst_n_inv);
    sensitive << ( ap_rst_n );

    SC_METHOD(thread_i_fu_122_p2);
    sensitive << ( i_0_reg_105 );

    SC_METHOD(thread_icmp_ln14_fu_116_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln14_fu_116_p2 );
    sensitive << ( regslice_both_outStream_V_data_V_U_apdone_blk );
    sensitive << ( ap_block_state2_io );
    sensitive << ( i_0_reg_105 );
    sensitive << ( inStream_TVALID_int );

    SC_METHOD(thread_inStream_TDATA_blk_n);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln14_fu_116_p2 );
    sensitive << ( inStream_TVALID_int );

    SC_METHOD(thread_inStream_TREADY);
    sensitive << ( inStream_TVALID );
    sensitive << ( regslice_both_inStream_V_data_V_U_ack_in );

    SC_METHOD(thread_inStream_TREADY_int);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln14_fu_116_p2 );
    sensitive << ( regslice_both_outStream_V_data_V_U_apdone_blk );
    sensitive << ( ap_block_state2_io );
    sensitive << ( inStream_TVALID_int );

    SC_METHOD(thread_outStream_TDATA_blk_n);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln14_fu_116_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( outStream_TREADY_int );

    SC_METHOD(thread_outStream_TDATA_int);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln14_fu_116_p2 );
    sensitive << ( regslice_both_outStream_V_data_V_U_apdone_blk );
    sensitive << ( inStream_TDATA_int );
    sensitive << ( inStream_TVALID_int );

    SC_METHOD(thread_outStream_TVALID);
    sensitive << ( regslice_both_outStream_V_data_V_U_vld_out );

    SC_METHOD(thread_outStream_TVALID_int);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln14_fu_116_p2 );
    sensitive << ( regslice_both_outStream_V_data_V_U_apdone_blk );
    sensitive << ( ap_block_state2_io );
    sensitive << ( inStream_TVALID_int );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln14_fu_116_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( regslice_both_outStream_V_data_V_U_apdone_blk );
    sensitive << ( ap_block_state2_io );
    sensitive << ( inStream_TVALID_int );
    sensitive << ( outStream_TREADY_int );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "pp_1_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst_n, "(port)ap_rst_n");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, inStream_TDATA, "(port)inStream_TDATA");
    sc_trace(mVcdFile, inStream_TVALID, "(port)inStream_TVALID");
    sc_trace(mVcdFile, inStream_TREADY, "(port)inStream_TREADY");
    sc_trace(mVcdFile, inStream_TKEEP, "(port)inStream_TKEEP");
    sc_trace(mVcdFile, inStream_TSTRB, "(port)inStream_TSTRB");
    sc_trace(mVcdFile, inStream_TUSER, "(port)inStream_TUSER");
    sc_trace(mVcdFile, inStream_TLAST, "(port)inStream_TLAST");
    sc_trace(mVcdFile, inStream_TID, "(port)inStream_TID");
    sc_trace(mVcdFile, inStream_TDEST, "(port)inStream_TDEST");
    sc_trace(mVcdFile, outStream_TDATA, "(port)outStream_TDATA");
    sc_trace(mVcdFile, outStream_TVALID, "(port)outStream_TVALID");
    sc_trace(mVcdFile, outStream_TREADY, "(port)outStream_TREADY");
    sc_trace(mVcdFile, outStream_TKEEP, "(port)outStream_TKEEP");
    sc_trace(mVcdFile, outStream_TSTRB, "(port)outStream_TSTRB");
    sc_trace(mVcdFile, outStream_TUSER, "(port)outStream_TUSER");
    sc_trace(mVcdFile, outStream_TLAST, "(port)outStream_TLAST");
    sc_trace(mVcdFile, outStream_TID, "(port)outStream_TID");
    sc_trace(mVcdFile, outStream_TDEST, "(port)outStream_TDEST");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_rst_n_inv, "ap_rst_n_inv");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, inStream_TDATA_blk_n, "inStream_TDATA_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, icmp_ln14_fu_116_p2, "icmp_ln14_fu_116_p2");
    sc_trace(mVcdFile, outStream_TDATA_blk_n, "outStream_TDATA_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, i_fu_122_p2, "i_fu_122_p2");
    sc_trace(mVcdFile, i_reg_172, "i_reg_172");
    sc_trace(mVcdFile, regslice_both_outStream_V_data_V_U_apdone_blk, "regslice_both_outStream_V_data_V_U_apdone_blk");
    sc_trace(mVcdFile, ap_block_state2, "ap_block_state2");
    sc_trace(mVcdFile, ap_block_state2_io, "ap_block_state2_io");
    sc_trace(mVcdFile, i_0_reg_105, "i_0_reg_105");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, regslice_both_inStream_V_data_V_U_apdone_blk, "regslice_both_inStream_V_data_V_U_apdone_blk");
    sc_trace(mVcdFile, inStream_TDATA_int, "inStream_TDATA_int");
    sc_trace(mVcdFile, inStream_TVALID_int, "inStream_TVALID_int");
    sc_trace(mVcdFile, inStream_TREADY_int, "inStream_TREADY_int");
    sc_trace(mVcdFile, regslice_both_inStream_V_data_V_U_ack_in, "regslice_both_inStream_V_data_V_U_ack_in");
    sc_trace(mVcdFile, regslice_both_inStream_V_keep_V_U_apdone_blk, "regslice_both_inStream_V_keep_V_U_apdone_blk");
    sc_trace(mVcdFile, inStream_TKEEP_int, "inStream_TKEEP_int");
    sc_trace(mVcdFile, regslice_both_inStream_V_keep_V_U_vld_out, "regslice_both_inStream_V_keep_V_U_vld_out");
    sc_trace(mVcdFile, regslice_both_inStream_V_keep_V_U_ack_in, "regslice_both_inStream_V_keep_V_U_ack_in");
    sc_trace(mVcdFile, regslice_both_inStream_V_strb_V_U_apdone_blk, "regslice_both_inStream_V_strb_V_U_apdone_blk");
    sc_trace(mVcdFile, inStream_TSTRB_int, "inStream_TSTRB_int");
    sc_trace(mVcdFile, regslice_both_inStream_V_strb_V_U_vld_out, "regslice_both_inStream_V_strb_V_U_vld_out");
    sc_trace(mVcdFile, regslice_both_inStream_V_strb_V_U_ack_in, "regslice_both_inStream_V_strb_V_U_ack_in");
    sc_trace(mVcdFile, regslice_both_inStream_V_user_V_U_apdone_blk, "regslice_both_inStream_V_user_V_U_apdone_blk");
    sc_trace(mVcdFile, inStream_TUSER_int, "inStream_TUSER_int");
    sc_trace(mVcdFile, regslice_both_inStream_V_user_V_U_vld_out, "regslice_both_inStream_V_user_V_U_vld_out");
    sc_trace(mVcdFile, regslice_both_inStream_V_user_V_U_ack_in, "regslice_both_inStream_V_user_V_U_ack_in");
    sc_trace(mVcdFile, regslice_both_inStream_V_last_V_U_apdone_blk, "regslice_both_inStream_V_last_V_U_apdone_blk");
    sc_trace(mVcdFile, inStream_TLAST_int, "inStream_TLAST_int");
    sc_trace(mVcdFile, regslice_both_inStream_V_last_V_U_vld_out, "regslice_both_inStream_V_last_V_U_vld_out");
    sc_trace(mVcdFile, regslice_both_inStream_V_last_V_U_ack_in, "regslice_both_inStream_V_last_V_U_ack_in");
    sc_trace(mVcdFile, regslice_both_inStream_V_id_V_U_apdone_blk, "regslice_both_inStream_V_id_V_U_apdone_blk");
    sc_trace(mVcdFile, inStream_TID_int, "inStream_TID_int");
    sc_trace(mVcdFile, regslice_both_inStream_V_id_V_U_vld_out, "regslice_both_inStream_V_id_V_U_vld_out");
    sc_trace(mVcdFile, regslice_both_inStream_V_id_V_U_ack_in, "regslice_both_inStream_V_id_V_U_ack_in");
    sc_trace(mVcdFile, regslice_both_inStream_V_dest_V_U_apdone_blk, "regslice_both_inStream_V_dest_V_U_apdone_blk");
    sc_trace(mVcdFile, inStream_TDEST_int, "inStream_TDEST_int");
    sc_trace(mVcdFile, regslice_both_inStream_V_dest_V_U_vld_out, "regslice_both_inStream_V_dest_V_U_vld_out");
    sc_trace(mVcdFile, regslice_both_inStream_V_dest_V_U_ack_in, "regslice_both_inStream_V_dest_V_U_ack_in");
    sc_trace(mVcdFile, outStream_TDATA_int, "outStream_TDATA_int");
    sc_trace(mVcdFile, outStream_TVALID_int, "outStream_TVALID_int");
    sc_trace(mVcdFile, outStream_TREADY_int, "outStream_TREADY_int");
    sc_trace(mVcdFile, regslice_both_outStream_V_data_V_U_vld_out, "regslice_both_outStream_V_data_V_U_vld_out");
    sc_trace(mVcdFile, regslice_both_outStream_V_keep_V_U_apdone_blk, "regslice_both_outStream_V_keep_V_U_apdone_blk");
    sc_trace(mVcdFile, regslice_both_outStream_V_keep_V_U_ack_in_dummy, "regslice_both_outStream_V_keep_V_U_ack_in_dummy");
    sc_trace(mVcdFile, regslice_both_outStream_V_keep_V_U_vld_out, "regslice_both_outStream_V_keep_V_U_vld_out");
    sc_trace(mVcdFile, regslice_both_outStream_V_strb_V_U_apdone_blk, "regslice_both_outStream_V_strb_V_U_apdone_blk");
    sc_trace(mVcdFile, regslice_both_outStream_V_strb_V_U_ack_in_dummy, "regslice_both_outStream_V_strb_V_U_ack_in_dummy");
    sc_trace(mVcdFile, regslice_both_outStream_V_strb_V_U_vld_out, "regslice_both_outStream_V_strb_V_U_vld_out");
    sc_trace(mVcdFile, regslice_both_outStream_V_user_V_U_apdone_blk, "regslice_both_outStream_V_user_V_U_apdone_blk");
    sc_trace(mVcdFile, regslice_both_outStream_V_user_V_U_ack_in_dummy, "regslice_both_outStream_V_user_V_U_ack_in_dummy");
    sc_trace(mVcdFile, regslice_both_outStream_V_user_V_U_vld_out, "regslice_both_outStream_V_user_V_U_vld_out");
    sc_trace(mVcdFile, regslice_both_outStream_V_last_V_U_apdone_blk, "regslice_both_outStream_V_last_V_U_apdone_blk");
    sc_trace(mVcdFile, regslice_both_outStream_V_last_V_U_ack_in_dummy, "regslice_both_outStream_V_last_V_U_ack_in_dummy");
    sc_trace(mVcdFile, regslice_both_outStream_V_last_V_U_vld_out, "regslice_both_outStream_V_last_V_U_vld_out");
    sc_trace(mVcdFile, regslice_both_outStream_V_id_V_U_apdone_blk, "regslice_both_outStream_V_id_V_U_apdone_blk");
    sc_trace(mVcdFile, regslice_both_outStream_V_id_V_U_ack_in_dummy, "regslice_both_outStream_V_id_V_U_ack_in_dummy");
    sc_trace(mVcdFile, regslice_both_outStream_V_id_V_U_vld_out, "regslice_both_outStream_V_id_V_U_vld_out");
    sc_trace(mVcdFile, regslice_both_outStream_V_dest_V_U_apdone_blk, "regslice_both_outStream_V_dest_V_U_apdone_blk");
    sc_trace(mVcdFile, regslice_both_outStream_V_dest_V_U_ack_in_dummy, "regslice_both_outStream_V_dest_V_U_ack_in_dummy");
    sc_trace(mVcdFile, regslice_both_outStream_V_dest_V_U_vld_out, "regslice_both_outStream_V_dest_V_U_vld_out");
#endif

    }
    mHdltvinHandle.open("pp_1.hdltvin.dat");
    mHdltvoutHandle.open("pp_1.hdltvout.dat");
}

pp_1::~pp_1() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete regslice_both_inStream_V_data_V_U;
    delete regslice_both_inStream_V_keep_V_U;
    delete regslice_both_inStream_V_strb_V_U;
    delete regslice_both_inStream_V_user_V_U;
    delete regslice_both_inStream_V_last_V_U;
    delete regslice_both_inStream_V_id_V_U;
    delete regslice_both_inStream_V_dest_V_U;
    delete regslice_both_outStream_V_data_V_U;
    delete regslice_both_outStream_V_keep_V_U;
    delete regslice_both_outStream_V_strb_V_U;
    delete regslice_both_outStream_V_user_V_U;
    delete regslice_both_outStream_V_last_V_U;
    delete regslice_both_outStream_V_id_V_U;
    delete regslice_both_outStream_V_dest_V_U;
}

void pp_1::thread_ap_clk_no_reset_() {
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(outStream_TREADY_int.read(), ap_const_logic_1))) {
        i_0_reg_105 = i_reg_172.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_0_reg_105 = ap_const_lv5_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && !(esl_seteq<1,1,1>(ap_const_logic_1, regslice_both_outStream_V_data_V_U_apdone_blk.read()) || esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state2_io.read()) || (esl_seteq<1,1,1>(icmp_ln14_fu_116_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, inStream_TVALID_int.read()))))) {
        i_reg_172 = i_fu_122_p2.read();
    }
}

void pp_1::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void pp_1::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void pp_1::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void pp_1::thread_ap_block_state2() {
    ap_block_state2 = (esl_seteq<1,1,1>(ap_const_logic_1, regslice_both_outStream_V_data_V_U_apdone_blk.read()) || (esl_seteq<1,1,1>(icmp_ln14_fu_116_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, inStream_TVALID_int.read())));
}

void pp_1::thread_ap_block_state2_io() {
    ap_block_state2_io = (esl_seteq<1,1,1>(icmp_ln14_fu_116_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, outStream_TREADY_int.read()));
}

void pp_1::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln14_fu_116_p2.read(), ap_const_lv1_1) && 
         !(esl_seteq<1,1,1>(ap_const_logic_1, regslice_both_outStream_V_data_V_U_apdone_blk.read()) || esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state2_io.read()) || (esl_seteq<1,1,1>(icmp_ln14_fu_116_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, inStream_TVALID_int.read()))))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void pp_1::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void pp_1::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln14_fu_116_p2.read(), ap_const_lv1_1) && 
         !(esl_seteq<1,1,1>(ap_const_logic_1, regslice_both_outStream_V_data_V_U_apdone_blk.read()) || esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state2_io.read()) || (esl_seteq<1,1,1>(icmp_ln14_fu_116_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, inStream_TVALID_int.read()))))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void pp_1::thread_ap_rst_n_inv() {
    ap_rst_n_inv =  (sc_logic) (~ap_rst_n.read());
}

void pp_1::thread_i_fu_122_p2() {
    i_fu_122_p2 = (!i_0_reg_105.read().is_01() || !ap_const_lv5_1.is_01())? sc_lv<5>(): (sc_biguint<5>(i_0_reg_105.read()) + sc_biguint<5>(ap_const_lv5_1));
}

void pp_1::thread_icmp_ln14_fu_116_p2() {
    icmp_ln14_fu_116_p2 = (!i_0_reg_105.read().is_01() || !ap_const_lv5_14.is_01())? sc_lv<1>(): sc_lv<1>(i_0_reg_105.read() == ap_const_lv5_14);
}

void pp_1::thread_inStream_TDATA_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln14_fu_116_p2.read(), ap_const_lv1_0))) {
        inStream_TDATA_blk_n = inStream_TVALID_int.read();
    } else {
        inStream_TDATA_blk_n = ap_const_logic_1;
    }
}

void pp_1::thread_inStream_TREADY() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, inStream_TVALID.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, regslice_both_inStream_V_data_V_U_ack_in.read()))) {
        inStream_TREADY = ap_const_logic_1;
    } else {
        inStream_TREADY = ap_const_logic_0;
    }
}

void pp_1::thread_inStream_TREADY_int() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln14_fu_116_p2.read(), ap_const_lv1_0) && 
         !(esl_seteq<1,1,1>(ap_const_logic_1, regslice_both_outStream_V_data_V_U_apdone_blk.read()) || esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state2_io.read()) || (esl_seteq<1,1,1>(icmp_ln14_fu_116_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, inStream_TVALID_int.read()))))) {
        inStream_TREADY_int = ap_const_logic_1;
    } else {
        inStream_TREADY_int = ap_const_logic_0;
    }
}

void pp_1::thread_outStream_TDATA_blk_n() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(icmp_ln14_fu_116_p2.read(), ap_const_lv1_0)) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()))) {
        outStream_TDATA_blk_n = outStream_TREADY_int.read();
    } else {
        outStream_TDATA_blk_n = ap_const_logic_1;
    }
}

void pp_1::thread_outStream_TDATA_int() {
    outStream_TDATA_int = (!inStream_TDATA_int.read().is_01() || !ap_const_lv32_5.is_01())? sc_lv<32>(): (sc_biguint<32>(inStream_TDATA_int.read()) + sc_biguint<32>(ap_const_lv32_5));
}

void pp_1::thread_outStream_TVALID() {
    outStream_TVALID = regslice_both_outStream_V_data_V_U_vld_out.read();
}

void pp_1::thread_outStream_TVALID_int() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln14_fu_116_p2.read(), ap_const_lv1_0) && 
         !(esl_seteq<1,1,1>(ap_const_logic_1, regslice_both_outStream_V_data_V_U_apdone_blk.read()) || esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state2_io.read()) || (esl_seteq<1,1,1>(icmp_ln14_fu_116_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, inStream_TVALID_int.read()))))) {
        outStream_TVALID_int = ap_const_logic_1;
    } else {
        outStream_TVALID_int = ap_const_logic_0;
    }
}

void pp_1::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln14_fu_116_p2.read(), ap_const_lv1_1) && !(esl_seteq<1,1,1>(ap_const_logic_1, regslice_both_outStream_V_data_V_U_apdone_blk.read()) || esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state2_io.read()) || (esl_seteq<1,1,1>(icmp_ln14_fu_116_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, inStream_TVALID_int.read()))))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln14_fu_116_p2.read(), ap_const_lv1_0) && !(esl_seteq<1,1,1>(ap_const_logic_1, regslice_both_outStream_V_data_V_U_apdone_blk.read()) || esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state2_io.read()) || (esl_seteq<1,1,1>(icmp_ln14_fu_116_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, inStream_TVALID_int.read()))))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else {
                ap_NS_fsm = ap_ST_fsm_state2;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(outStream_TREADY_int.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        default : 
            ap_NS_fsm = "XXX";
            break;
    }
}

void pp_1::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst_n\" :  \"" << ap_rst_n.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"inStream_TDATA\" :  \"" << inStream_TDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"inStream_TVALID\" :  \"" << inStream_TVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"inStream_TREADY\" :  \"" << inStream_TREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"inStream_TKEEP\" :  \"" << inStream_TKEEP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"inStream_TSTRB\" :  \"" << inStream_TSTRB.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"inStream_TUSER\" :  \"" << inStream_TUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"inStream_TLAST\" :  \"" << inStream_TLAST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"inStream_TID\" :  \"" << inStream_TID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"inStream_TDEST\" :  \"" << inStream_TDEST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"outStream_TDATA\" :  \"" << outStream_TDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"outStream_TVALID\" :  \"" << outStream_TVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"outStream_TREADY\" :  \"" << outStream_TREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"outStream_TKEEP\" :  \"" << outStream_TKEEP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"outStream_TSTRB\" :  \"" << outStream_TSTRB.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"outStream_TUSER\" :  \"" << outStream_TUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"outStream_TLAST\" :  \"" << outStream_TLAST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"outStream_TID\" :  \"" << outStream_TID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"outStream_TDEST\" :  \"" << outStream_TDEST.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}
