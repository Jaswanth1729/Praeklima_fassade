-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity openhab_controls is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    inStream_TDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    inStream_TVALID : IN STD_LOGIC;
    inStream_TREADY : OUT STD_LOGIC;
    inStream_TKEEP : IN STD_LOGIC_VECTOR (3 downto 0);
    inStream_TSTRB : IN STD_LOGIC_VECTOR (3 downto 0);
    inStream_TUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    inStream_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    inStream_TID : IN STD_LOGIC_VECTOR (0 downto 0);
    inStream_TDEST : IN STD_LOGIC_VECTOR (0 downto 0);
    outStream_TDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    outStream_TVALID : OUT STD_LOGIC;
    outStream_TREADY : IN STD_LOGIC;
    outStream_TKEEP : OUT STD_LOGIC_VECTOR (3 downto 0);
    outStream_TSTRB : OUT STD_LOGIC_VECTOR (3 downto 0);
    outStream_TUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    outStream_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
    outStream_TID : OUT STD_LOGIC_VECTOR (0 downto 0);
    outStream_TDEST : OUT STD_LOGIC_VECTOR (0 downto 0);
    thresholds_V_Addr_A : OUT STD_LOGIC_VECTOR (31 downto 0);
    thresholds_V_EN_A : OUT STD_LOGIC;
    thresholds_V_WEN_A : OUT STD_LOGIC_VECTOR (3 downto 0);
    thresholds_V_Din_A : OUT STD_LOGIC_VECTOR (31 downto 0);
    thresholds_V_Dout_A : IN STD_LOGIC_VECTOR (31 downto 0);
    thresholds_V_Clk_A : OUT STD_LOGIC;
    thresholds_V_Rst_A : OUT STD_LOGIC;
    outData_V_Addr_A : OUT STD_LOGIC_VECTOR (31 downto 0);
    outData_V_EN_A : OUT STD_LOGIC;
    outData_V_WEN_A : OUT STD_LOGIC_VECTOR (3 downto 0);
    outData_V_Din_A : OUT STD_LOGIC_VECTOR (31 downto 0);
    outData_V_Dout_A : IN STD_LOGIC_VECTOR (31 downto 0);
    outData_V_Clk_A : OUT STD_LOGIC;
    outData_V_Rst_A : OUT STD_LOGIC );
end;


architecture behav of openhab_controls is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "openhab_controls,hls_ip_2019_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xczu3eg-sbva484-1-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.691000,HLS_SYN_LAT=41,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=50,HLS_SYN_LUT=107,HLS_VERSION=2019_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv4_F : STD_LOGIC_VECTOR (3 downto 0) := "1111";
    constant ap_const_lv5_14 : STD_LOGIC_VECTOR (4 downto 0) := "10100";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";

    signal ap_rst_n_inv : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal inStream_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal icmp_ln16_fu_152_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal outStream_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal i_fu_158_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal i_reg_225 : STD_LOGIC_VECTOR (4 downto 0);
    signal regslice_both_outStream_V_data_V_U_apdone_blk : STD_LOGIC;
    signal ap_block_state2 : BOOLEAN;
    signal ap_block_state2_io : BOOLEAN;
    signal tmp_data_V_reg_230 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln26_fu_199_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln26_reg_266 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_0_reg_141 : STD_LOGIC_VECTOR (4 downto 0);
    signal thresholds_V_Addr_A_orig : STD_LOGIC_VECTOR (31 downto 0);
    signal outData_V_Addr_A_orig : STD_LOGIC_VECTOR (31 downto 0);
    signal signbit_fu_204_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal shl_ln_fu_209_p3 : STD_LOGIC_VECTOR (16 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal regslice_both_inStream_V_data_V_U_apdone_blk : STD_LOGIC;
    signal inStream_TDATA_int : STD_LOGIC_VECTOR (31 downto 0);
    signal inStream_TVALID_int : STD_LOGIC;
    signal inStream_TREADY_int : STD_LOGIC;
    signal regslice_both_inStream_V_data_V_U_ack_in : STD_LOGIC;
    signal regslice_both_inStream_V_keep_V_U_apdone_blk : STD_LOGIC;
    signal inStream_TKEEP_int : STD_LOGIC_VECTOR (3 downto 0);
    signal regslice_both_inStream_V_keep_V_U_vld_out : STD_LOGIC;
    signal regslice_both_inStream_V_keep_V_U_ack_in : STD_LOGIC;
    signal regslice_both_inStream_V_strb_V_U_apdone_blk : STD_LOGIC;
    signal inStream_TSTRB_int : STD_LOGIC_VECTOR (3 downto 0);
    signal regslice_both_inStream_V_strb_V_U_vld_out : STD_LOGIC;
    signal regslice_both_inStream_V_strb_V_U_ack_in : STD_LOGIC;
    signal regslice_both_inStream_V_user_V_U_apdone_blk : STD_LOGIC;
    signal inStream_TUSER_int : STD_LOGIC_VECTOR (0 downto 0);
    signal regslice_both_inStream_V_user_V_U_vld_out : STD_LOGIC;
    signal regslice_both_inStream_V_user_V_U_ack_in : STD_LOGIC;
    signal regslice_both_inStream_V_last_V_U_apdone_blk : STD_LOGIC;
    signal inStream_TLAST_int : STD_LOGIC_VECTOR (0 downto 0);
    signal regslice_both_inStream_V_last_V_U_vld_out : STD_LOGIC;
    signal regslice_both_inStream_V_last_V_U_ack_in : STD_LOGIC;
    signal regslice_both_inStream_V_id_V_U_apdone_blk : STD_LOGIC;
    signal inStream_TID_int : STD_LOGIC_VECTOR (0 downto 0);
    signal regslice_both_inStream_V_id_V_U_vld_out : STD_LOGIC;
    signal regslice_both_inStream_V_id_V_U_ack_in : STD_LOGIC;
    signal regslice_both_inStream_V_dest_V_U_apdone_blk : STD_LOGIC;
    signal inStream_TDEST_int : STD_LOGIC_VECTOR (0 downto 0);
    signal regslice_both_inStream_V_dest_V_U_vld_out : STD_LOGIC;
    signal regslice_both_inStream_V_dest_V_U_ack_in : STD_LOGIC;
    signal outStream_TVALID_int : STD_LOGIC;
    signal outStream_TREADY_int : STD_LOGIC;
    signal regslice_both_outStream_V_data_V_U_vld_out : STD_LOGIC;
    signal regslice_both_outStream_V_keep_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_outStream_V_keep_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_outStream_V_keep_V_U_vld_out : STD_LOGIC;
    signal regslice_both_outStream_V_strb_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_outStream_V_strb_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_outStream_V_strb_V_U_vld_out : STD_LOGIC;
    signal regslice_both_outStream_V_user_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_outStream_V_user_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_outStream_V_user_V_U_vld_out : STD_LOGIC;
    signal regslice_both_outStream_V_last_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_outStream_V_last_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_outStream_V_last_V_U_vld_out : STD_LOGIC;
    signal regslice_both_outStream_V_id_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_outStream_V_id_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_outStream_V_id_V_U_vld_out : STD_LOGIC;
    signal regslice_both_outStream_V_dest_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_outStream_V_dest_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_outStream_V_dest_V_U_vld_out : STD_LOGIC;

    component regslice_both IS
    generic (
        DataWidth : INTEGER );
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        data_in : IN STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_in : IN STD_LOGIC;
        ack_in : OUT STD_LOGIC;
        data_out : OUT STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_out : OUT STD_LOGIC;
        ack_out : IN STD_LOGIC;
        apdone_blk : OUT STD_LOGIC );
    end component;



begin
    regslice_both_inStream_V_data_V_U : component regslice_both
    generic map (
        DataWidth => 32)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => inStream_TDATA,
        vld_in => inStream_TVALID,
        ack_in => regslice_both_inStream_V_data_V_U_ack_in,
        data_out => inStream_TDATA_int,
        vld_out => inStream_TVALID_int,
        ack_out => inStream_TREADY_int,
        apdone_blk => regslice_both_inStream_V_data_V_U_apdone_blk);

    regslice_both_inStream_V_keep_V_U : component regslice_both
    generic map (
        DataWidth => 4)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => inStream_TKEEP,
        vld_in => inStream_TVALID,
        ack_in => regslice_both_inStream_V_keep_V_U_ack_in,
        data_out => inStream_TKEEP_int,
        vld_out => regslice_both_inStream_V_keep_V_U_vld_out,
        ack_out => inStream_TREADY_int,
        apdone_blk => regslice_both_inStream_V_keep_V_U_apdone_blk);

    regslice_both_inStream_V_strb_V_U : component regslice_both
    generic map (
        DataWidth => 4)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => inStream_TSTRB,
        vld_in => inStream_TVALID,
        ack_in => regslice_both_inStream_V_strb_V_U_ack_in,
        data_out => inStream_TSTRB_int,
        vld_out => regslice_both_inStream_V_strb_V_U_vld_out,
        ack_out => inStream_TREADY_int,
        apdone_blk => regslice_both_inStream_V_strb_V_U_apdone_blk);

    regslice_both_inStream_V_user_V_U : component regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => inStream_TUSER,
        vld_in => inStream_TVALID,
        ack_in => regslice_both_inStream_V_user_V_U_ack_in,
        data_out => inStream_TUSER_int,
        vld_out => regslice_both_inStream_V_user_V_U_vld_out,
        ack_out => inStream_TREADY_int,
        apdone_blk => regslice_both_inStream_V_user_V_U_apdone_blk);

    regslice_both_inStream_V_last_V_U : component regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => inStream_TLAST,
        vld_in => inStream_TVALID,
        ack_in => regslice_both_inStream_V_last_V_U_ack_in,
        data_out => inStream_TLAST_int,
        vld_out => regslice_both_inStream_V_last_V_U_vld_out,
        ack_out => inStream_TREADY_int,
        apdone_blk => regslice_both_inStream_V_last_V_U_apdone_blk);

    regslice_both_inStream_V_id_V_U : component regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => inStream_TID,
        vld_in => inStream_TVALID,
        ack_in => regslice_both_inStream_V_id_V_U_ack_in,
        data_out => inStream_TID_int,
        vld_out => regslice_both_inStream_V_id_V_U_vld_out,
        ack_out => inStream_TREADY_int,
        apdone_blk => regslice_both_inStream_V_id_V_U_apdone_blk);

    regslice_both_inStream_V_dest_V_U : component regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => inStream_TDEST,
        vld_in => inStream_TVALID,
        ack_in => regslice_both_inStream_V_dest_V_U_ack_in,
        data_out => inStream_TDEST_int,
        vld_out => regslice_both_inStream_V_dest_V_U_vld_out,
        ack_out => inStream_TREADY_int,
        apdone_blk => regslice_both_inStream_V_dest_V_U_apdone_blk);

    regslice_both_outStream_V_data_V_U : component regslice_both
    generic map (
        DataWidth => 32)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => inStream_TDATA_int,
        vld_in => outStream_TVALID_int,
        ack_in => outStream_TREADY_int,
        data_out => outStream_TDATA,
        vld_out => regslice_both_outStream_V_data_V_U_vld_out,
        ack_out => outStream_TREADY,
        apdone_blk => regslice_both_outStream_V_data_V_U_apdone_blk);

    regslice_both_outStream_V_keep_V_U : component regslice_both
    generic map (
        DataWidth => 4)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => inStream_TKEEP_int,
        vld_in => outStream_TVALID_int,
        ack_in => regslice_both_outStream_V_keep_V_U_ack_in_dummy,
        data_out => outStream_TKEEP,
        vld_out => regslice_both_outStream_V_keep_V_U_vld_out,
        ack_out => outStream_TREADY,
        apdone_blk => regslice_both_outStream_V_keep_V_U_apdone_blk);

    regslice_both_outStream_V_strb_V_U : component regslice_both
    generic map (
        DataWidth => 4)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => inStream_TSTRB_int,
        vld_in => outStream_TVALID_int,
        ack_in => regslice_both_outStream_V_strb_V_U_ack_in_dummy,
        data_out => outStream_TSTRB,
        vld_out => regslice_both_outStream_V_strb_V_U_vld_out,
        ack_out => outStream_TREADY,
        apdone_blk => regslice_both_outStream_V_strb_V_U_apdone_blk);

    regslice_both_outStream_V_user_V_U : component regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => inStream_TUSER_int,
        vld_in => outStream_TVALID_int,
        ack_in => regslice_both_outStream_V_user_V_U_ack_in_dummy,
        data_out => outStream_TUSER,
        vld_out => regslice_both_outStream_V_user_V_U_vld_out,
        ack_out => outStream_TREADY,
        apdone_blk => regslice_both_outStream_V_user_V_U_apdone_blk);

    regslice_both_outStream_V_last_V_U : component regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => inStream_TLAST_int,
        vld_in => outStream_TVALID_int,
        ack_in => regslice_both_outStream_V_last_V_U_ack_in_dummy,
        data_out => outStream_TLAST,
        vld_out => regslice_both_outStream_V_last_V_U_vld_out,
        ack_out => outStream_TREADY,
        apdone_blk => regslice_both_outStream_V_last_V_U_apdone_blk);

    regslice_both_outStream_V_id_V_U : component regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => inStream_TID_int,
        vld_in => outStream_TVALID_int,
        ack_in => regslice_both_outStream_V_id_V_U_ack_in_dummy,
        data_out => outStream_TID,
        vld_out => regslice_both_outStream_V_id_V_U_vld_out,
        ack_out => outStream_TREADY,
        apdone_blk => regslice_both_outStream_V_id_V_U_apdone_blk);

    regslice_both_outStream_V_dest_V_U : component regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => inStream_TDEST_int,
        vld_in => outStream_TVALID_int,
        ack_in => regslice_both_outStream_V_dest_V_U_ack_in_dummy,
        data_out => outStream_TDEST,
        vld_out => regslice_both_outStream_V_dest_V_U_vld_out,
        ack_out => outStream_TREADY,
        apdone_blk => regslice_both_outStream_V_dest_V_U_apdone_blk);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    i_0_reg_141_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((outStream_TREADY_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                i_0_reg_141 <= i_reg_225;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_0_reg_141 <= ap_const_lv5_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_const_boolean_1 = ap_block_state2_io) or (regslice_both_outStream_V_data_V_U_apdone_blk = ap_const_logic_1) or ((icmp_ln16_fu_152_p2 = ap_const_lv1_0) and (inStream_TVALID_int = ap_const_logic_0)))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                i_reg_225 <= i_fu_158_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_const_boolean_1 = ap_block_state2_io) or (regslice_both_outStream_V_data_V_U_apdone_blk = ap_const_logic_1) or ((icmp_ln16_fu_152_p2 = ap_const_lv1_0) and (inStream_TVALID_int = ap_const_logic_0)))) and (icmp_ln16_fu_152_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                tmp_data_V_reg_230 <= inStream_TDATA_int;
                    zext_ln26_reg_266(4 downto 0) <= zext_ln26_fu_199_p1(4 downto 0);
            end if;
        end if;
    end process;
    zext_ln26_reg_266(63 downto 5) <= "00000000000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln16_fu_152_p2, ap_CS_fsm_state3, regslice_both_outStream_V_data_V_U_apdone_blk, ap_block_state2_io, inStream_TVALID_int, outStream_TREADY_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if ((not(((ap_const_boolean_1 = ap_block_state2_io) or (regslice_both_outStream_V_data_V_U_apdone_blk = ap_const_logic_1) or ((icmp_ln16_fu_152_p2 = ap_const_lv1_0) and (inStream_TVALID_int = ap_const_logic_0)))) and (icmp_ln16_fu_152_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                elsif ((not(((ap_const_boolean_1 = ap_block_state2_io) or (regslice_both_outStream_V_data_V_U_apdone_blk = ap_const_logic_1) or ((icmp_ln16_fu_152_p2 = ap_const_lv1_0) and (inStream_TVALID_int = ap_const_logic_0)))) and (icmp_ln16_fu_152_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                if (((outStream_TREADY_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);

    ap_block_state2_assign_proc : process(icmp_ln16_fu_152_p2, regslice_both_outStream_V_data_V_U_apdone_blk, inStream_TVALID_int)
    begin
                ap_block_state2 <= ((regslice_both_outStream_V_data_V_U_apdone_blk = ap_const_logic_1) or ((icmp_ln16_fu_152_p2 = ap_const_lv1_0) and (inStream_TVALID_int = ap_const_logic_0)));
    end process;


    ap_block_state2_io_assign_proc : process(icmp_ln16_fu_152_p2, outStream_TREADY_int)
    begin
                ap_block_state2_io <= ((icmp_ln16_fu_152_p2 = ap_const_lv1_0) and (outStream_TREADY_int = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_CS_fsm_state2, icmp_ln16_fu_152_p2, regslice_both_outStream_V_data_V_U_apdone_blk, ap_block_state2_io, inStream_TVALID_int)
    begin
        if ((not(((ap_const_boolean_1 = ap_block_state2_io) or (regslice_both_outStream_V_data_V_U_apdone_blk = ap_const_logic_1) or ((icmp_ln16_fu_152_p2 = ap_const_lv1_0) and (inStream_TVALID_int = ap_const_logic_0)))) and (icmp_ln16_fu_152_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln16_fu_152_p2, regslice_both_outStream_V_data_V_U_apdone_blk, ap_block_state2_io, inStream_TVALID_int)
    begin
        if ((not(((ap_const_boolean_1 = ap_block_state2_io) or (regslice_both_outStream_V_data_V_U_apdone_blk = ap_const_logic_1) or ((icmp_ln16_fu_152_p2 = ap_const_lv1_0) and (inStream_TVALID_int = ap_const_logic_0)))) and (icmp_ln16_fu_152_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    i_fu_158_p2 <= std_logic_vector(unsigned(i_0_reg_141) + unsigned(ap_const_lv5_1));
    icmp_ln16_fu_152_p2 <= "1" when (i_0_reg_141 = ap_const_lv5_14) else "0";

    inStream_TDATA_blk_n_assign_proc : process(ap_CS_fsm_state2, icmp_ln16_fu_152_p2, inStream_TVALID_int)
    begin
        if (((icmp_ln16_fu_152_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            inStream_TDATA_blk_n <= inStream_TVALID_int;
        else 
            inStream_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    inStream_TREADY_assign_proc : process(inStream_TVALID, regslice_both_inStream_V_data_V_U_ack_in)
    begin
        if (((inStream_TVALID = ap_const_logic_1) and (regslice_both_inStream_V_data_V_U_ack_in = ap_const_logic_1))) then 
            inStream_TREADY <= ap_const_logic_1;
        else 
            inStream_TREADY <= ap_const_logic_0;
        end if; 
    end process;


    inStream_TREADY_int_assign_proc : process(ap_CS_fsm_state2, icmp_ln16_fu_152_p2, regslice_both_outStream_V_data_V_U_apdone_blk, ap_block_state2_io, inStream_TVALID_int)
    begin
        if ((not(((ap_const_boolean_1 = ap_block_state2_io) or (regslice_both_outStream_V_data_V_U_apdone_blk = ap_const_logic_1) or ((icmp_ln16_fu_152_p2 = ap_const_lv1_0) and (inStream_TVALID_int = ap_const_logic_0)))) and (icmp_ln16_fu_152_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            inStream_TREADY_int <= ap_const_logic_1;
        else 
            inStream_TREADY_int <= ap_const_logic_0;
        end if; 
    end process;

    outData_V_Addr_A <= std_logic_vector(shift_left(unsigned(outData_V_Addr_A_orig),to_integer(unsigned('0' & ap_const_lv32_2(31-1 downto 0)))));
    outData_V_Addr_A_orig <= zext_ln26_reg_266(32 - 1 downto 0);
    outData_V_Clk_A <= ap_clk;
    outData_V_Din_A <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln_fu_209_p3),32));

    outData_V_EN_A_assign_proc : process(ap_CS_fsm_state3, outStream_TREADY_int)
    begin
        if (((outStream_TREADY_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            outData_V_EN_A <= ap_const_logic_1;
        else 
            outData_V_EN_A <= ap_const_logic_0;
        end if; 
    end process;

    outData_V_Rst_A <= ap_rst_n_inv;

    outData_V_WEN_A_assign_proc : process(ap_CS_fsm_state3, outStream_TREADY_int)
    begin
        if (((outStream_TREADY_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            outData_V_WEN_A <= ap_const_lv4_F;
        else 
            outData_V_WEN_A <= ap_const_lv4_0;
        end if; 
    end process;


    outStream_TDATA_blk_n_assign_proc : process(ap_CS_fsm_state2, icmp_ln16_fu_152_p2, ap_CS_fsm_state3, outStream_TREADY_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or ((icmp_ln16_fu_152_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
            outStream_TDATA_blk_n <= outStream_TREADY_int;
        else 
            outStream_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    outStream_TVALID <= regslice_both_outStream_V_data_V_U_vld_out;

    outStream_TVALID_int_assign_proc : process(ap_CS_fsm_state2, icmp_ln16_fu_152_p2, regslice_both_outStream_V_data_V_U_apdone_blk, ap_block_state2_io, inStream_TVALID_int)
    begin
        if ((not(((ap_const_boolean_1 = ap_block_state2_io) or (regslice_both_outStream_V_data_V_U_apdone_blk = ap_const_logic_1) or ((icmp_ln16_fu_152_p2 = ap_const_lv1_0) and (inStream_TVALID_int = ap_const_logic_0)))) and (icmp_ln16_fu_152_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            outStream_TVALID_int <= ap_const_logic_1;
        else 
            outStream_TVALID_int <= ap_const_logic_0;
        end if; 
    end process;

    shl_ln_fu_209_p3 <= (signbit_fu_204_p2 & ap_const_lv16_0);
    signbit_fu_204_p2 <= "1" when (signed(tmp_data_V_reg_230) < signed(thresholds_V_Dout_A)) else "0";
    thresholds_V_Addr_A <= std_logic_vector(shift_left(unsigned(thresholds_V_Addr_A_orig),to_integer(unsigned('0' & ap_const_lv32_2(31-1 downto 0)))));
    thresholds_V_Addr_A_orig <= zext_ln26_fu_199_p1(32 - 1 downto 0);
    thresholds_V_Clk_A <= ap_clk;
    thresholds_V_Din_A <= ap_const_lv32_0;

    thresholds_V_EN_A_assign_proc : process(ap_CS_fsm_state2, icmp_ln16_fu_152_p2, regslice_both_outStream_V_data_V_U_apdone_blk, ap_block_state2_io, inStream_TVALID_int)
    begin
        if ((not(((ap_const_boolean_1 = ap_block_state2_io) or (regslice_both_outStream_V_data_V_U_apdone_blk = ap_const_logic_1) or ((icmp_ln16_fu_152_p2 = ap_const_lv1_0) and (inStream_TVALID_int = ap_const_logic_0)))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            thresholds_V_EN_A <= ap_const_logic_1;
        else 
            thresholds_V_EN_A <= ap_const_logic_0;
        end if; 
    end process;

    thresholds_V_Rst_A <= ap_rst_n_inv;
    thresholds_V_WEN_A <= ap_const_lv4_0;
    zext_ln26_fu_199_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_reg_141),64));
end behav;
