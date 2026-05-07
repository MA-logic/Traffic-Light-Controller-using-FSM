# Traffic Light Controller using Verilog HDL

A Traffic Light Controller designed using Verilog HDL and verified through simulation using Xilinx ISim.

## Project Description

This project implements a simple traffic light control system using a Finite State Machine (FSM).  
The controller cycles through:

- RED
- GREEN
- YELLOW

based on clock timing and reset conditions.

## Features

- FSM-based traffic control logic
- Automatic state transitions
- Clock-driven sequential operation
- Reset functionality
- Configurable timing using counters
- Behavioral simulation using Xilinx ISim

## Technologies Used

- Verilog HDL
- Xilinx ISE Design Suite
- Xilinx ISim Simulator

## Design Concepts

- Finite State Machine (FSM)
- Sequential Circuits
- Timing Counters
- State Transition Logic
- Clock Synchronization

## State Sequence

```text
RED → GREEN → YELLOW → RED
```
## Simulation Verification
The design was tested using a Verilog testbench in Xilinx ISim.
Simualation waveforms verified correct transitions between traffic light states.

## Applications
- Smart traffic systems
- FPGA-Based Controllers
- Embedded System Design
- Digital Autonomous Systmes
- RTL Design and Verification Learning

## Simulation Output
<img width="1600" height="739" alt="traffic_signal_waveform" src="https://github.com/user-attachments/assets/45dbe23a-55dc-48d2-a89d-ac646c1ffcde" />



