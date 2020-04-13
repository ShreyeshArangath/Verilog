`timescale 1ns/1ns
`include "R11590613.v"

module adder8bit_tb();
    reg Cin;
    reg[7:0] A;
    reg[7:0] B;
    wire Cout;
    wire[7:0] S;

    adder8Bit UUT(Cin, A, B, Cout, S);
    initial begin
        $dumpfile("adder8bit_tb.vcd");
        $dumpvars(0, adder8bit_tb);
        Cin= 0;
        A = 8'd0;
        B = 8'd0;
        #20;

        Cin= 0;
        A = 8'd2;
        B = 8'd3;
        #20;

        Cin= 0;
        A = 8'b11111111;
        B = 8'b11111111;
        #20;

        Cin= 1;
        A = 8'd0;
        B = 8'd0;
        #20;

        Cin= 1;
        A = 8'd2;
        B = 8'd3;
        #20;  

        Cin= 1;
        A = 8'b11111111;
        B = 8'b11111111;
        #20;
    end

endmodule
