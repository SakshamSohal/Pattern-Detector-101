`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2025 09:49:19
// Design Name: 
// Module Name: Top_Module
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


module top_module (
    input wire clk,         
    input wire reset,       
    output wire [2:0] pattern,
    output wire pattern_detected,
    output wire prbg_bit    
);

    wire clk_1hz;

    
    clock_divider_1hz u_clkdiv (
        .clk_in(clk),
        .reset(reset),
        .clk_out(clk_1hz)
    );

    
    PRBG u_prbg (
        .clk(clk_1hz),
        .reset(reset),
        .prbg_bit(prbg_bit)  
    );

   
    pattern_detector u_detector (
        .clk(clk_1hz),
        .reset(reset),
        .serial_in(prbg_bit),
        .pattern(pattern),
        .pattern_detected(pattern_detected)
    );

endmodule



