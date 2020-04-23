`timescale 1ns/1ns
`include "R11590613.v"

module top_tb();

// Verilog code goes here.
    reg Cin;
    reg[7:0] A;
    reg[7:0] B;
    wire Cout;
    wire[7:0] S;

    top UUT(Cin, A, B, Cout, S);
    initial begin
        $dumpfile("top_tb.vcd");
        $dumpvars(0,top_tb);
        Cin = 1;
        A = 8'd5;
        B = 8'd2;
        #20;
        $display("%d-%d = %d", A, B, S);

        Cin = 1;
        A = 8'd18;
        B = 8'd18;
        #20;
        $display("%d-%d = %d", A, B, S);

        Cin = 0;
        A = 8'd12;
        B = 8'd1;
        #20;
        $display("%d+%d = %d", A, B, S);

        $display("Test over.");
        

    end

endmodule