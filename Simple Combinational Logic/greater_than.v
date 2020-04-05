module greater_than(A,B,F);

input[1:0] A,B;  //Since we want a two bit number. If we needed an 8 bit number: input[7:0]
output F;

//assign F = A > B; - This would technically work. 

assign F = (A[1] & ~B[1]) | (A[0] & ~B[1] & ~B[0]) | (A[1] & A[0] & ~B[0]);


endmodule