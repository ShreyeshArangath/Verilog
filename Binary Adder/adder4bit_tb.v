`timescale 1ns/1ns
`include "R11590613.v"

module adder4bit_tb();
    reg Cin;
    reg[3:0] A;
    reg[3:0] B;
    wire Cout;
    wire[3:0] S;

    adder4Bit UUT(Cin, A, B, Cout, S);
    initial begin
        $dumpfile("adder4bit_tb.vcd");
        $dumpvars(0, adder4bit_tb);
        Cin= 0;
        A = 4'd0;
        B = 4'd0;
        #20;

        Cin= 0;
        A = 4'd2;
        B = 4'd3;
        #20;

        Cin= 0;
        A = 4'b1111;
        B = 4'b1111;
        #20;

        Cin= 1;
        A = 4'd0;
        B = 4'd0;
        #20;

        Cin= 1;
        A = 4'd2;
        B = 4'd3;
        #20;  

        Cin= 1;
        A = 4'b1111;
        B = 4'b1111;
        #20;
    end

endmodule
