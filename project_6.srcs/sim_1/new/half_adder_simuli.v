`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2025 02:28:21 PM
// Design Name: 
// Module Name: half_adder_simuli
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


module half_adder_simuli(

    );
    
    reg a,b;
    wire a,b,sum,carry;
    Half_adder uut(a,b,sum, carry);
    
    initial 
    begin
    
        a=0;b=0;
    #10 a=0;b=1;
    #10 a=1;b=0;
    #10 a=1;b=1;
    #10 
    $finish;
    end

endmodule

