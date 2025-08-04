COE328 Lab 4 - VHDL for Combinational Circuits and Storage Elements

This lab focuses on designing and simulating both combinational logic and basic sequential circuits using VHDL and the Quartus II software suite. The lab includes the implementation of multiplexers, decoders, encoders, and a Johnson counter that cyclically displays a student ID using a seven-segment display.

Project Structure
- mux.vhd:  2:1 multiplexer component (used to build 4:1 multiplexer)
- decod.vhd:  2:4 decoder component (used to build 3:8 decoder)
- encod.vhd:  Encoder logic
- johns.vhd:  Johnson counter with student ID display logic
- muxModified.bdf:  4:1 multiplexer built from two 2:1 MUX blocks
- decodModified.bdf:  3:8 decoder built from two 2:4 decoder blocks
- Waveform simulation files for all modules
- Directory structure includes: mux, decode, encod, johns, muxModified, and decodModified

Key Features
- Johnson counter cycles through the last 6 digits of a student ID using VHDL case logic
- Error detection logic displays E on seven-segment display for invalid states or corrupted inputs
- Demonstrates reuse of modular VHDL components via block schematic design
- All designs successfully compiled, simulated, and validated through waveform analysis
- Integration of combinational and sequential logic into a cohesive display system
