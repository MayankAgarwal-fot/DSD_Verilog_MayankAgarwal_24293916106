`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2025 10:48:27 PM
// Design Name: 
// Module Name: MUX8X1
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


module MUX8X1(
    input a,b,c,d,e,f,g,h, s0,s1,s2,
    output y
    );
    
    assign y =((~(s2) & ~(s1) & ~(s0) &  a) | (~(s2) & ~(s1) & s0 & b) | ~(s2) & s1 & (~(s0) & c) |
     (~(s2) & s1 & s0 & d)) | (s2 & ~(s1) & ~(s0) & e) | (s2 & ~(s1) & (s0) & f) | 
     (s2 & (s1) & ~(s0) & g | (s2 & (s1) & (s0) & h));
    
endmodule
