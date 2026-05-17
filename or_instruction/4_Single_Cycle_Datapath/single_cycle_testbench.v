module single_cycle_module_testbech();

    reg clk=1'b1,rst;

    single_cycle_module scm(
        .clk(clk), .rst(rst)

    );


initial begin 
$dumpfile("single cycle.vcd");
$dumpvars(0);
end

always begin
    clk=~clk;
    #50;
end

initial begin
rst=1'b0;
#100;

rst=1'b1;
#300;

$finish;

end
endmodule