`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2025 03:40:08 PM
// Design Name: 
// Module Name: T_FF_Counter0356
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

module T_FF_Counter0356 (
input t,
input clk,
input reset,
output reg q
    );
    always @(posedge clk or posedge reset) begin
    if(reset)//always at posivitive edge
    q<=1'b0;
    else if(t)
    q<=~q;
    end 
    
endmodule

module counter(
input clk, reset, output [2:0]q
    );
    wire t0,t1,t2;
    assign t0=~q[1];
    assign t1=1;
    assign t2=q[1];
    
     T_FF_Counter0356 ff0(t0,clk,reset,q[0]);
    T_FF_Counter0356 ff1(t1,clk,reset,q[1]);
     T_FF_Counter0356 ff2(t2,clk,reset,q[2]);
    
endmodule

