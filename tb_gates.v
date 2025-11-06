`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2025 10:12:01 PM
// Design Name: 
// Module Name: tb_gates
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


module tb_gates(

    );
    reg a,b;
    wire y;
    gates uut(a,b,y);
    initial
    begin 
    a=0,b=0
    #10
    a=0,b=1
    #10
    a=1,b=0
    #10
    a=1,b=1
    #10
    $finish,
    end
endmodule
