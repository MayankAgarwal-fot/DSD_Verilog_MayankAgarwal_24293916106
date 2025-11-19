`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2025 11:02:44 PM
// Design Name: 
// Module Name: MUX8X1_simuli
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


module MUX8X1_simuli();
    
    reg s0,s1,s2,a,b,c,d,e,f,g,h;
    wire y;
    
    MUX8X1 uut(s0,s1,s2,a,b,c,d,e,f,g,h,y);
    
     initial
    begin
    s2 =0; s1=0; s0=0; a=1; b=0; c=0; d=0; e=0; f=0; g=0; h=0; #10;
    s2 =1; s1=0; s0=0; a=0; b=1; c=0; d=0; e=0; f=0; g=0; h=0; #10;
    s2 =0; s1=1; s0=0; a=0; b=1; c=0; d=0; e=0; f=0; g=0; h=0; #10;
    s2 =1; s1=1; s0=0; a=0; b=0; c=0; d=1; e=0; f=0; g=0; h=0; #10;
    s2 =0; s1=0; s0=1; a=0; b=0; c=0; d=0; e=1; f=0; g=0; h=0; #10;
    s2 =1; s1=0; s0=1; a=0; b=0; c=0; d=0; e=0; f=1; g=0; h=0; #10;
    s2 =0; s1=1; s0=1; a=0; b=0; c=0; d=0; e=0; f=0; g=1; h=0; #10;
    s2 =1; s1=1; s0=1; a=0; b=0; c=0; d=0; e=0; f=0; g=0; h=1; #10;
    $finish;
  end    
   
endmodule