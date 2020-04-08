module assignment(A,B,C,D,F);
    input A,B,C,D;
    output F;
    
    assign F = (~A &~B & ~C & ~D) | (B & D) | (~A & B & C) | (A & B & ~C) | (A & C & D);

endmodule