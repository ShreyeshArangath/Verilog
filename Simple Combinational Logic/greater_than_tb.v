`timescale 1ns/1ns
`include "greater_than.v"

module greater_than_tb();

reg [1:0] A,B;
wire F;

greater_than uut(A,B,F);

initial begin
    $dumpfile("greater_than.vcd");
    $dumpvars(0,greater_than_tb);
    {A,B} = 4'd0; #20; //Vector notation 
    {A,B} = 4'd1; #20; //Vector notation 
    {A,B} = 4'd2; #20; //Vector notation 
    {A,B} = 4'd3; #20; //Vector notation 
    {A,B} = 4'd4; #20; //Vector notation 
    {A,B} = 4'd5; #20; //Vector notation 
    {A,B} = 4'd6; #20; //Vector notation 
    {A,B} = 4'd7; #20; //Vector notation 
    {A,B} = 4'd8; #20; //Vector notation 
    {A,B} = 4'd9; #20; //Vector notation 
    {A,B} = 4'd10; #20; //Vector notation 
    {A,B} = 4'd11; #20; //Vector notation 
    {A,B} = 4'd12; #20; //Vector notation 
    {A,B} = 4'd13; #20; //Vector notation 
    {A,B} = 4'd14; #20; //Vector notation 
    {A,B} = 4'd15; #20; //Vector notation 

end

endmodule