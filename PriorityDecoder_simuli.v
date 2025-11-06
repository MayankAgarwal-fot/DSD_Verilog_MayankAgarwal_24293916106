`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2025 01:56:15 PM
// Design Name: 
// Module Name: PriorityDecoder_simuli
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


module PriorityDecoder_simuli(

    );
    
    reg a,b;
    wire d0,d1,d2,d3;
    
    PriorityDecoder uut(a,b,d0,d1,d2,d3);
    
    initial 
    begin 
    a =0; b=0;
    #10
     a =0; b=1;
    #10
     a =1; b=0;
    #10
     a =1; b=1;
    #10
    $finish;
    end

    
endmodule
