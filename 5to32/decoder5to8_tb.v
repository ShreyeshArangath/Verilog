`timescale 1ns/1ns
`include "starter.v"

module decoder5to8_tb();

    reg[4:0] A;
    wire[31:0] D;

    top UUT(A,D);

    initial begin
        $dumpfile("decoder5to8_tb.vcd");
        $dumpvars(0, decoder5to8_tb);

        A= 5'd00; #15;
        A= 5'd01; #15;
        A= 5'd02; #15;
        A= 5'd03; #15;
        A= 5'd04; #15;
        A= 5'd05; #15;
        A= 5'd06; #15;
        A= 5'd07; #15;
        A= 5'd08; #15;
        A= 5'd09; #15;
        A= 5'd10; #15;
        A= 5'd11; #15;
        A= 5'd12; #15;
        A= 5'd13; #15;
        A= 5'd14; #15;
        A= 5'd15; #15;
        A= 5'd16; #15;
        A= 5'd17; #15;
        A= 5'd18; #15;
        A= 5'd19; #15;
        A= 5'd20; #15;
        A= 5'd21; #15;
        A= 5'd22; #15;
        A= 5'd23; #15;
        A= 5'd24; #15;
        A= 5'd25; #15;
        A= 5'd26; #15;
        A= 5'd27; #15;
        A= 5'd28; #15;
        A= 5'd29; #15; 
        A= 5'd30; #15; 
        A= 5'd31; #15; 

        $display("test done");
        
    end

endmodule