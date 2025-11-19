`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2025 01:34:25 PM
// Design Name: 
// Module Name: Full_subtractor
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


module Full_subtractor(
    input a, b, b_in,
    output diff, b_out
    );
    
    assign diff = ((a^b)^b_in);
    assign b_out = (~(a^b)&(b_in))|((~a)&b);
    
endmodule
