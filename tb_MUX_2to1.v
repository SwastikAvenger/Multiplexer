`timescale 1ns/1ps
module tb_MUX_2to1;
    reg [1:0] i0;
    reg [1:0] i1;
    reg sel;
    wire [1:0] y;

    // Instantiate DUT
    MUX_2to1 dut (
        .i0(i0),
        .i1(i1),
        .sel(sel),
        .y(y)
    );

    initial begin
        $display("Time\t sel i0 i1 | y");
        $monitor("%0t\t %b   %b  %b  | %b", $time, sel, i0, i1, y);

        // Stimulus
        i0 = 2'b00; i1 = 2'b01; sel = 0; #10;
        i0 = 2'b00; i1 = 2'b01; sel = 1; #10;

        i0 = 2'b10; i1 = 2'b11; sel = 0; #10;
        i0 = 2'b10; i1 = 2'b11; sel = 1; #10;

        i0 = 2'b01; i1 = 2'b10; sel = 0; #10;
        i0 = 2'b01; i1 = 2'b10; sel = 1; #10;

        $finish;
    end
endmodule