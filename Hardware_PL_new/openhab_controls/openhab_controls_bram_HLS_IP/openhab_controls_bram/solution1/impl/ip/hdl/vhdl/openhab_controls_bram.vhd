-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity openhab_controls_bram is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    inputData_V_Addr_A : OUT STD_LOGIC_VECTOR (31 downto 0);
    inputData_V_EN_A : OUT STD_LOGIC;
    inputData_V_WEN_A : OUT STD_LOGIC_VECTOR (3 downto 0);
    inputData_V_Din_A : OUT STD_LOGIC_VECTOR (31 downto 0);
    inputData_V_Dout_A : IN STD_LOGIC_VECTOR (31 downto 0);
    inputData_V_Clk_A : OUT STD_LOGIC;
    inputData_V_Rst_A : OUT STD_LOGIC;
    thresholds_V_Addr_A : OUT STD_LOGIC_VECTOR (31 downto 0);
    thresholds_V_EN_A : OUT STD_LOGIC;
    thresholds_V_WEN_A : OUT STD_LOGIC_VECTOR (3 downto 0);
    thresholds_V_Din_A : OUT STD_LOGIC_VECTOR (31 downto 0);
    thresholds_V_Dout_A : IN STD_LOGIC_VECTOR (31 downto 0);
    thresholds_V_Clk_A : OUT STD_LOGIC;
    thresholds_V_Rst_A : OUT STD_LOGIC;
    outData_Addr_A : OUT STD_LOGIC_VECTOR (31 downto 0);
    outData_EN_A : OUT STD_LOGIC;
    outData_WEN_A : OUT STD_LOGIC_VECTOR (3 downto 0);
    outData_Din_A : OUT STD_LOGIC_VECTOR (31 downto 0);
    outData_Dout_A : IN STD_LOGIC_VECTOR (31 downto 0);
    outData_Clk_A : OUT STD_LOGIC;
    outData_Rst_A : OUT STD_LOGIC );
end;


architecture behav of openhab_controls_bram is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "openhab_controls_bram,hls_ip_2019_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xczu3eg-sbva484-1-i,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.691000,HLS_SYN_LAT=21,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=15,HLS_SYN_LUT=80,HLS_VERSION=2019_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv4_F : STD_LOGIC_VECTOR (3 downto 0) := "1111";
    constant ap_const_lv4_A : STD_LOGIC_VECTOR (3 downto 0) := "1010";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal i_fu_88_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_reg_114 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal zext_ln18_1_fu_94_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln18_1_reg_119 : STD_LOGIC_VECTOR (63 downto 0);
    signal icmp_ln16_fu_82_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_0_reg_71 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal inputData_V_Addr_A_orig : STD_LOGIC_VECTOR (31 downto 0);
    signal thresholds_V_Addr_A_orig : STD_LOGIC_VECTOR (31 downto 0);
    signal outData_Addr_A_orig : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln1495_fu_100_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    i_0_reg_71_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                i_0_reg_71 <= i_reg_114;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_0_reg_71 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_reg_114 <= i_fu_88_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln16_fu_82_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    zext_ln18_1_reg_119(3 downto 0) <= zext_ln18_1_fu_94_p1(3 downto 0);
            end if;
        end if;
    end process;
    zext_ln18_1_reg_119(63 downto 4) <= "000000000000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln16_fu_82_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln16_fu_82_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);

    ap_done_assign_proc : process(ap_CS_fsm_state2, icmp_ln16_fu_82_p2)
    begin
        if (((icmp_ln16_fu_82_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln16_fu_82_p2)
    begin
        if (((icmp_ln16_fu_82_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    i_fu_88_p2 <= std_logic_vector(unsigned(i_0_reg_71) + unsigned(ap_const_lv4_1));
    icmp_ln1495_fu_100_p2 <= "1" when (signed(inputData_V_Dout_A) < signed(thresholds_V_Dout_A)) else "0";
    icmp_ln16_fu_82_p2 <= "1" when (i_0_reg_71 = ap_const_lv4_A) else "0";
    inputData_V_Addr_A <= std_logic_vector(shift_left(unsigned(inputData_V_Addr_A_orig),to_integer(unsigned('0' & ap_const_lv32_2(31-1 downto 0)))));
    inputData_V_Addr_A_orig <= zext_ln18_1_fu_94_p1(32 - 1 downto 0);
    inputData_V_Clk_A <= ap_clk;
    inputData_V_Din_A <= ap_const_lv32_0;

    inputData_V_EN_A_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            inputData_V_EN_A <= ap_const_logic_1;
        else 
            inputData_V_EN_A <= ap_const_logic_0;
        end if; 
    end process;

    inputData_V_Rst_A <= ap_rst;
    inputData_V_WEN_A <= ap_const_lv4_0;
    outData_Addr_A <= std_logic_vector(shift_left(unsigned(outData_Addr_A_orig),to_integer(unsigned('0' & ap_const_lv32_2(31-1 downto 0)))));
    outData_Addr_A_orig <= zext_ln18_1_reg_119(32 - 1 downto 0);
    outData_Clk_A <= ap_clk;
    outData_Din_A <= std_logic_vector(IEEE.numeric_std.resize(unsigned(icmp_ln1495_fu_100_p2),32));

    outData_EN_A_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            outData_EN_A <= ap_const_logic_1;
        else 
            outData_EN_A <= ap_const_logic_0;
        end if; 
    end process;

    outData_Rst_A <= ap_rst;

    outData_WEN_A_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            outData_WEN_A <= ap_const_lv4_F;
        else 
            outData_WEN_A <= ap_const_lv4_0;
        end if; 
    end process;

    thresholds_V_Addr_A <= std_logic_vector(shift_left(unsigned(thresholds_V_Addr_A_orig),to_integer(unsigned('0' & ap_const_lv32_2(31-1 downto 0)))));
    thresholds_V_Addr_A_orig <= zext_ln18_1_fu_94_p1(32 - 1 downto 0);
    thresholds_V_Clk_A <= ap_clk;
    thresholds_V_Din_A <= ap_const_lv32_0;

    thresholds_V_EN_A_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            thresholds_V_EN_A <= ap_const_logic_1;
        else 
            thresholds_V_EN_A <= ap_const_logic_0;
        end if; 
    end process;

    thresholds_V_Rst_A <= ap_rst;
    thresholds_V_WEN_A <= ap_const_lv4_0;
    zext_ln18_1_fu_94_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_reg_71),64));
end behav;
