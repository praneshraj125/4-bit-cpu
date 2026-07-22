// ============================================================================
// cpu_4bit_tb.v
// Self-checking testbench: runs the embedded demo program to HALT, checks
// final architectural state (registers, data memory, flag, PC) against
// hand-computed expected values, and dumps a VCD for waveform viewing in
// GTKWave / ModelSim / Vivado.
// ============================================================================

`timescale 1ns/1ps

module cpu_4bit_tb;

    reg clk, rst_n;
    wire [3:0]  pc;
    wire [11:0] instr;
    wire        halted;
    wire        flag_zero;

    integer errors;
    integer checks;
    integer cycle_count;

    cpu_4bit dut (
        .clk       (clk),
        .rst_n     (rst_n),
        .pc_out    (pc),
        .instr_out (instr),
        .halted    (halted),
        .flag_zero (flag_zero)
    );

    always #5 clk = ~clk;

    task check_eq4;
        input [255:0] name;
        input [3:0] actual;
        input [3:0] expected;
        begin
            checks = checks + 1;
            if (actual !== expected) begin
                errors = errors + 1;
                $display("FAIL: %0s  expected=%0d actual=%0d", name, expected, actual);
            end else begin
                $display("PASS: %0s  (=%0d)", name, actual);
            end
        end
    endtask

    task check_eq1;
        input [255:0] name;
        input actual;
        input expected;
        begin
            checks = checks + 1;
            if (actual !== expected) begin
                errors = errors + 1;
                $display("FAIL: %0s  expected=%0b actual=%0b", name, expected, actual);
            end else begin
                $display("PASS: %0s  (=%0b)", name, actual);
            end
        end
    endtask

    initial begin
        $dumpfile("cpu_4bit.vcd");
        $dumpvars(0, cpu_4bit_tb);

        clk = 0;
        rst_n = 0;
        errors = 0;
        checks = 0;
        cycle_count = 0;

        repeat (2) @(posedge clk);
        rst_n = 1;

        $display("\n=== Running demo program, tracing execution ===");
        // Cycle-by-cycle trace of PC / instruction / halted, useful for
        // cross-checking against the waveform in GTKWave.
        while (!halted && cycle_count < 100) begin
            @(posedge clk);
            #1; // let combinational decode settle for the display
            $display("cycle=%0d  PC=%0d  instr=%b  halted=%b  zero_flag=%b",
                      cycle_count, pc, instr, halted, flag_zero);
            cycle_count = cycle_count + 1;
        end

        // Let a couple more cycles pass to confirm PC really freezes at HALT
        repeat (3) @(posedge clk);

        checks = checks + 1;
        if (cycle_count >= 100) begin
            errors = errors + 1;
            $display("FAIL: program never halted within 100 cycles - possible stuck FSM or bad jump");
        end else begin
            $display("PASS: program halted after %0d cycles", cycle_count);
        end

        $display("\n=== Final architectural state checks ===");
        check_eq4("R0 final value",        dut.u_rf.regs[0], 4'd5);
        check_eq4("R1 final value",        dut.u_rf.regs[1], 4'd3);
        check_eq4("R2 final value",        dut.u_rf.regs[2], 4'd0);
        check_eq4("R3 final value",        dut.u_rf.regs[3], 4'd6);
        check_eq4("DMEM[10] final value",  dut.u_dmem.mem[10], 4'd8);
        check_eq4("PC frozen at HALT addr", pc, 4'd14);
        check_eq1("halted asserted",        halted, 1'b1);
        check_eq1("zero flag after final SHR (result=6, nonzero)", flag_zero, 1'b0);

        $display("\n================= SUMMARY =================");
        $display("Checks run : %0d", checks);
        $display("Errors     : %0d", errors);
        if (errors == 0)
            $display("RESULT: ALL TESTS PASSED");
        else
            $display("RESULT: %0d TEST(S) FAILED", errors);
        $display("=============================================\n");

        $finish;
    end

endmodule
