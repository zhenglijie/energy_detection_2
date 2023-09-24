`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/24 11:33:25
// Design Name: 
// Module Name: tb_fifo_func
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_fifo_func();
    reg clk;
    reg srst;
    reg [31:0] din;
    reg wr_en;
    reg rd_en;
    
    wire [31:0] dout;
    wire full;
    wire empty;
    wire almost_full;
    wire almost_empty;
    
    initial begin
        srst = 1'b1;
        #20
        srst <= 1'b0;
        clk <= 1'b0;
    end
    
    always #10 clk = ~clk;
    
    always @ (posedge clk, posedge srst) begin
        if (srst == 1'b1) begin
            wr_en <= 1'b0;
            rd_en <= 1'b0;
        end
        else if (almost_full == 1'b1) begin
            wr_en <= 1'b0;
            rd_en <= 1'b1;
        end   
        else if (almost_empty == 1'b1) begin
            wr_en <= 1'b1;
            rd_en <= 1'b0;
        end
        else begin
            wr_en <= wr_en;
            rd_en <= rd_en;
        end 
    end
    
    always @ (posedge clk, posedge srst) begin
        if (srst == 1'b1) 
            din <= 1'b0;
        else
            din <= din + 1'b1;
    end

    fifo fifo_inst (
      .clk(clk),      // input wire clk
      .srst(srst),    // input wire srst
      .din(din),      // input wire [31 : 0] din
      .wr_en(wr_en),  // input wire wr_en
      .rd_en(rd_en),  // input wire rd_en
      .dout(dout),    // output wire [31 : 0] dout
      .full(full),    // output wire full
      .almost_full(almost_full),    //output wire almost_full
      .empty(empty),  // output wire empty
      .almost_empty(almost_empty)   //output wire almost_empty
    );
    
endmodule
