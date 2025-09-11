//The single-cycle microarchitecture executes an entire instruction in one cycle. 
//Book pg 334,396,397+ (nice explanation), for Control Unit connections (407)

`include "../3_State_Elements/program_counter.v"
`include "../3_State_Elements/instruction_memory.v"
`include "../3_State_Elements/register_file.v"
`include "../3_State_Elements/data_memory.v"
`include "sign_extend.v"
`include "../1_ALU/ALU.v"
`include "../2_CU/alu_decoder.v"
`include "../2_CU/main_decoder.v"
`include "pc_adder.v"

module single_cycle_module(clk,rst);

input clk, rst;

wire [31:0] PC_wire, RDInstr_wire, ReadData_wire, RD2_wire, PCPlus4_wire, RD1_wire,ImmExt_wire; 
wire [2:0] ALUControl_wire;
wire [1:0] ALUOp_wire,ImmSrc_wire;
wire [31:0] ALUResult_wire;
wire RegWrite_wire, MemWrite_wire;

//module instantiation is parallel
program_counter_module pc(
    .clk(clk), .rst(rst), .PC(PC_wire), .PC_NEXT(PCPlus4_wire) );

instruction_memory_module im(
 .rst(rst), .A(PC_wire), .RD(RDInstr_wire) );

register_file_module rf(
.A1(RDInstr_wire[19:15]), .RD1(RD1_wire),.A2(RDInstr_wire[24:20]),.RD2(RD2_wire),
.A3(RDInstr_wire[11:7]), .WD3(ReadData_wire),.WE3(RegWrite_wire),.clk(clk),.rst(rst) );

sign_extend_module se(
.Instr(RDInstr_wire), .ImmSrc(ImmSrc_wire), .ImmExt(ImmExt_wire) );

main_decoder_module maindecoder(
 .op(RDInstr_wire[6:0]), .zero(), .RegWrite(RegWrite_wire), .MemWrite(MemWrite_wire),
  .ResultSrc(), .ALUSrc(),
  .ImmSrc(ImmSrc_wire), .ALUOp(ALUOp_wire), .PSCrc() );


alu_decoder_module aludecoder(
    .ALUOp(ALUOp_wire), .op(RDInstr_wire[5]), .funct3(RDInstr_wire[14:12]),
     .funct7(RDInstr_wire[30]), .ALUControl(ALUControl_wire) );

alu_module alu(
 .A(RD1_wire),  .B(ImmExt_wire), .ALUControl(ALUControl_wire),
   .ALUResult(ALUResult_wire), .Ze(), .N(), .V(), .C() );

data_memory_module dm(
    .A(ALUResult_wire), .WE(MemWrite_wire), .WD(RD2_wire), .RD(ReadData_wire), .clk(clk), .rst(rst) );

pc_adder_module pcaddermodule(
.a(PC_wire), .b(32'h4), .c(PCPlus4_wire) );


endmodule