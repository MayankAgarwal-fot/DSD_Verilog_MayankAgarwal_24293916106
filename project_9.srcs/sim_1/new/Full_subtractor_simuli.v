`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2025 01:43:31 PM
// Design Name: 
// Module Name: Full_subtractor_simuli
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


module Full_subtractor_simuli();

    reg a,b, b_in;
    wire a, b, b_in, diff, b_out;
    
    Full_subtractor uut(a, b, b_in, diff, b_out);
    
    initial
    begin
        a=0;b=0;b_in = 0;
    #10 a=0;b=0;b_in = 1;
    #10 a=0;b=1;b_in = 0;
    #10 a=0;b=1;b_in = 1;
    #10 a=1;b=0;b_in = 0;
    #10 a=1;b=0;b_in = 1;
    #10 a=1;b=1;b_in = 0;
    #10 a=1;b=1;b_in = 1;
    #10 $finish;
    end;
endmodule
