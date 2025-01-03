// 2-to-4 Line Decoder 
// 4 AND Gates on the output. 
// 2 x 1-to-2 Line Decoder

module decoder2to4(A,D);

input [1:0]A;
output [3:0]D;
wire [3:0] W; 

//First two bits of the wire are passed into the module and they are assigned as the output to the module. 
// W[3:2] = A0', A0
decoder1to2 U0( .A(~A[0]) , .D(W[3:2]));  
decoder1to2 U1(.A(~A[1]), .D(W[1:0])); 
// W[1:0] - Last two bits of the wire

assign D[0] = W[3] & W[1];
assign D[1] = W[2] & W[1];
assign D[2] = W[3] & W[0];
assign D[3] = W[2] & W[0];


endmodule

module decoder1to2(A, D);

    input A;
    output[1:0] D;

    assign D[0]= ~A;
    assign D[1]= A;

endmodule