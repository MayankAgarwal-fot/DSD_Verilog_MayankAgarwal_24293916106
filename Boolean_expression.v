`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2025 10:02:29 AM
// Design Name: 
// Module Name: Boolean_expression
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


module Boolean_expression(
    input a , b , c,
    output y0,y1,y2,y3
    );
    
    assign y0 = (a&b&c) | ~(a) | a&c ;
    assign y1 = (a^b) | (b^c) |c;
    assign y2 = (a&b) | (b^c) | ~(a^c);
    assign y3 = ~(a&b) & (a^b);
    
endmodule
