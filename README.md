## Introduction to Multiplexer

A **Multiplexer** is an electronic circuit that acts as a switch, which connects multiple input data lines to one single output data line.
Based on the user input, one input data line is connected to the output data line at any given time.
In essence, a multiplexer acts as a digital switch, switching between multiple data lines and connecting one of them with the output data line at a given
time. Multiplexers are commonly known as "**N-to-1**" selectors or **Parallel to Serial** converters. They used to increase the amount of data that can be sent in a certain amount of time and bandwidth.

### IO ports of a Multiplexer
Apart from the power line and the enable line, a multiplexer has input data lines, select lines and a single output line. The select lines are used to select one particular input line at any given time. For **n** select lines, a multiplexer can have **2<sup>n</sup>** input lines. It is, based on this classification that we define various types of the multiplexers. 

### Types of Multiplexer
There are different types of multiplexers available in the market. Some common examples include:
* 2-to-1 Mux (with 1 select line)
* 4-to-1 Mux (with 2 select lines)
* 8-to-1 Mux (with 3 select lines)
and many more.
The following figure shows the elaborated diagram of the 2-to-1 Line Multiplexer and it's simulation waveform (in Vivado)

<img width="927" height="350" alt="image" src="https://github.com/user-attachments/assets/745d0e5f-c2d6-4eaa-95cf-50f5d2e7094d" />
<img width="1550" height="261" alt="image" src="https://github.com/user-attachments/assets/cb7ef6e9-1443-404f-ac29-dee78a48a0a4" />

More such details about a multiplexer can be found [here](https://www.tutorialspoint.com/digital-electronics/digital-electronics-multiplexers.htm).

## About the repository
This repository contains the RTL design and testbench file for a 2X1 MUX and an 8X1 MUX (using the 2X1 MUX). Verilog language has been used to design this project. One can use this project as a reference and make their own design. Good ideas should have no borders. 
