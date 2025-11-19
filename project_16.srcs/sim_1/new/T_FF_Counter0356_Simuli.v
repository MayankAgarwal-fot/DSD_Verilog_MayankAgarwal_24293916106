`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2025 07:27:22 PM
// Design Name: 
// Module Name: T_FF_Counter0356_Simuli
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


module T_FF_Counter0356_Simuli();
        
    reg clk,reset;
    wire [2:0]q;
    
    counter uut(clk,reset,q);
    initial
    begin
    clk=0;
    #5
    forever #5 clk=~clk;
    end
    
    initial 
    begin
    reset =1;
    #10
    reset=0;
    #50
    $finish;
    end
    
endmodule
    

