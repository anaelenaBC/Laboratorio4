`timescale 1ns / 1ps

module tb_moduloHexadecimalDisplaySieteSegmentos;

    parameter CLK_PERIOD = 10;
    
    reg reloj;
    reg reinicio;
    reg [3:0] entradaNumeroHexadecimal;
    wire [6:0] salidaDisplaySieteSegmentos;
    
    moduloHexadecimalDisplaySieteSegmentos uut (
        .reloj(reloj),
        .reinicio(reinicio),
        .entradaNumeroHexadecimal(entradaNumeroHexadecimal),
        .salidaDisplaySieteSegmentos(salidaDisplaySieteSegmentos)
    );
    
    always #((CLK_PERIOD/2)) reloj = ~reloj;
    
    initial begin
        reinicio = 0;
        entradaNumeroHexadecimal = 4'b0000;
        #10;
        
        repeat (16) begin
            reinicio = 1;
            #10;
            reinicio = 0;
            entradaNumeroHexadecimal = entradaNumeroHexadecimal + 1;
            #20;
        end
        
        $finish;
    end
    
    always @(posedge reloj) begin
        $display("Tiempo: %t, Entrada: %h, Salida: %b", $time, entradaNumeroHexadecimal, salidaDisplaySieteSegmentos);
    end

endmodule
