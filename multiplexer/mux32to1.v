module mux32to1(S,I,Y);

    input[4:0] S; //Switch signals
    input[31:0] I; //Input signals
    wire[31:0] W; //Wires for the Decoder output
    wire[31:0] E; //Wires for the Enabler Gate
    output Y; //Final output

    decoder5to32 U0(.A(S[4:0]), .D(W[31:0]));
    
    assign E[0] = W[0] & I[0];
    assign E[1] = W[1] & I[1];
    assign E[2] = W[2] & I[2];
    assign E[3] = W[3] & I[3];
    assign E[4] = W[4] & I[4];
    assign E[5] = W[5] & I[5];
    assign E[6] = W[6] & I[6];
    assign E[7] = W[7] & I[7];

    assign E[8] = W[8] & I[8];
    assign E[9] = W[9] & I[9];
    assign E[10] = W[10] & I[10];
    assign E[11] = W[11] & I[11];
    assign E[12] = W[12] & I[12];
    assign E[13] = W[13] & I[13];
    assign E[14] = W[14] & I[14];
    assign E[15] = W[15] & I[15];


    assign E[16] = W[16] & I[16];
    assign E[17] = W[17] & I[17];
    assign E[18] = W[18] & I[18];
    assign E[19] = W[19] & I[19];
    assign E[20] = W[20] & I[20];
    assign E[21] = W[21] & I[21];
    assign E[22] = W[22] & I[22];
    assign E[23] = W[23] & I[23];


    assign E[24] = W[24] & I[24];
    assign E[25] = W[25] & I[25];
    assign E[26] = W[26] & I[26];
    assign E[27] = W[27] & I[27];
    assign E[28] = W[28] & I[28];
    assign E[29] = W[29] & I[29];
    assign E[30] = W[30] & I[30];
    assign E[31] = W[31] & I[31];


    assign Y = E[0] | E[1] | E[2] | E[3] | E[4] | E[5] | E[6] | E[7] |
            E[8] | E[9] | E[10] | E[11] | E[12] | E[13] | E[14] | E[15] |
            E[16] | E[17] | E[18] | E[19] | E[20] | E[21] | E[22] | E[23] |
            E[24] | E[25] | E[26] | E[27] | E[28] | E[29] | E[30] | E[31] ;

endmodule


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