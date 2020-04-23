// starter.v (Rename to <RNumber>.v
//
//  Implement an 8-bit Adder Subtractor.
//
module top(Cin, A, B, Cout, S);

// Verilog code goes here.
    input Cin;
    input[7:0] A,B;
    output Cout;
    output[7:0] S;
    wire[6:0] W;

    adderSubtractor8Bit U0(Cin, A, B, Cout, S);


endmodule

// Additional modules go here (if necessary).

module adderSubtractor8Bit(Cin, A, B, Cout, S);

    input Cin;
    input[7:0] A,B;
    output Cout;
    output[7:0] S;
    wire[6:0] W;

    fullAdderSubtractor U0(.Cin(Cin), .A(A[0]), .B(B[0]^Cin), .Cout(W[0]), .S(S[0]));
    fullAdderSubtractor U1(.Cin(W[0]), .A(A[1]), .B(B[1]^Cin), .Cout(W[1]), .S(S[1]));
    fullAdderSubtractor U2(.Cin(W[1]), .A(A[2]), .B(B[2]^Cin), .Cout(W[2]), .S(S[2]));
    fullAdderSubtractor U3(.Cin(W[2]), .A(A[3]), .B(B[3]^Cin), .Cout(W[3]), .S(S[3]));
    fullAdderSubtractor U4(.Cin(W[3]), .A(A[4]), .B(B[4]^Cin), .Cout(W[4]), .S(S[4]));
    fullAdderSubtractor U5(.Cin(W[4]), .A(A[5]), .B(B[5]^Cin), .Cout(W[5]), .S(S[5]));
    fullAdderSubtractor U6(.Cin(W[5]), .A(A[6]), .B(B[6]^Cin), .Cout(W[6]), .S(S[6]));
    fullAdderSubtractor U7(.Cin(W[6]), .A(A[7]), .B(B[7]^Cin), .Cout(Cout), .S(S[7]));


endmodule

module fullAdderSubtractor(Cin, A, B, Cout, S);

    input Cin, A, B;
    output Cout, S;

    assign S = Cin ^ A ^ B;
    assign Cout = A&B | Cin&(A^B);

endmodule