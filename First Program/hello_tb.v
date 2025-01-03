`timescale 1ns / 1ns
`include "hello.v"

module hello_tb();

    reg A; //Input
    wire B; //Output

    //Test name
    hello uut(A,B);
    //Actual test
    initial begin
       $dumpfile("hello_tb.vcd"); //For output
       $dumpvars(0, hello_tb); 

       A=0;
       #20;

       A=1;
       #20;

       A=0;
       #20;

       $display("Test complete"); 

    end

endmodule