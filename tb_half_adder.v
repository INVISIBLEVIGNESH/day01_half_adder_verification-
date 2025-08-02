module tb_half_adder;
  reg A, B;
  wire SUM, CARRY;

  half_adder dut (
    .A(A), .B(B),
    .SUM(SUM), .CARRY(CARRY)
  );

  initial begin
    $dumpfile("output.vcd");
    $dumpvars(0, tb_half_adder);

    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;

    $finish;
  end
endmodule
