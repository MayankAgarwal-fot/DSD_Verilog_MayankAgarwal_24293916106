`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2025 01:34:49 PM
// Design Name: 
// Module Name: Mux_stimuli
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


module Mux_stimuli(

    );
    
     reg a,b,s0;
    wire y;
    MUX uut(a,b,s0,y);
    
    initial 
    begin
    
        a=0;b=0;s0=0;
    #10 a=0;b=0;s0=1;
    #10 a=0;b=1;s0=0;
    #10 a=0;b=1;s0=1;
    #10 a=1;b=0;s0=0;
    #10 a=1;b=0;s0=1;
    #10 a=1;b=1;s0=0;
    #10 a=1;b=1;s0=1;
    #10 $finish;
    end
    
endmodule
