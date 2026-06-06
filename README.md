# 16-bit-ripple-adder
16-bit Ripple Carry Adder designed in Verilog HDL using hierarchical structural modeling. Built using four 4-bit adders and full adders. Simulated and verified in ModelSim
# 16-bit Ripple Carry Adder in Verilog HDL

## Overview

This project implements a 16-bit Ripple Carry Adder using Verilog HDL. The design follows a hierarchical approach where a Full Adder is used to construct a 4-bit Ripple Carry Adder, and four 4-bit adders are then connected together to create a 16-bit adder.

## Design Hierarchy

Full Adder → 4-bit Ripple Carry Adder → 16-bit Ripple Carry Adder

## Modules

### Full Adder

Performs single-bit addition using inputs A, B, and Cin, producing Sum and Cout.

### 4-bit Ripple Carry Adder

Constructed using four Full Adders connected in series. The carry output of each stage is connected to the carry input of the next stage.

### 16-bit Ripple Carry Adder

Constructed using four 4-bit Ripple Carry Adders. Carry signals propagate through each 4-bit block to generate the final output.

## Simulation Waveform
<img width="1917" height="829" alt="Screenshot 2026-06-06 184603" src="https://github.com/user-attachments/assets/5a5da575-d39f-4b4f-8bff-1958511e0614" />




## Verification

A testbench was written to verify the functionality of the design. Multiple hexadecimal input combinations were applied to the 16-bit adder, and the output sum and carry were observed in simulation.

The design was simulated using ModelSim and verified through waveform analysis and output monitoring.

## Files

* adder.v — Contains the Full Adder, 4-bit Adder, 16-bit Adder, and Testbench.

## Concepts Learned

* Structural Modeling in Verilog
* Hierarchical Digital Design
* Ripple Carry Addition
* Carry Propagation
* Testbench Development
* Functional Verification using ModelSim

## Future Improvements

* Carry Lookahead Adder implementation
* Parameterized N-bit Adder design
* Synthesis and FPGA implementation
* Performance comparison with faster adder architectures

