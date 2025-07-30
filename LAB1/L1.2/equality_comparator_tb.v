`timescale 1ns / 1ns
module equality_comparator_tb;

  reg [3:0] a, b;
  wire c;

  equality_comparator uut (
    .A(a),
    .B(b),
    .C(c)
  );

  initial begin
    $dumpfile("equality_comparator_waveform.vcd");
    $dumpvars(0, equality_comparator_tb);

    a = 4'b0000; b = 4'b0000; 
    #10;
    a = 4'b1010; b = 4'b1010; 
    #10;
    a = 4'b1111; b = 4'b0000; 
    #10;
    a = 4'b0011; b = 4'b1100; 
    #10;
    a = 4'b1001; b = 4'b1001; 
    #10;

    $finish;
  end

endmodule
