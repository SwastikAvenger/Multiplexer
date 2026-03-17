`timescale 1ns/1ps
module MUX_2to1(
    input wire [1:0] i0,
    input wire [1:0] i1,
    input wire sel,
    output reg [1:0] y
);

    always @(*) begin
        case (sel)
            1'b0: y = i0;          // select first input
            1'b1: y = i1;          // select second input
            default: y = 2'b00;    // default output
        endcase
    end
endmodule   