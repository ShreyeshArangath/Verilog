`timescale 1ns/1ns
`include "dFlipFlop.v"

module d_flip_flop_edge_triggered_tb(Q, Qn, C, D);
        reg  C, D;
        wire Q, Qn;
    d_flip_flop_edge_triggered U0(Q, Qn, C, D);
    initial begin
        $dumpfile("d_flip_flop_edge_triggered.vcd");
        $dumpvars(0, d_flip_flop_edge_triggered_tb);

        {C, D} = {0, 0};
        {C, D} = {0, 1};
        {C, D} = {1, 1};
        {C, D} = {0, 1};
        {C, D} = {0, 0};
        {C, D} = {1, 0};

    end

endmodule