// starter.v (Rename to <RNumber>.v
//
// Implement an 32-to-1 Decoder
//


// 32-to-1 MUX
module top(S, I, Y);
// Verilog Code Here.

    input[4:0] S; //Switch signals
    input[31:0] I; //Input signals
    wire[31:0] W; //Wires for the Decoder output
    wire[31:0] E; //Wires for the Enabler Gate
    output Y; //Final output

    decoder5to32 U0(.A(S), .D(W));

    genvar i;
    generate 
        for(i=0; i<32; i=i+1)
            begin
               assign E[i] = W[i] & I[i]; 
            end
    endgenerate

    assign Y = | E;


endmodule

// Additional Modules Here (if needed).

//Decoders 

module decoder5to32(A, D);

    input [4:0] A;
    output[31:0] D;
    wire[11:0] W;

    decoder3to8 U0(.A(A[2:0]),.D(W[11:4]));
    decoder2to4 U1(.A(A[4:3]), .D(W[3:0]));

    assign D[0] = W[4] & W[0];
    assign D[1] = W[5] & W[0];
    assign D[2] = W[6] & W[0];
    assign D[3] = W[7] & W[0];
    assign D[4] = W[8] & W[0];
    assign D[5] = W[9] & W[0];
    assign D[6] = W[10] & W[0];
    assign D[7] = W[11] & W[0];

    assign D[8] = W[4] & W[1];
    assign D[9] = W[5] & W[1];
    assign D[10] = W[6] & W[1];
    assign D[11] = W[7] & W[1];
    assign D[12] = W[8] & W[1];
    assign D[13] = W[9] & W[1];
    assign D[14] = W[10] & W[1];
    assign D[15] = W[11] & W[1];

    assign D[16] = W[4] & W[2];
    assign D[17] = W[5] & W[2];
    assign D[18] = W[6] & W[2];
    assign D[19] = W[7] & W[2];
    assign D[20] = W[8] & W[2];
    assign D[21] = W[9] & W[2];
    assign D[22] = W[10] & W[2];
    assign D[23] = W[11] & W[2];

    assign D[24] = W[4] & W[3];
    assign D[25] = W[5] & W[3];
    assign D[26] = W[6] & W[3];
    assign D[27] = W[7] & W[3];
    assign D[28] = W[8] & W[3];
    assign D[29] = W[9] & W[3];
    assign D[30] = W[10] & W[3];
    assign D[31] = W[11] & W[3];



endmodule

// OTHER MODULES HERE (IF REQUIRED)

module decoder1to2(A,D);

    input A;
    output[1:0] D;

    assign D[0] = ~A;
    assign D[1] = A;

endmodule

module decoder2to4(A,D);

    input[1:0] A;
    output[3:0] D;

    wire[3:0] W;

    decoder1to2 U0(.A(A[0]),.D(W[3:2]));
    decoder1to2 U1(.A(A[1]),.D(W[1:0]));

    assign D[0] = W[3] & W[1];  
    assign D[1] = W[2] & W[1];
    assign D[2] = W[3] & W[0];
    assign D[3] = W[2] & W[0];

endmodule

module decoder3to8(A,D);

    input[2:0] A;
    output[7:0] D;

    wire[5:0] W;

    decoder2to4 U0(.A(A[1:0]), .D(W[5:2]));
    decoder1to2 U1(.A(A[2]), .D(W[1:0]));

    assign D[0] = W[2] & W[1];
    assign D[1] = W[3] & W[1];
    assign D[2] = W[4] & W[1];
    assign D[3] = W[5] & W[1];
    assign D[4] = W[2] & W[0];
    assign D[5] = W[3] & W[0];
    assign D[6] = W[4] & W[0]; 
    assign D[7] = W[5] & W[0];


endmodule