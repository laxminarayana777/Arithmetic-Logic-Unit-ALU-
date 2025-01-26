# Arithmetic-Logic-Unit-ALU-
*COMPANY* = CODTECH IT SOLUTIONS

*NAME: LAXMI NARAYANA SINGIDI

*INTERN ID* : CT08HES

*DOMAIN*:VLSI 

*DURATION*:4 WEEKS

*MENTOR*:NEELA SANTOSH

DESCRIPTION


Designing a 3-Bit Arithmetic Logic Unit (ALU) using Verilog in Xilinx Vivado
In this task, I designed a 3-bit Arithmetic Logic Unit (ALU) using Verilog, a hardware description language, in Xilinx Vivado.
ALU Functionality
The ALU is a critical component of a digital computer's central processing unit (CPU). It performs various arithmetic and logical operations, such as addition, subtraction, bitwise XOR, left shift, and rotate left. In your design, you implemented these functions using a 3-bit opcode, which determines the operation to be performed.
3-Bit Opcode
The 3-bit opcode allows for a total of 8 possible operations (2^3). You assigned each opcode to a specific operation, such as:
Opcode 000: Addition
Opcode 001: Subtraction
Opcode 010:  AND
Opcode 011:  OR 
Opcode 100:  XOR
Opcode 101: Left Shift
Opcode 110: right Shift
Opcode 111: Rotate Left
3-Bit Inputs and Result
The ALU takes two 3-bit inputs, A and B, and produces a 3-bit result. The result is calculated based on the operation specified by the opcode.
Overflow Bit (Carry)
To handle cases where the result exceeds the 3-bit range, you included an overflow bit (carry) in your design. This bit is set when the result of an operation exceeds the maximum value that can be represented by 3 bits.
Verilog Implementation
I wrote the Verilog code to implement the ALU, using a combination of always blocks, case statements, and bitwise operators. The code defines the ALU's behavior, including the calculation of the result and the setting of the overflow bit.
Xilinx Vivado Simulation
After writing the Verilog code, I simulated the ALU's behavior using Xilinx Vivado. The simulation allowed me to verify the correctness of your design by testing it with various input combinations and opcodes.
In conclusion, My task involved designing a 3-bit ALU using Verilog, implementing various arithmetic and logical operations, and simulating its behavior using Xilinx Vivado. The ALU's functionality, including the handling of overflow, was successfully implemented and verified through simulation.
