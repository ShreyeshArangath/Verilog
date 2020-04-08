// starter.v (RENAME TO <RNumber>.v
//
// Implement a 5-to-32 Line Decoder.
//

module top(A, D)

// YOUR VERILOG CODE HERE


endmodule

// OTHER MODULES HERE (IF REQUIRED)

module decoder1to2(A,D);

    input A;
    output D[1:0];

    assign D[0] = ~A;
    assign D[1] = A;

endmodule

module decoder2to4(A,D);

    input A[1:0];
    output D[3:0];

    wire W[3:0];

    decoder1to2 U0(.A(A[0]),.D(D[3:2]));
    decoder1to2 U1(.A(A[1]),.D(D[0:1]));

    assign D[0] = W[3] & W[1];
    assign D[1] = W[2] & W[1];
    assign D[2] = W[3] & W[0];
    assign D[3] = W[2] & W[0];

endmodule

module decoder3to8(A,D);

    input A[2:0];
    output D[7:0];

    wire W[7:0];

    decoder2to4 U0(.A(A[1:0]), .D(D[7:4]));
    decoder1to2 U1(.A(A[2]), .D(D[0:3]));


endmodule