`timescale 1ns / 1ps

module tb_MUX_8to1;

    // Testbench signals
    reg [1:0] i0, i1, i2, i3, i4, i5, i6, i7;
    reg [2:0] sel;
    wire [1:0] y;

    // Instantiate the DUT (Device Under Test)
    MUX_8to1 uut (
        .i0(i0), .i1(i1), .i2(i2), .i3(i3),
        .i4(i4), .i5(i5), .i6(i6), .i7(i7),
        .sel(sel),
        .y(y)
    );

    initial begin
        // Initialize inputs
        i0 = 2'b00; i1 = 2'b01; i2 = 2'b10; i3 = 2'b11;
        i4 = 2'b01; i5 = 2'b10; i6 = 2'b11; i7 = 2'b00;
        
        sel = 0; #10;   sel = 1; #10;
        sel = 2; #10;   sel = 3; #10;
        sel = 4; #10;   sel = 5; #10;
        sel = 6; #10;   sel = 7; #10;
        $finish; // end simulation
    end

endmodule
