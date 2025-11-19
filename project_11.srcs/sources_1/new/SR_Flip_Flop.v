`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2025 05:40:29 PM
// Design Name: 
// Module Name: SR_Flip_Flop
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


module SR_Flip_Flop(
    input s, r, clk,
    output q, q_bar
    );
    
    wire s_g, r_g;
    
    assign #1 s_g=(~(s&(clk)));
    assign #1 r_g=(~(r&(clk)));
    assign #1 q =(~((s_g)&(q_bar)));
    assign #1 q_bar=(~((r_g)&q));
    
endmodule
