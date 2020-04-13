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

    adder8Bit U0(Cin, A, B, Cout, S);

endmodule

module adder8Bit(Cin, A, B, Cout, S);

    input Cin;
    input[7:0] A,B;
    output Cout;
    output[7:0] S;
    wire[6:0] W;

    fullAdder U0(.Cin(Cin), .A(A[0]), .B(B[0]), .Cout(W[0]), .S(S[0]));
    fullAdder U1(.Cin(W[0]), .A(A[1]), .B(B[1]), .Cout(W[1]), .S(S[1]));
    fullAdder U2(.Cin(W[1]), .A(A[2]), .B(B[2]), .Cout(W[2]), .S(S[2]));
    fullAdder U3(.Cin(W[2]), .A(A[3]), .B(B[3]), .Cout(W[3]), .S(S[3]));
    fullAdder U4(.Cin(W[3]), .A(A[4]), .B(B[4]), .Cout(W[4]), .S(S[4]));
    fullAdder U5(.Cin(W[4]), .A(A[5]), .B(B[5]), .Cout(W[5]), .S(S[5]));
    fullAdder U6(.Cin(W[5]), .A(A[6]), .B(B[6]), .Cout(W[6]), .S(S[6]));
    fullAdder U7(.Cin(W[6]), .A(A[7]), .B(B[7]), .Cout(Cout), .S(S[7]));


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