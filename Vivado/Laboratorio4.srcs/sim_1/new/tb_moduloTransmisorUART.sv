`timescale 1ns / 1ps

module tb_moduloTransmisorUART;
  
  parameter CICLOS_DE_RELOJ_POR_BIT = 10417;
  parameter CANTIDAD_BITS_TRANSMISION = 8;
  
  reg reloj;
  reg reinicio;
  reg botonIniciarTransmision;
  reg [CANTIDAD_BITS_TRANSMISION-1:0] bitsTransmitir;
  wire lineaTransmisionBits;
  
  moduloTransmisorUART #(
    .CICLOS_DE_RELOJ_POR_BIT(CICLOS_DE_RELOJ_POR_BIT),
    .CANTIDAD_BITS_TRANSMISION(CANTIDAD_BITS_TRANSMISION)
  ) moduloTransmisorUARTInstancia (
    .reloj(reloj),
    .reinicio(reinicio),
    .botonIniciarTransmision(botonIniciarTransmision),
    .bitsTransmitir(bitsTransmitir),
    .lineaTransmisionBits(lineaTransmisionBits)
  );
  
  always #5 reloj = ~reloj;
  
  initial begin
    reinicio = 1;
    botonIniciarTransmision = 0;
    bitsTransmitir = 0;
    #10;
    reinicio = 0;
    botonIniciarTransmision = 1;
    bitsTransmitir = 8'b11001010;
    #200;
    $finish;
  end
  
  always @(posedge reloj) begin
    $display("Tiempo: %t, Boton: %b, Bits a transmitir: %b, Linea de transmision: %b", $time, botonIniciarTransmision, bitsTransmitir, lineaTransmisionBits);
  end

endmodule

