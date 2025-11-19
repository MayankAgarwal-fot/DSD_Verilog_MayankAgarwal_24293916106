`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2025 06:17:36 PM
// Design Name: 
// Module Name: D_Flip_Flop_simuli
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


module D_Flip_Flop_simuli();
    
    reg d, clk;
    wire dg, d_bar_g, q, q_bar;
    
    D_Flip_Flop uut(d, clk, q, q_bar);
    
    initial
    begin
    clk=0;
    forever
    #5 clk =~clk;
    end
    
    initial
    begin
        d=0;
    #10 d=1;
    #10
    $finish;
    end    
    
endmodule
