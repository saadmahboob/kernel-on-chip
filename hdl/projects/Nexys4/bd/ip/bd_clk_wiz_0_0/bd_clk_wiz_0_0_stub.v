// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Mon Apr 24 08:52:30 2017
// Host        : andrewandrepowell2-desktop running 64-bit Ubuntu 16.04 LTS
// Command     : write_verilog -force -mode synth_stub
//               /opt/Xilinx/Projects/koc/kernel-on-chip/hdl/projects/Nexys4/bd/ip/bd_clk_wiz_0_0/bd_clk_wiz_0_0_stub.v
// Design      : bd_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module bd_clk_wiz_0_0(clk_ref_i, resetn, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_ref_i,resetn,clk_in1" */;
  output clk_ref_i;
  input resetn;
  input clk_in1;
endmodule
