`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2025 09:36:09
// Design Name: 
// Module Name: PRBG
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

module PRBG (
    input wire clk,
    input wire reset,
    output reg prbg_bit
);

    reg [3:0] lfsr;

    always @(posedge clk or posedge reset) 
    begin
        if (reset)
         begin
            lfsr <= 4'b1011; 
        end 
        else 
        begin
            lfsr <= {lfsr[2:0], lfsr[3] ^ lfsr[2]};
        end
    end

    always @(*) begin
        prbg_bit = lfsr[0]; 
    end

endmodule



