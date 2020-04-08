`timescale 1ns/1ns
`include "decoder.v" //Include the file

module decoder1to2_tb;

    reg A; //Input
    wire[1:0] D; //Output

    decoder1to2 UUT(A,D);
    initial begin
        $dumpfile("decoder1to2_tb.vcd");
        $dumpvars(0, decoder1to2_tb);

        A=0; #20;
        A=1; #20;

        $display("End of test");
        
    end

endmodule
