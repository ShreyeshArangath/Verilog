`timescale 1ns/1ns
`include "R11590613.v"

module fullAdderSubtractor_tb();

    reg A,B,Cin;
    wire Cout, S;

    fullAdderSubtractor UUT(Cin, A, B, Cout, S);
    initial begin
        $dumpfile("fullAdderSubtractor_tb.vcd");
        $dumpvars(0, fullAdderSubtractor_tb);

        {Cin, A, B} = 3'd0; #20;
        {Cin, A, B} = 3'd1; #20;
        {Cin, A, B} = 3'd2; #20;
        {Cin, A, B} = 3'd3; #20;
        {Cin, A, B} = 3'd4; #20;
        {Cin, A, B} = 3'd5; #20;
        {Cin, A, B} = 3'd6; #20;
        {Cin, A, B} = 3'd7; #20;

        $display("Test over.");
        

    end

endmodule