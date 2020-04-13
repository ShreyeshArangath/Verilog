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

// Additional modules go here (if necessary).

module fullAdder(Cin, A, B, Cout, S);

    input Cin, A, B;
    output Cout, S;
    
    assign S = Cin ^ A ^ B;
    assign Cout = A&B | Cin&(A^B);

endmodule