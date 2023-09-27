`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/27 09:33:47
// Design Name: 
// Module Name: tb_fft_squaremg_ed_fixed
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


module tb_fft_squaremg_ed_fixed();
    reg sys_clk;
    reg areset;

    integer fd, code, i;
    reg signed [31:0] time_domain[1023:0];

    //read
    initial begin
        #40
        //read data
        fd = $fopen("F:/Users/Lenovo/Desktop/fpga_zynq/energy_detection_2/matlab/FFT_Test/data_before_fft.txt", "r");
        for (i = 0; i < 1024; i = i + 1) begin
            code = $fscanf(fd, "%d", time_domain[i]);
        end
        $fclose(fd);
    end
    
    reg strobe;
    
    initial begin
        #100
        sys_clk = 1'b1;
        areset <= 1'b1;
        #20
        areset <= 1'b0;
        strobe <= 1'b1;
    end

    always #10 sys_clk = ~sys_clk;
    
    reg [31:0]ram_in_data;
    
    reg [9:0]addra;
    
    always @ (posedge sys_clk, posedge areset) begin
        if (areset)
            addra <= 10'd0;
        else if (strobe)
            addra <= addra + 10'd1;
        else
            addra <= addra;
    end
    
    always @ (posedge sys_clk, posedge areset) begin
        if (areset)
            ram_in_data <= 32'd0;
        else 
            ram_in_data <= time_domain[addra];
    end
    
    wire fft_m_out_data_tvalid, fft_m_out_data_tlast;
    wire [15:0]fft_out_data_real_abs;
    wire [31:0]fft_m_out_data;

    fft fft_inst(
        .sys_clk(sys_clk), //input
        .areset(areset),    //input
        .strobe(strobe),    //input
        
        .ram_in_data(ram_in_data),  //input
        .fft_m_out_data(fft_m_out_data),    //output
        .fft_out_data_real_abs(fft_out_data_real_abs),      //output
        .fft_m_out_data_tvalid(fft_m_out_data_tvalid),      //output
        .fft_m_out_data_tlast(fft_m_out_data_tlast)         //output
    );
    
    wire [31:0]xk_sq_m;
    wire dv_sq_m;
    
    square_mag square_mag_inst(
        .sys_clk(sys_clk),  //input
        .areset(areset),    //input
        .dv_fft(fft_m_out_data_tvalid), //input
        .xk_re(fft_m_out_data[15:0]),      //input re
        .xk_im(fft_m_out_data[31:16]),      //input img
        
        .dv_sq_m(dv_sq_m), //output
        .xk_sq_m(xk_sq_m)  //output
    );
    
    wire [31:0] xk_sq_m_dt;
    wire dv_sq_m_dt;

    energy_detection_module energy_detection_module_inst(
        .clock(sys_clk),     //input
        .reset(areset),     //input
        
        .xk_sq_m(xk_sq_m),         // input
        .dv_sq_m(dv_sq_m),         //input
        .xk_sq_m_dt(xk_sq_m_dt),      //output
        .dv_sq_m_dt(dv_sq_m_dt)       //ouput
    );

endmodule
