`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2025 01:44:35 PM
// Design Name: 
// Module Name: PriorityDecoder
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


module PriorityDecoder(
    input a,b,
    output d0,d1,d2,d3
    );
    
  
    assign d0 = ~a&(~b);
    assign d1 = ~a&b;
    assign d2 = a&(~b);
    assign d3 = a&b;
endmodule


