`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2025 20:25:39
// Design Name: 
// Module Name: clock_divider_1hz
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



module clock_divider_1hz (
    input wire clk_in,     
    input wire reset,      
    output reg clk_out     
);

    
    parameter DIVISOR = 100_000_000;
    reg [26:0] counter = 0;  

    always @(posedge clk_in or posedge reset) begin
        if (reset) begin
            counter <= 0;
            clk_out <= 0;
        end else begin
            if (counter >= (DIVISOR / 2 - 1)) begin
                clk_out <= ~clk_out;  
                counter <= 0;
            end else begin
                counter <= counter + 1;
            end
        end
    end

endmodule

