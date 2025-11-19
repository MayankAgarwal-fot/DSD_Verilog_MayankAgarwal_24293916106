`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2025 05:48:36 PM
// Design Name: 
// Module Name: SR_Flip_Flop_simuli
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


module SR_Flip_Flop_simuli();    
    
    reg s,r,clk;
    wire s_g, r_g,q,q_bar;
    
SR_Flip_Flop uut(s,r,clk,q,q_bar);                                                                  
    
    initial begin 
        clk=0;
        forever #5 clk=~clk;
    end
    
    initial begin    

        s=0; r=1; #10;
        s=1; r=0; #10;
        s=0; r=0; #10;
        s=1; r=1; #10;
    $finish;
    end
        
endmodule
