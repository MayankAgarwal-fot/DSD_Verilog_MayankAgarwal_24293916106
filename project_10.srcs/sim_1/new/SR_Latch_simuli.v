`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2025 04:16:12 PM
// Design Name: 
// Module Name: SR_Latch_simuli
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


module SR_Latch_simuli();
    
    reg s,r;
    wire q,q_bar;
    
    SR_Latch uut(s,r,q,q_bar);
    
    initial begin
    
        s=0; r=0; 
    #10 s=0; r=1; 
    #10 s=1; r=0;
    #10 s=1; r=1;
    #10;
    
    $finish;
    end
    
endmodule
