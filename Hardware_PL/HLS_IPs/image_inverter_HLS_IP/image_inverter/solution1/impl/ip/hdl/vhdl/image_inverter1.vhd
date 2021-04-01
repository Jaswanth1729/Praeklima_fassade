-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity image_inverter1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    inStream_TDATA : IN STD_LOGIC_VECTOR (7 downto 0);
    inStream_TVALID : IN STD_LOGIC;
    inStream_TREADY : OUT STD_LOGIC;
    inStream_TKEEP : IN STD_LOGIC_VECTOR (0 downto 0);
    inStream_TSTRB : IN STD_LOGIC_VECTOR (0 downto 0);
    inStream_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    outStream_TDATA : OUT STD_LOGIC_VECTOR (7 downto 0);
    outStream_TVALID : OUT STD_LOGIC;
    outStream_TREADY : IN STD_LOGIC;
    outStream_TKEEP : OUT STD_LOGIC_VECTOR (0 downto 0);
    outStream_TSTRB : OUT STD_LOGIC_VECTOR (0 downto 0);
    outStream_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of image_inverter1 is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "image_inverter1,hls_ip_2019_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu3eg-sbva484-1-i,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=pipeline,HLS_SYN_CLOCK=0.389000,HLS_SYN_LAT=1,HLS_SYN_TPT=1,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=2,HLS_SYN_LUT=32,HLS_VERSION=2019_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";

    signal ap_rst_n_inv : STD_LOGIC;
    signal inStream_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal outStream_TDATA_blk_n : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal regslice_both_outStream_V_data_V_U_apdone_blk : STD_LOGIC;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal regslice_both_inStream_V_data_V_U_apdone_blk : STD_LOGIC;
    signal inStream_TDATA_int : STD_LOGIC_VECTOR (7 downto 0);
    signal inStream_TVALID_int : STD_LOGIC;
    signal inStream_TREADY_int : STD_LOGIC;
    signal regslice_both_inStream_V_data_V_U_ack_in : STD_LOGIC;
    signal regslice_both_inStream_V_keep_V_U_apdone_blk : STD_LOGIC;
    signal inStream_TKEEP_int : STD_LOGIC_VECTOR (0 downto 0);
    signal regslice_both_inStream_V_keep_V_U_vld_out : STD_LOGIC;
    signal regslice_both_inStream_V_keep_V_U_ack_in : STD_LOGIC;
    signal regslice_both_inStream_V_strb_V_U_apdone_blk : STD_LOGIC;
    signal inStream_TSTRB_int : STD_LOGIC_VECTOR (0 downto 0);
    signal regslice_both_inStream_V_strb_V_U_vld_out : STD_LOGIC;
    signal regslice_both_inStream_V_strb_V_U_ack_in : STD_LOGIC;
    signal regslice_both_inStream_V_last_V_U_apdone_blk : STD_LOGIC;
    signal inStream_TLAST_int : STD_LOGIC_VECTOR (0 downto 0);
    signal regslice_both_inStream_V_last_V_U_vld_out : STD_LOGIC;
    signal regslice_both_inStream_V_last_V_U_ack_in : STD_LOGIC;
    signal outStream_TDATA_int : STD_LOGIC_VECTOR (7 downto 0);
    signal outStream_TVALID_int : STD_LOGIC;
    signal outStream_TREADY_int : STD_LOGIC;
    signal regslice_both_outStream_V_data_V_U_vld_out : STD_LOGIC;
    signal regslice_both_outStream_V_keep_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_outStream_V_keep_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_outStream_V_keep_V_U_vld_out : STD_LOGIC;
    signal regslice_both_outStream_V_strb_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_outStream_V_strb_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_outStream_V_strb_V_U_vld_out : STD_LOGIC;
    signal regslice_both_outStream_V_last_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_outStream_V_last_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_outStream_V_last_V_U_vld_out : STD_LOGIC;

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
        DataWidth => 8)
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
        DataWidth => 1)
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
        DataWidth => 1)
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

    regslice_both_outStream_V_data_V_U : component regslice_both
    generic map (
        DataWidth => 8)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => outStream_TDATA_int,
        vld_in => outStream_TVALID_int,
        ack_in => outStream_TREADY_int,
        data_out => outStream_TDATA,
        vld_out => regslice_both_outStream_V_data_V_U_vld_out,
        ack_out => outStream_TREADY,
        apdone_blk => regslice_both_outStream_V_data_V_U_apdone_blk);

    regslice_both_outStream_V_keep_V_U : component regslice_both
    generic map (
        DataWidth => 1)
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
        DataWidth => 1)
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





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_block_pp0_stage0_subdone, ap_reset_idle_pp0)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_enable_reg_pp0_iter1, regslice_both_outStream_V_data_V_U_apdone_blk, inStream_TVALID_int)
    begin
                ap_block_pp0_stage0_01001 <= (((regslice_both_outStream_V_data_V_U_apdone_blk = ap_const_logic_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((inStream_TVALID_int = ap_const_logic_0) and (ap_const_logic_1 = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter1, regslice_both_outStream_V_data_V_U_apdone_blk, inStream_TVALID_int, outStream_TREADY_int)
    begin
                ap_block_pp0_stage0_11001 <= (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((outStream_TREADY_int = ap_const_logic_0) or (regslice_both_outStream_V_data_V_U_apdone_blk = ap_const_logic_1))) or ((ap_const_logic_1 = ap_const_logic_1) and ((outStream_TREADY_int = ap_const_logic_0) or (inStream_TVALID_int = ap_const_logic_0))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter1, regslice_both_outStream_V_data_V_U_apdone_blk, inStream_TVALID_int, outStream_TREADY_int)
    begin
                ap_block_pp0_stage0_subdone <= (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((outStream_TREADY_int = ap_const_logic_0) or (regslice_both_outStream_V_data_V_U_apdone_blk = ap_const_logic_1))) or ((ap_const_logic_1 = ap_const_logic_1) and ((outStream_TREADY_int = ap_const_logic_0) or (inStream_TVALID_int = ap_const_logic_0))));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(inStream_TVALID_int)
    begin
                ap_block_state1_pp0_stage0_iter0 <= (inStream_TVALID_int = ap_const_logic_0);
    end process;


    ap_block_state2_pp0_stage0_iter1_assign_proc : process(regslice_both_outStream_V_data_V_U_apdone_blk)
    begin
                ap_block_state2_pp0_stage0_iter1 <= (regslice_both_outStream_V_data_V_U_apdone_blk = ap_const_logic_1);
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_const_logic_1 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_reset_idle_pp0 <= ap_const_logic_0;

    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;


    inStream_TDATA_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, inStream_TVALID_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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


    inStream_TREADY_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            inStream_TREADY_int <= ap_const_logic_1;
        else 
            inStream_TREADY_int <= ap_const_logic_0;
        end if; 
    end process;


    outStream_TDATA_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_enable_reg_pp0_iter1, outStream_TREADY_int)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            outStream_TDATA_blk_n <= outStream_TREADY_int;
        else 
            outStream_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    outStream_TDATA_int <= (inStream_TDATA_int xor ap_const_lv8_FF);
    outStream_TVALID <= regslice_both_outStream_V_data_V_U_vld_out;

    outStream_TVALID_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            outStream_TVALID_int <= ap_const_logic_1;
        else 
            outStream_TVALID_int <= ap_const_logic_0;
        end if; 
    end process;

end behav;
