module risc_processor_tb;
    reg clk;
    reg reset;
    wire [31:0] result;

    risc_processor uut (
        .clk(clk),
        .reset(reset),
        .result(result)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
          $dumpfile("dumpfile.vcd");
    $dumpvars(1);

        // Initialize
        clk = 0;
        reset = 1;
        #10 reset = 0;

        // Run for a few cycles to observe result changes
        #100;

        $finish;
    end
endmodule
