`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2025 02:59:57 PM
// Design Name: 
// Module Name: Full_adder_simuli
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


module Full_adder_simuli();
    
     reg a,b,c;
    wire sum, Cout;
    Full_adder uut(a,b,c, sum, Cout);
    
    initial 
    begin
    
        a=0;b=0;c=0;
    #10 a=0;b=0;c=1;
    #10 a=0;b=1;c=0;
    #10 a=0;b=1;c=1;
    #10 a=1;b=0;c=0;
    #10 a=1;b=0;c=1;
    #10 a=1;b=1;c=0;
    #10 a=1;b=1;c=1;
    #10 $finish;
    end
    
endmodule
