# RISC-V-Single-Cycle-Processor
Reference Textbook: 
1. Digital Design and Computer Architecture RISC-V Edition
2. https://cs.brown.edu/courses/csci1952y/2024/assets/docs/riscv-spec-v2.2.pdf
3. https://venus.cs61c.org/
4. 

The single-cycle microarchitecture executes an entire instruction in one cycle. It is easy to explain and has a simple control unit. Because it completes the operation in one cycle, it does not require any nonarchitectural state. However, the cycle time is limited by the slowest instruction. Moreover, the processor requires separate instruction and data memories, which is generally unrealistic. (more on page 396 of the book)


**Units:**
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
     <img width="632" height="679" alt="image" src="https://github.com/user-attachments/assets/1326ca13-a1fc-4733-aba5-14afa3155007" />
     <img width="663" height="136" alt="image" src="https://github.com/user-attachments/assets/330ff4b5-20b4-40a6-a944-4558d2734726" />
     <img width="554" height="83" alt="image" src="https://github.com/user-attachments/assets/d085be03-e129-47e5-81ec-3209051edd44" />
     <img width="602" height="99" alt="image" src="https://github.com/user-attachments/assets/ae1c18ad-80ff-43e6-930e-c466d5f1dd96" />




  We will implement three instructions-lw,sw, and or instruction.


Example: lw x6, -4(x9)
this

<img width="593" height="202" alt="image" src="https://github.com/user-attachments/assets/c6cb839a-1695-4399-96a1-938f160106f2" />
<img width="602" height="183" alt="image" src="https://github.com/user-attachments/assets/bd014b54-4d80-429e-8f08-5a8c01d1c4a1" />
<img width="568" height="257" alt="image" src="https://github.com/user-attachments/assets/e7bdb180-73e3-4d6f-8126-a3dbad1e468f" />
<img width="568" height="258" alt="image" src="https://github.com/user-attachments/assets/f4371ba8-09f3-4d8e-aa97-3351d9d96cc0" />
<img width="601" height="291" alt="image" src="https://github.com/user-attachments/assets/9ef84d56-e7d0-4aaf-abec-1da22e60b7ec" />



