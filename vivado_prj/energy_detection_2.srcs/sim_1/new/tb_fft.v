`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/13 09:31:53
// Design Name: 
// Module Name: tb_fft
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


module tb_fft();

    reg sys_clk;
    reg areset;

    integer fd, code, i;
    reg signed [31:0] time_domain[1023:0];

    //read
    initial begin
        fd = $fopen("F:/Users/Lenovo/Desktop/fpga_zynq/energy_detection_2/matlab/FFT_Test/data_before_fft.txt", "r");
        for (i = 0; i < 1024; i = i + 1) begin
            code = $fscanf(fd, "%d", time_domain[i]);
        end
        $fclose(fd);
    end
    
    reg strobe;
    
    initial begin
        #70
        sys_clk = 1'b1;
        areset <= 1'b1;
        #90
        areset <= 1'b0;
        //strobe <= 1'b1;
    end

    always #10 sys_clk = ~sys_clk;
    
    reg [31:0]ram_in_data;
    
    wire [31:0]fft_m_out_data;
    
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
        else begin
            ram_in_data <= time_domain[addra];
            strobe <= 1'b1;
        end
    end
    
    wire fft_m_out_data_tvalid, fft_m_out_data_tlast;
    wire [15:0]fft_out_data_real_abs;
    
    fft fft_inst(
        .sys_clk(sys_clk),
        .areset(areset),
        .strobe(strobe),
        
        .ram_in_data(ram_in_data),
        .fft_m_out_data(fft_m_out_data),
        .fft_out_data_real_abs(fft_out_data_real_abs),
        .fft_m_out_data_tvalid(fft_m_out_data_tvalid),
        .fft_m_out_data_tlast(fft_m_out_data_tlast)
        );
        
    integer fd2, err2;
    reg [640:0]str2;
    
//    always @ (posedge sys_clk, posedge areset) begin
//        fd2 = $fopen("F:/Users/Lenovo/Desktop/fpga_zynq/energy_detection_2/matlab/FFT_Test/result_fft_ip_unscale.txt", "a");
//        err2 = $ferror(fd2, str2);    
//        //$display("error is:%s\n", str2);
//        if (fft_m_out_data_tvalid)
//            $fwrite(fd, "%d %d\n", fft_m_out_data[15:0], fft_m_out_data[31:16]); //real, imag
//        if (fft_m_out_data_tlast)
//            $fclose(fd);
//    end
        
endmodule