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
        I = 32'd00; 
        #20;

        S = 5'd00; 
        I = 32'd01; 
        #20;

        S = 5'd00; 
        I = 32'd02; 
        #20;

        $display("test ended");
    end


endmodule