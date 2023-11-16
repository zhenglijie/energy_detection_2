
/*-- ----------------------------------------------
-- File Name: flip_t_wrapper.v
-- Created:   15-11月-2023 19:41:03
-- Copyright  2023 MathWorks, Inc.
-- ----------------------------------------------*/

module flip_t_wrapper (
      clk,
      enb,
      reset,
      din,
      dout
);


      input     clk;
      input     enb;
      input     reset;
      input    [7 : 0] din;
      output   [7 : 0] dout;

  wire dut_reset; // boolean
  wire[7 : 0] data_in; // std8
  wire[7 : 0] data_in_tmp; // std8
  wire[7 : 0] data_out; // std8
  wire[7 : 0] data_out_tmp; // std8
  wire[7 : 0] tmpconcat; // std8
flip_t u_flip_t (
        .clk_en               (enb),
        .clock                (clk),
        .rst_n                (dut_reset),
        .data_out             (data_out),
        .data_in              (data_in)
);

assign dut_reset =  ~ reset;
assign data_in = data_in_tmp;
assign data_in_tmp = din[7 : 0];
assign data_out_tmp = data_out;
assign data_out_tmp = data_out;
assign dout = {data_out_tmp};

endmodule
