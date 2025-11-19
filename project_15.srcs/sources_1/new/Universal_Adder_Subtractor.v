//`timescale 1ns / 1ps


//module Universal_Adder_Subtractor(
//    input a,b,c_in,
//    output sum, c_out
//    );
    
//    assign {c_out, Sum} = a + b + c_in;
//endmodule

//module Universal_adder(
// input  [3:0] a, b,
//    input        m,         
//    output [3:0] s,         
//    output       c_out,      
//    output       v   
//    );
//    wire [3:0] b_mod;
//    wire c1, c2, c3, c4;
//    assign b_mod = b ^ {4{m}};

//    Universal_Adder_Subtractor FA0 (a[0], b_mod[0], m,  s[0], c1);  
//    Universal_Adder_Subtractor FA1 (a[1], b_mod[1], c1, s[1], c2);
//    Universal_Adder_Subtractor FA2 (a[2], b_mod[2], c2, s[2], c3);
//    Universal_Adder_Subtractor FA3 (a[3], b_mod[3], c3, s[3], c4);

//    assign Cout = c4;
//    assign V = c4 ^ c3;

    
//endmodule






`timescale 1ns / 1ps



////////////////////////////////////////////////////////////////////////////////////
//// Company: 
//// Engineer: 
//// 
//// Create Date: 11/19/2025 07:30:19 PM
//// Design Name: 
//// Module Name: Universal_Adder_Subtractor
//// Project Name: 
//// Target Devices: 
//// Tool Versions: 
//// Description: 
//// 
//// Dependencies: 
//// 
//// Revision:
//// Revision 0.01 - File Created
//// Additional Comments:
//// 
////////////////////////////////////////////////////////////////////////////////////




module full_adder(
    input  A, B, Cin,
    output Sum, Cout
);
    assign {Cout, Sum} = A + B + Cin;
endmodule

module Universal_adder(
 input  [3:0] A, B,
    input        M,         
    output [3:0] S,         
    output       Cout,      
    output       V     
    );
    wire [3:0] B_mod;
    wire c1, c2, c3, c4;
    assign B_mod = B ^ {4{M}};

    full_adder FA0 (A[0], B_mod[0], M,  S[0], c1);  
    full_adder FA1 (A[1], B_mod[1], c1, S[1], c2);
    full_adder FA2 (A[2], B_mod[2], c2, S[2], c3);
    full_adder FA3 (A[3], B_mod[3], c3, S[3], c4);

    assign Cout = c4;
    assign V = c4 ^ c3;
endmodule