`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2025 10:11:17 AM
// Design Name: 
// Module Name: Boolean_stimuli
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


module Boolean_stimuli(

    );
    
    reg a,b,c;
    wire y0,y1,y2,y3;
    Boolean_expression uut(a,b,c,y0,y1,y2,y3);
    
    initial
    begin
    
        a=0;b=0;c=0;
    #10 a=0;b=0;c=1;
    #10 a=0;b=1;c=0;
    #10 a=0;b=1;c=1;
    #10 a=1;b=0;c=0;
    #10 a=1;b=0;c=1;
    #10 a=1;b=1;c=0;
    #10 a=1;b=1;c=1;
    #10 $finish;
    end
    
endmodule
