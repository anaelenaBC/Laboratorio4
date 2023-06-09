`timescale 1ns / 1ps

module moduloHexadecimalDisplaySieteSegmentos (reloj, reinicio, entradaNumeroHexadecimal, salidaDisplaySieteSegmentos);
    input logic reloj;
    input logic reinicio;
    input logic [3:0] entradaNumeroHexadecimal;
    output logic [6:0] salidaDisplaySieteSegmentos;
    always @(posedge reloj) begin
        if (reinicio == 1'b1) begin
            salidaDisplaySieteSegmentos <= 7'b1111111;
        end
        else begin
            case (entradaNumeroHexadecimal)
                4'h0: salidaDisplaySieteSegmentos <= 7'b0000001;
                4'h1: salidaDisplaySieteSegmentos <= 7'b1001111;
                4'h2: salidaDisplaySieteSegmentos <= 7'b0010010;
                4'h3: salidaDisplaySieteSegmentos <= 7'b0000110;
                4'h4: salidaDisplaySieteSegmentos <= 7'b1001100;
                4'h5: salidaDisplaySieteSegmentos <= 7'b0100100;
                4'h6: salidaDisplaySieteSegmentos <= 7'b0100000;
                4'h7: salidaDisplaySieteSegmentos <= 7'b0001111;
                4'h8: salidaDisplaySieteSegmentos <= 7'b0000000;
                4'h9: salidaDisplaySieteSegmentos <= 7'b0000100;
                4'hA: salidaDisplaySieteSegmentos <= 7'b0001000;
                4'hB: salidaDisplaySieteSegmentos <= 7'b1100000;
                4'hC: salidaDisplaySieteSegmentos <= 7'b0110001;
                4'hD: salidaDisplaySieteSegmentos <= 7'b1000010;
                4'hE: salidaDisplaySieteSegmentos <= 7'b0110000;
                4'hF: salidaDisplaySieteSegmentos <= 7'b0111000;
            endcase
        end
    end
endmodule