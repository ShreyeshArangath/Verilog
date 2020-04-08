module top(A, B, C, D, F);

input A, B, C, D;
output F;

// YOUR VERILOG CODE BELOW
assign F = (~A &~B & ~C & ~D) | (B & D) | (~A & B & C) | (A & B & ~C) | (A & C & D);


endmodule