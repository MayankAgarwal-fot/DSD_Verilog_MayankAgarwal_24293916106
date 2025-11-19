`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2025 07:59:27 PM
// Design Name: 
// Module Name: MUX4X1
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


module MUX4X1(
    input a, b, c, d, s0, s1,
    output y
    );
    
    assign y = ((~(s1) & ~(s0) & a) | (~(s1) & s0 & b) | (s1 & (~(s0) & c) | (s1 & s0 & d)));
    
endmodule