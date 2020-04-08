`timescale 1ns/1ns
`include "starter.v"

module decoder3to8_tb();

    reg[2:0] A;
    wire[7:0] D;

    decoder3to8 UUD(A,D);

    initial begin
        $dumpfile("decoder3to8_tb.vcd");
        $dumpvars(0, decoder3to8_tb);
        A = 3'd00; #20;
        A = 3'd01; #20;
        A = 3'd02; #20;
        A = 3'd03; #20;
        A = 3'd04; #20;
        A = 3'd05; #20;
        A = 3'd06; #20;
        A = 3'd07; #20;

        $display("end of test. ");
    end

endmodule