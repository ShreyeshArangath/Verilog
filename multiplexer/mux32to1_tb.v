`timescale 1ns/1ns
`include "mux32to1.v"

module mux32to1_tb();

    reg[4:0] S;
    reg[31:0] I;
    wire Y;

    mux32to1 UUT(S,I,Y);

    initial begin
        $dumpfile("mux32to1_tb.vcd");
        $dumpvars(0, mux32to1_tb);

        S = 5'd00; 
        I = 32'd00; #20;

        S = 5'd01; 
        I = 32'd01; #20;

        S = 5'd02; 
        I = 32'd02; #20;

        S = 5'd03; 
        I = 32'd03; #20;

        S = 5'd04; 
        I = 32'd04; #20;

        S = 5'd05; 
        I = 32'd05; #20;

        S = 5'd06; 
        I = 32'd06; #20;

        S = 5'd07; 
        I = 32'd07; #20;

        S = 5'd08; 
        I = 32'd08; #20;

        $display("test ended");
    end


endmodule