module voting(input  wire a,
              input  wire b,
              input  wire c,
              output wire g
              );

  wire d = a & b;
  wire e = b & c;
  wire f = a & c;
  
  assign g = d | e | f;
  
endmodule
