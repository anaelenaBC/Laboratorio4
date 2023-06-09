`timescale 1ns / 1ps

module tb_moduloReceptorUART;

    parameter CICLOS_DE_RELOJ_POR_BIT = 10417;
    parameter CANTIDAD_BITS_TRANSMISION = 8;
  
    reg reloj;
    reg reinicio;
    reg lineaRecepcionBits;
    wire recepcionFinalizada;
    wire [CANTIDAD_BITS_TRANSMISION+2:0] bitsRecibidos;
  
    moduloReceptorUART moduloReceptorUARTInstancia (
        .reloj(reloj),
        .reinicio(reinicio),
        .lineaRecepcionBits(lineaRecepcionBits),
        .recepcionFinalizada(recepcionFinalizada),
        .bitsRecibidos(bitsRecibidos)
    );
  
    always begin
        #5 reloj = ~reloj;
    end
  
    initial begin
        reloj = 0;
        reinicio = 1;
        lineaRecepcionBits = 1;
        #10 reinicio = 0;
    end
  
    initial begin
        #20 lineaRecepcionBits = 0;
        #10 lineaRecepcionBits = 1;
        #5 lineaRecepcionBits = 0;
        #10 lineaRecepcionBits = 1;
        #5 lineaRecepcionBits = 0;
        #10 lineaRecepcionBits = 1;
        #5 lineaRecepcionBits = 0;
        #10 lineaRecepcionBits = 1;
        #5 lineaRecepcionBits = 0;
        #10 lineaRecepcionBits = 1;
        #5 lineaRecepcionBits = 0;
        #10 lineaRecepcionBits = 1;
        #5 lineaRecepcionBits = 0;
        #10 lineaRecepcionBits = 1;
        #5 lineaRecepcionBits = 0;
        #10 lineaRecepcionBits = 1;
        #5 lineaRecepcionBits = 0;
        #10 lineaRecepcionBits = 1;
        #5 lineaRecepcionBits = 0;
        #10 lineaRecepcionBits = 1;
        #5 lineaRecepcionBits = 0;
        #10 lineaRecepcionBits = 1;
        #5 lineaRecepcionBits = 0;
        #10 lineaRecepcionBits = 1;
        #5 lineaRecepcionBits = 0;
        #10 lineaRecepcionBits = 1;
        #5 lineaRecepcionBits = 0;
        #10 lineaRecepcionBits = 1;
        #5 lineaRecepcionBits = 0;
        #10 lineaRecepcionBits = 1;
        #5 lineaRecepcionBits = 0;
        #10 lineaRecepcionBits = 1;
        #5 lineaRecepcionBits = 0;
        #10 lineaRecepcionBits = 1;
        #5 
        $finish;
    end
  
endmodule
