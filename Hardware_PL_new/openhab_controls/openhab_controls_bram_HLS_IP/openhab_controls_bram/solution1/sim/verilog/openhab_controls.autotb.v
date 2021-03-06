// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      openhab_controls
`define AUTOTB_DUT_INST AESL_inst_openhab_controls
`define AUTOTB_TOP      apatb_openhab_controls_top
`define AUTOTB_LAT_RESULT_FILE "openhab_controls.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "openhab_controls.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_openhab_controls_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_BRAM_inputData_V AESL_autobram_inputData_V
`define AESL_BRAM_INST_inputData_V bram_inst_inputData_V
`define AESL_BRAM_thresholds_V AESL_autobram_thresholds_V
`define AESL_BRAM_INST_thresholds_V bram_inst_thresholds_V
`define AESL_BRAM_outData AESL_autobram_outData
`define AESL_BRAM_INST_outData bram_inst_outData
`define AUTOTB_TVIN_inputData_V  "../tv/cdatafile/c.openhab_controls.autotvin_inputData_V.dat"
`define AUTOTB_TVIN_thresholds_V  "../tv/cdatafile/c.openhab_controls.autotvin_thresholds_V.dat"
`define AUTOTB_TVIN_outData  "../tv/cdatafile/c.openhab_controls.autotvin_outData.dat"
`define AUTOTB_TVIN_inputData_V_out_wrapc  "../tv/rtldatafile/rtl.openhab_controls.autotvin_inputData_V.dat"
`define AUTOTB_TVIN_thresholds_V_out_wrapc  "../tv/rtldatafile/rtl.openhab_controls.autotvin_thresholds_V.dat"
`define AUTOTB_TVIN_outData_out_wrapc  "../tv/rtldatafile/rtl.openhab_controls.autotvin_outData.dat"
`define AUTOTB_TVOUT_outData  "../tv/cdatafile/c.openhab_controls.autotvout_outData.dat"
`define AUTOTB_TVOUT_outData_out_wrapc  "../tv/rtldatafile/rtl.openhab_controls.autotvout_outData.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 21;
parameter LENGTH_inputData_V = 10;
parameter LENGTH_thresholds_V = 10;
parameter LENGTH_outData = 10;

task read_token;
    input integer fp;
    output reg [175 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire ap_start;
wire ap_done;
wire ap_idle;
wire ap_ready;
wire [31 : 0] inputData_V_ADDR_A;
wire  inputData_V_EN_A;
wire [3 : 0] inputData_V_WEN_A;
wire [31 : 0] inputData_V_DIN_A;
wire [31 : 0] inputData_V_DOUT_A;
wire  inputData_V_CLK_A;
wire  inputData_V_RST_A;
wire [31 : 0] thresholds_V_ADDR_A;
wire  thresholds_V_EN_A;
wire [3 : 0] thresholds_V_WEN_A;
wire [31 : 0] thresholds_V_DIN_A;
wire [31 : 0] thresholds_V_DOUT_A;
wire  thresholds_V_CLK_A;
wire  thresholds_V_RST_A;
wire [31 : 0] outData_ADDR_A;
wire  outData_EN_A;
wire [3 : 0] outData_WEN_A;
wire [31 : 0] outData_DIN_A;
wire [31 : 0] outData_DOUT_A;
wire  outData_CLK_A;
wire  outData_RST_A;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;

wire ap_clk;
wire ap_rst;
wire ap_rst_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .inputData_V_Addr_A(inputData_V_ADDR_A),
    .inputData_V_EN_A(inputData_V_EN_A),
    .inputData_V_WEN_A(inputData_V_WEN_A),
    .inputData_V_Din_A(inputData_V_DIN_A),
    .inputData_V_Dout_A(inputData_V_DOUT_A),
    .inputData_V_Clk_A(inputData_V_CLK_A),
    .inputData_V_Rst_A(inputData_V_RST_A),
    .thresholds_V_Addr_A(thresholds_V_ADDR_A),
    .thresholds_V_EN_A(thresholds_V_EN_A),
    .thresholds_V_WEN_A(thresholds_V_WEN_A),
    .thresholds_V_Din_A(thresholds_V_DIN_A),
    .thresholds_V_Dout_A(thresholds_V_DOUT_A),
    .thresholds_V_Clk_A(thresholds_V_CLK_A),
    .thresholds_V_Rst_A(thresholds_V_RST_A),
    .outData_Addr_A(outData_ADDR_A),
    .outData_EN_A(outData_EN_A),
    .outData_WEN_A(outData_WEN_A),
    .outData_Din_A(outData_DIN_A),
    .outData_Dout_A(outData_DOUT_A),
    .outData_Clk_A(outData_CLK_A),
    .outData_Rst_A(outData_RST_A));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst = AESL_reset;
assign ap_rst_n = ~AESL_reset;
assign AESL_reset = rst;
assign ap_start = AESL_start;
assign AESL_start = start;
assign AESL_done = ap_done;
assign AESL_idle = ap_idle;
assign AESL_ready = ap_ready;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_done !== 1 && AESL_done !== 0) begin
                $display("ERROR: Control signal AESL_done is invalid!");
                $finish;
            end
        end
    end
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_ready !== 1 && AESL_ready !== 0) begin
                $display("ERROR: Control signal AESL_ready is invalid!");
                $finish;
            end
        end
    end
//------------------------braminputData_V Instantiation--------------

// The input and output of braminputData_V
wire  braminputData_V_Clk_A, braminputData_V_Clk_B;
wire  braminputData_V_EN_A, braminputData_V_EN_B;
wire  [4 - 1 : 0] braminputData_V_WEN_A, braminputData_V_WEN_B;
wire    [31 : 0]    braminputData_V_Addr_A, braminputData_V_Addr_B;
wire    [31 : 0]    braminputData_V_Din_A, braminputData_V_Din_B;
wire    [31 : 0]    braminputData_V_Dout_A, braminputData_V_Dout_B;
wire    braminputData_V_ready;
wire    braminputData_V_done;

`AESL_BRAM_inputData_V `AESL_BRAM_INST_inputData_V(
    .Clk_A    (braminputData_V_Clk_A),
    .Rst_A    (braminputData_V_Rst_A),
    .EN_A     (braminputData_V_EN_A),
    .WEN_A    (braminputData_V_WEN_A),
    .Addr_A   (braminputData_V_Addr_A),
    .Din_A    (braminputData_V_Din_A),
    .Dout_A   (braminputData_V_Dout_A),
    .Clk_B    (braminputData_V_Clk_B),
    .Rst_B    (braminputData_V_Rst_B),
    .EN_B     (braminputData_V_EN_B),
    .WEN_B    (braminputData_V_WEN_B),
    .Addr_B   (braminputData_V_Addr_B),
    .Din_B    (braminputData_V_Din_B),
    .Dout_B   (braminputData_V_Dout_B),
    .ready    (braminputData_V_ready),
    .done        (braminputData_V_done)
);

// Assignment between dut and braminputData_V
assign braminputData_V_Clk_A = inputData_V_CLK_A;
assign braminputData_V_Rst_A = inputData_V_RST_A;
assign braminputData_V_Addr_A = inputData_V_ADDR_A;
assign braminputData_V_EN_A = inputData_V_EN_A;
assign inputData_V_DOUT_A = braminputData_V_Dout_A;
assign braminputData_V_WEN_A = 0;
assign braminputData_V_Din_A = 0;
assign braminputData_V_WEN_B = 0;
assign braminputData_V_Din_B = 0;
assign braminputData_V_ready=    ready;
assign braminputData_V_done = 0;


//------------------------bramthresholds_V Instantiation--------------

// The input and output of bramthresholds_V
wire  bramthresholds_V_Clk_A, bramthresholds_V_Clk_B;
wire  bramthresholds_V_EN_A, bramthresholds_V_EN_B;
wire  [4 - 1 : 0] bramthresholds_V_WEN_A, bramthresholds_V_WEN_B;
wire    [31 : 0]    bramthresholds_V_Addr_A, bramthresholds_V_Addr_B;
wire    [31 : 0]    bramthresholds_V_Din_A, bramthresholds_V_Din_B;
wire    [31 : 0]    bramthresholds_V_Dout_A, bramthresholds_V_Dout_B;
wire    bramthresholds_V_ready;
wire    bramthresholds_V_done;

`AESL_BRAM_thresholds_V `AESL_BRAM_INST_thresholds_V(
    .Clk_A    (bramthresholds_V_Clk_A),
    .Rst_A    (bramthresholds_V_Rst_A),
    .EN_A     (bramthresholds_V_EN_A),
    .WEN_A    (bramthresholds_V_WEN_A),
    .Addr_A   (bramthresholds_V_Addr_A),
    .Din_A    (bramthresholds_V_Din_A),
    .Dout_A   (bramthresholds_V_Dout_A),
    .Clk_B    (bramthresholds_V_Clk_B),
    .Rst_B    (bramthresholds_V_Rst_B),
    .EN_B     (bramthresholds_V_EN_B),
    .WEN_B    (bramthresholds_V_WEN_B),
    .Addr_B   (bramthresholds_V_Addr_B),
    .Din_B    (bramthresholds_V_Din_B),
    .Dout_B   (bramthresholds_V_Dout_B),
    .ready    (bramthresholds_V_ready),
    .done        (bramthresholds_V_done)
);

// Assignment between dut and bramthresholds_V
assign bramthresholds_V_Clk_A = thresholds_V_CLK_A;
assign bramthresholds_V_Rst_A = thresholds_V_RST_A;
assign bramthresholds_V_Addr_A = thresholds_V_ADDR_A;
assign bramthresholds_V_EN_A = thresholds_V_EN_A;
assign thresholds_V_DOUT_A = bramthresholds_V_Dout_A;
assign bramthresholds_V_WEN_A = 0;
assign bramthresholds_V_Din_A = 0;
assign bramthresholds_V_WEN_B = 0;
assign bramthresholds_V_Din_B = 0;
assign bramthresholds_V_ready=    ready;
assign bramthresholds_V_done = 0;


//------------------------bramoutData Instantiation--------------

// The input and output of bramoutData
wire  bramoutData_Clk_A, bramoutData_Clk_B;
wire  bramoutData_EN_A, bramoutData_EN_B;
wire  [4 - 1 : 0] bramoutData_WEN_A, bramoutData_WEN_B;
wire    [31 : 0]    bramoutData_Addr_A, bramoutData_Addr_B;
wire    [31 : 0]    bramoutData_Din_A, bramoutData_Din_B;
wire    [31 : 0]    bramoutData_Dout_A, bramoutData_Dout_B;
wire    bramoutData_ready;
wire    bramoutData_done;

`AESL_BRAM_outData `AESL_BRAM_INST_outData(
    .Clk_A    (bramoutData_Clk_A),
    .Rst_A    (bramoutData_Rst_A),
    .EN_A     (bramoutData_EN_A),
    .WEN_A    (bramoutData_WEN_A),
    .Addr_A   (bramoutData_Addr_A),
    .Din_A    (bramoutData_Din_A),
    .Dout_A   (bramoutData_Dout_A),
    .Clk_B    (bramoutData_Clk_B),
    .Rst_B    (bramoutData_Rst_B),
    .EN_B     (bramoutData_EN_B),
    .WEN_B    (bramoutData_WEN_B),
    .Addr_B   (bramoutData_Addr_B),
    .Din_B    (bramoutData_Din_B),
    .Dout_B   (bramoutData_Dout_B),
    .ready    (bramoutData_ready),
    .done        (bramoutData_done)
);

// Assignment between dut and bramoutData
assign bramoutData_Clk_A = outData_CLK_A;
assign bramoutData_Rst_A = outData_RST_A;
assign bramoutData_Addr_A = outData_ADDR_A;
assign bramoutData_EN_A = outData_EN_A;
assign bramoutData_WEN_A = outData_WEN_A;
assign bramoutData_Din_A = outData_DIN_A;
assign bramoutData_WEN_B = 0;
assign bramoutData_Din_B = 0;
assign bramoutData_ready= ready_initial | bramoutData_done;
assign bramoutData_done =    AESL_done_delay;


initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 0);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 0);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_inputData_V;
reg [31:0] size_inputData_V;
reg [31:0] size_inputData_V_backup;
reg end_thresholds_V;
reg [31:0] size_thresholds_V;
reg [31:0] size_thresholds_V_backup;
reg end_outData;
reg [31:0] size_outData;
reg [31:0] size_outData_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 1;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    rst = 0;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 0);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt >= AUTOTB_TRANSACTION_NUM) begin
            // keep pushing garbage in
            #0 start = 1;
        end
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end

reg dump_tvout_finish_outData;

initial begin : dump_tvout_runtime_sign_outData
    integer fp;
    dump_tvout_finish_outData = 0;
    fp = $fopen(`AUTOTB_TVOUT_outData_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_outData_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_outData_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_outData_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_outData = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    clk_cnt <= clk_cnt + 1;
    AESL_ready_p1 <= AESL_ready;
    AESL_start_p1 <= AESL_start;
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
event report_progress;

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 0);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 0);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = finish_timestamp[i] - start_timestamp[i]+1;
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

endmodule
