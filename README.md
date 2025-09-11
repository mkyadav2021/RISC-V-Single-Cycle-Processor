# RISC-V-Single-Cycle-Processor
Reference Textbook: Digital Design and Computer Architecture RISC-V Edition

The single-cycle microarchitecture executes an entire instruction in one cycle. It is easy to explain and has a simple control unit. Because it completes the operation in one cycle, it does not require any nonarchitectural state. However, the cycle time is limited by the slowest instruction. Moreover, the processor requires separate instruction and data memories, which is generally unrealistic. (more on page 396 of the book)


**  Units: **
  1. Arithmetic Logical Unit (ALU): performs ADD, SUB, OR, AND, SLT operation 
<img width="793" height="423" alt="image" src="https://github.com/user-attachments/assets/448abb58-d02b-4892-96c8-a8f6a961e1e6" />

<img width="192" height="212" alt="image" src="https://github.com/user-attachments/assets/b5527e0c-3973-44e0-9f5e-42f3c0e61638" />

<img width="1891" height="1080" alt="ALU-test" src="https://github.com/user-attachments/assets/9d15aa23-6923-4a72-8379-8429ec682845" />

<img width="1920" height="1048" alt="ALU-test-waveform" src="https://github.com/user-attachments/assets/99ebd330-dfb9-4de2-83e8-102c596c5575" />



  2. Control Unit (CU) : generates control signals
   Separate implementation of Main decoder and ALU decoder 
   <img width="667" height="322" alt="image" src="https://github.com/user-attachments/assets/c53f86cf-525c-4910-b376-4d68eb2fdbdc" />
   <img width="796" height="198" alt="image" src="https://github.com/user-attachments/assets/b4acd613-5159-404f-b6ec-6034e17a31f8" />
   <img width="580" height="296" alt="image" src="https://github.com/user-attachments/assets/af75074f-0bbd-4553-98e7-2a48000cc5ee" />


  


  3. State Elements : has register file, data memory, instruction memmory, program counter

 <img width="647" height="214" alt="image" src="https://github.com/user-attachments/assets/d64de707-5719-49cd-9860-d7f4eaebd813" /> 

  
  4. Single-Cycle Datapath
  
