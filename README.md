# 16-Bit VHDL CPU

This project consists of a Harvard architecture CPU and all its internal components. The CPU consists of a ROM, RAM, program counter register, instruction register, ALU,
register file, instruction decoder, and several tristates and multiplexers. Based on binary data pre-loaded into the ROM, the CPU will run given instructions. It contains
its own instruction set, which is similar to MIPS assembly language.

A general block diagram can be seen below:

![alt text](https://i.imgur.com/r3Eygyw.png)

And then a more detailed diagram with the encoder and control signals can be seen below:

![alt text](https://i.imgur.com/6jBzmaC.png)

## The ALU

The ALU consists of several tristates that activate certain arithmetic components based on the value of a function bus. It has a result bus, as well as overflow,
carry, sign, zero, and parity bits for output. The bit outputs are flags which will be sent to the decoder. Based on the values of these bits, the decoder will
drive specific control signals. A diagram of the ALU may be seen below:

![alt text](https://i.imgur.com/LrHxmPC.png)

## Known Issues
- The ALU, although working on its own, causes the CPU to deadlock whenever is a shift operation is performed.
- The ALU will occassionally drive wrong addresses due to errors in control signals, specifically during shift operations.
