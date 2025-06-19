
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2025 09:54:42
// Design Name: 
// Module Name: tb_top_module
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
`timescale 1ns / 1ps

module tb_top_module;

    reg clk;
    reg reset;

    wire [2:0] pattern;
    wire pattern_detected;

    
    top_module uut (
        .clk(clk),
        .reset(reset),
        .pattern(pattern),
        .pattern_detected(pattern_detected)
    );

    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    
    initial begin
        reset = 1;
        #100;
        reset = 0;

        #2_000_000_000; 
        $finish;
    end

endmodule





