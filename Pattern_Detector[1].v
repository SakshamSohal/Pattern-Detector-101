`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2025 09:44:09
// Design Name: 
// Module Name: Pattern_Detector
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



module pattern_detector (
    input wire clk,
    input wire reset,
    input wire serial_in,
    output reg [2:0] pattern,
    output reg pattern_detected
);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            pattern <= 3'b000;
            pattern_detected <= 0;
        end
         else
         begin
            
     pattern <= {pattern[1:0], serial_in};

            
            if ({pattern[1:0], serial_in} == 3'b101)
                pattern_detected <= 1;
            else
                pattern_detected <= 0;
        end
    end

endmodule

