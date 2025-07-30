`timescale 1ns / 1ns
module one_bit_comparator_tb;

  reg A, B;
  wire O1, O2, O3;

  one_bit_comparator uut (
    .A(A),
    .B(B),
    .o1(O1),
    .o2(O2),
    .o3(O3)
  );

  initial begin
    $dumpfile("one_bit_comparator_waveform.vcd");
    $dumpvars(0, one_bit_comparator_tb);

    A = 0; B = 0; 
    #10;
    A = 0; B = 1; 
    #10;
    A = 1; B = 0; 
    #10;
    A = 1; B = 1; 
    #10;

    $finish;
  end

endmodule
