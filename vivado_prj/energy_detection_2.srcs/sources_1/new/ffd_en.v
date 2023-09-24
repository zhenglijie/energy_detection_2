`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/24 16:35:08
// Design Name: 
// Module Name: ffd_en
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


module ffd_en(
    input clk,
    input rst,
    input d,
    input en,
    output reg q
);

    always @ (posedge rst, posedge clk) begin
        if (rst == 1'b1)
            q <= 0;
        else begin
            if (en == 1'b1)
                q <= d;
        end
    end

endmodule
