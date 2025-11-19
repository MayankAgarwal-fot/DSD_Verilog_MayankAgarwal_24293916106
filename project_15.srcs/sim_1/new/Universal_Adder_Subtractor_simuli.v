`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2025 08:54:33 PM
// Design Name: 
// Module Name: Universal_Adder_Subtractor_simuli
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


module Universal_Adder_Subtractor_simuli(

    );
    reg  [3:0] A, B;
    reg        M;
    wire [3:0] S;
    wire       Cout, V;
    Universal_adder dut (A, B, M, S, Cout, V);
    initial begin
        
       M = 0;
        A = 4'b0101; B = 4'b0011; #10;
        A = 4'b0111; B = 4'b1001; #10;
       M = 1;
        A = 4'b1001; B = 4'b0100; #10;
        A = 4'b0011; B = 4'b1000; #10;
        $finish;
    end
    
endmodule
