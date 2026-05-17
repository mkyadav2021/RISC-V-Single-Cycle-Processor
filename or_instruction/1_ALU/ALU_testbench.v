`timescale 1ns/1ps //time unit for 1 delay and time precision for delay

module alu_tb;

    // Inputs (regs in TB)
    reg [31:0] Atb, Btb;
    reg [2:0] ALUControltb;

    // Outputs (wires in TB)
    wire [31:0] Resulttb;
    wire Zetb, Ntb, Vtb, Ctb;

    // Instantiate DUT
    alu uut (
        .A(Atb),
        .B(Btb),
        .ALUControl(ALUControltb),
        .Result(Resulttb),
        .Ze(Zetb),
        .N(Ntb),
        .V(Vtb),
        .C(Ctb)
    );

    initial begin
        // Waveform dump
        $dumpfile("alu_tb.vcd");
        $dumpvars(0, alu_tb);

        // Monitor activity
        $monitor("Time=%0t | A=%h B=%h ALUCtrl=%b | Result=%h Ze=%b N=%b V=%b C=%b",
                  $time, Atb, Btb, ALUControltb, Resulttb, Zetb, Ntb, Vtb, Ctb);

        // Test Cases
        Atb = 32'h00000005; Btb = 32'h00000003; ALUControltb = 3'b000; #10; // ADD
        Atb = 32'h00000005; Btb = 32'h00000003; ALUControltb = 3'b001; #10; // SUB
        Atb = 32'hF0F0F0F0; Btb = 32'h0F0F0F0F; ALUControltb = 3'b010; #10; // AND
        Atb = 32'hF0F0F0F0; Btb = 32'h0F0F0F0F; ALUControltb = 3'b011; #10; // OR
        Atb = 32'h00000005; Btb = 32'h0000000A; ALUControltb = 3'b101; #10; // SLT

        // Edge case: overflow (positive + positive → negative)
        Atb= 32'h7FFFFFFF; Btb = 32'h00000001; ALUControltb = 3'b000; #10; // ADD Overflow

        // Edge case: subtraction with negative result
        Atb = 32'h00000003; Btb = 32'h00000005; ALUControltb = 3'b001; #10; // SUB Negative

        // Finish simulation
        $finish;
    end

endmodule
