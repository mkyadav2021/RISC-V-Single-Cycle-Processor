# RISC-V-Single-Cycle-Processor
References: 
  Textbook: Digital Design and Computer Architecture RISC-V Edition

The single-cycle microarchitecture executes an entire instruction in one cycle. It is easy to explain and has a simple control unit. Because it completes the operation in one cycle, it does not require any nonarchitectural state. However, the cycle time is limited by the slowest instruction. Moreover, the processor requires separate instruction and data memories, which is generally unrealistic. (page 396)


**  Units: **
  1. Arithmetic Logical Unit (ALU): performs ADD, SUB, OR, AND, SLT operation (pg 248)
<img width="442" height="355" alt="image" src="https://github.com/user-attachments/assets/599763c5-9262-43ed-a544-0457aaa2e8b3" />








  2. Control Unit (CU) : generates control signals
  3. State Elements : has register file, data memory, instruction memmory, program counter
  4. Single-Cycle Datapath
  
