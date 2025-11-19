`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2025 01:17:36 PM
// Design Name: 
// Module Name: Half_subtractor_simuli
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


module Half_subtractor_simuli();

    reg a,b;
    wire a, b, diff, borrow;
    
    Half_subtractor uut(a, b, diff, borrow);
    
    initial
    begin
        a=0;b=0;
    #10 a=0;b=1;
    #10 a=1;b=0;
    #10 a=1;b=1;
    #10
    $finish;
    end;
    
endmodule
