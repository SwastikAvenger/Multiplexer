`timescale 1ns / 1ps
module MUX_8to1(
    input wire [1:0]i0,
    input wire [1:0]i1,
    input wire [1:0]i2,
    input wire [1:0]i3,
    input wire [1:0]i4,
    input wire [1:0]i5,
    input wire [1:0]i6,
    input wire [1:0]i7,
    input wire [2:0]sel,
    
    output wire [1:0]y
    );
    wire [1:0]w1,w2,w3; //first stage outputs
    wire [1:0]w4,w5;    //second stage outputs    
    
    //first stage 
    MUX_2to1 m1(.i0(i0), .i1(i1), .sel(sel[0]), .y(w1));
    MUX_2to1 m2(.i0(i2), .i1(i3), .sel(sel[0]), .y(w2));
    MUX_2to1 m3(.i0(i4), .i1(i5), .sel(sel[0]), .y(w3));
    MUX_2to1 m4(.i0(i6), .i1(i7), .sel(sel[0]), .y(w4));
    
    //second stage
    MUX_2to1 m5(.i0(w1), .i1(w2), .sel(sel[1]), .y(w4));
    MUX_2to1 m6(.i0(w3), .i1(w4), .sel(sel[1]), .y(w5));
    
    //final stage
    MUX_2to1 m7(.i0(w4), .i1(w5), .sel(sel[2]), .y(y));
endmodule
