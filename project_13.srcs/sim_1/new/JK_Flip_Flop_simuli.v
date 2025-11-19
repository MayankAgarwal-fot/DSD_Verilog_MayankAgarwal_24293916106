`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2025 07:23:27 PM
// Design Name: 
// Module Name: JK_Flip_Flop_simuli
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


module JK_Flip_Flop_simuli();
    
    reg j,k,clk;
    wire j_g, k_g,q,q_bar;
    
JK_Flip_Flop uut(j,k,clk,q,q_bar);                                                                  
    
    initial begin 
        clk=0;
        forever #5 clk=~clk;
    end
    
    initial begin    
        j=0; k=1; #10;
        j=1; k=0; #10;
        j=0; k=0; #10;
        j=1; k=1; #10;
    $finish;
    end
        
    
endmodule
