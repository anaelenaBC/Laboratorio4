module moduloFlipFlopPC #(parameter cantidadBits = 32)
 (input logic clk, reset,
 input logic [cantidadBits-1:0] d,
 output logic [cantidadBits-1:0] q);
 always_ff @(posedge clk, posedge reset)
 if (reset) q <= 0;
 else q <= d;
endmodule