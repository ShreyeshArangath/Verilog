// starter.v (Rename to <RNumber>.v
//
//  Implement an 8-bit ripple-carry adder.
//
module top(Cin, A, B, Cout, S);

// Verilog code goes here.
    input Cin;
    input[7:0] A;
    input[7:0] B;
    output[7:0] S;
    output Cout;

endmodule

module adder8Bit(Cin, A, B, Cout, S);

    input Cin;
    input[7:0] A,B;
    output Cout;
    output[7:0] S;
    wire[6:0] W;

    

endmodule


module adder4Bit(Cin, A, B, Cout, S);
    input Cin; 
    input[3:0] A;
    input[3:0] B;
    wire[2:0] C;
    output Cout;
    output[3:0] S;

    fullAdder U0 (.Cin(Cin), .A(A[0]), .B(B[0]), .Cout(C[0]), .S(S[0]));
    fullAdder U1 (.Cin(C[0]), .A(A[1]), .B(B[1]), .Cout(C[1]), .S(S[1]));
    fullAdder U2 (.Cin(C[1]), .A(A[2]), .B(B[2]), .Cout(C[2]), .S(S[2]));
    fullAdder U3 (.Cin(C[2]), .A(A[3]), .B(B[3]), .Cout(Cout), .S(S[3]));

endmodule

// Additional modules go here (if necessary).

module fullAdder(Cin, A, B, Cout, S);

    input Cin, A, B;
    output Cout, S;
    
    assign S = Cin ^ A ^ B;
    assign Cout = A&B | Cin&(A^B);

endmodule