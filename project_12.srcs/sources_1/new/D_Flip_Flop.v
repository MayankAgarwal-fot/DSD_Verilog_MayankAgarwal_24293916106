`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2025 06:03:28 PM
// Design Name: 
// Module Name: D_Flip_Flop
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


module D_Flip_Flop(
    input d,clk,
    output q, q_bar
    );
   
    wire d_g, d_bar_g;
    
    assign #1 d_g=(~(d&(clk)));
    assign #1 d_bar_g=(~((~d)&(clk)));
    assign #1 q =(~((d_g)&(q_bar)));
    assign #1 q_bar=(~((d_bar_g)&q));
    
endmodule
