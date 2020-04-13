`timescale 1ns/1ns
`include "R11590613.v"

module mux32to1_tb();

    reg[4:0] S;
    reg[31:0] I;
    wire Y;
    integer s;

    top UUT(S,I,Y);

    initial begin
        $dumpfile("mux32to1_tb.vcd");
        $dumpvars(0, mux32to1_tb);

        I = 32'd640; #20;
        for(s=0; s<32; s++)
            begin
               S = s; #20; 
            end

        $display("test ended");
    end


endmodule