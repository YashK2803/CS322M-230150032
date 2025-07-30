`timescale 1ns / 1ns
module one_bit_comparator_tb;

  reg a, b;
  wire O1, O2, O3;

  one_bit_comparator uut (
    .A(a),
    .B(b),
    .o1(O1),
    .o2(O2),
    .o3(O3)
  );

  initial begin
    $dumpfile("one_bit_comparator_waveform.vcd");
    $dumpvars(0, one_bit_comparator_tb);

    a = 0; b = 0; 
    #10;
    a = 0; b = 1; 
    #10;
    a = 1; b = 0; 
    #10;
    a = 1; b = 1; 
    #10;

    $finish;
  end

endmodule
