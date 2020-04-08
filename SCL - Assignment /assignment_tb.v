`timescale 1ns/1ns
`include "assignment.v"

module assignment_tb();

reg A,B,C,D;
wire F;

assignment uut(A,B,C,D,F);

initial begin
    $dumpfile("assignment.vcd");
    $dumpvars(0,assignment_tb);

    {A,B,C,D} = 4'd0; #20;
    {A,B,C,D} = 4'd1; #20;
    {A,B,C,D} = 4'd2; #20;
    {A,B,C,D} = 4'd3; #20;
    {A,B,C,D} = 4'd4; #20;
    {A,B,C,D} = 4'd5; #20;
    {A,B,C,D} = 4'd6; #20;
    {A,B,C,D} = 4'd7; #20;
    {A,B,C,D} = 4'd8; #20;
    {A,B,C,D} = 4'd9; #20;
    {A,B,C,D} = 4'd10; #20;
    {A,B,C,D} = 4'd11; #20;
    {A,B,C,D} = 4'd12; #20;
    {A,B,C,D} = 4'd13; #20;
    {A,B,C,D} = 4'd14; #20;
    {A,B,C,D} = 4'd15; #20;
end


endmodule