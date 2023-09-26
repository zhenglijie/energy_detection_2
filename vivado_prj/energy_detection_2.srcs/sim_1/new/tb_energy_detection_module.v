`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/26 16:34:48
// Design Name: 
// Module Name: tb_energy_detection_module
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


module tb_energy_detection_module();
    reg clock;
    reg reset;
    
    reg [31:0]xk_sq_m;
    reg dv_sq_m;
    
    wire [31:0]xk_sq_m_dt;
    wire dv_sq_m_dt;
    
    integer fd, code, i;
    reg [31:0] square_mg [1023:0];
    
    //read
    initial begin
        #40
        //read
        fd = $fopen("F:/Users/Lenovo/Desktop/fpga_zynq/energy_detection_2/matlab/Square_Magnitude_Module_Test/result_square_mag.txt", "r");
        for (i = 0; i < 1024; i = i + 1) begin
            code = $fscanf(fd, "%d", square_mg[i]);
        end
        $fclose(fd);
    end
    
    initial begin
        #100
        clock = 1'b1;
        reset <= 1'b1;
        #20
        reset <= 1'b0;
    end

    always #10 clock = ~clock;
    
    reg [9:0] addr;
    
    always @ (posedge clock, posedge reset) begin
        if (reset == 1'b1)
            addr <= 10'd0;
        else if (addr == 10'd1023)
            addr <= 10'd1;
        else
            addr <= addr + 10'd1;
    end
    
    always @ (posedge clock, posedge reset) begin
        if (reset == 1'b1) begin
            dv_sq_m <= 1'b0;
            xk_sq_m <= 32'd0;
        end
        else begin
            xk_sq_m <= square_mg[addr];
            dv_sq_m <= 1'b1;
        end   
    end
    
    energy_detection_module energy_detection_module_inst( 
        .clock(clock),
        .reset(reset),
        
        .xk_sq_m(xk_sq_m),
        .dv_sq_m(dv_sq_m),
        .xk_sq_m_dt(xk_sq_m_dt),
        .dv_sq_m_dt(dv_sq_m_dt)
    );
    
endmodule
