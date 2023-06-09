`timescale 1ns / 1ps

module moduloTransmisorUART #(parameter CICLOS_DE_RELOJ_POR_BIT = 10417, parameter CANTIDAD_BITS_TRANSMISION = 8) (reloj, reinicio, botonIniciarTransmision, bitsTransmitir, lineaTransmisionBits);
    input logic reloj;
    input logic reinicio;
    input logic botonIniciarTransmision;
    input logic [CANTIDAD_BITS_TRANSMISION-1:0] bitsTransmitir; 

    output reg lineaTransmisionBits;

    parameter [1:0] ESTADO_ESPERA = 2'b00;
    parameter [1:0] ESTADO_ENVIANDO_BIT_DE_INICIO = 2'b01;
    parameter [1:0] ESTADO_ENVIANDO_INFORMACION = 2'b10;
    parameter [1:0] ESTADO_ENVIANDO_BIT_DE_FINALIZACION = 2'b11;

    reg [1:0] registroEstadoActual;
    reg [13:0] registroContadorCiclosReloj;
    reg [CANTIDAD_BITS_TRANSMISION-1:0] registroIndiceBitTransmitir;
    reg [CANTIDAD_BITS_TRANSMISION-1:0] registroBitsTransmitir;

    always @(posedge reloj or posedge reinicio) begin
        if (reinicio == 1'b1) begin
            registroEstadoActual <= ESTADO_ESPERA;
            registroContadorCiclosReloj <= 0;
            registroIndiceBitTransmitir <= 0;
            registroBitsTransmitir <= 0;
        end
        else begin
            if (registroEstadoActual == ESTADO_ESPERA) begin
                lineaTransmisionBits <= 1'b1;
                registroContadorCiclosReloj <= 0; 
                registroIndiceBitTransmitir <= 0;
                if (botonIniciarTransmision == 1'b1) begin 
                    registroEstadoActual <= ESTADO_ENVIANDO_BIT_DE_INICIO;
                    registroBitsTransmitir <= bitsTransmitir;
                end
                else registroEstadoActual <= ESTADO_ESPERA;
            end
            else if (registroEstadoActual == ESTADO_ENVIANDO_BIT_DE_INICIO) begin
                lineaTransmisionBits <= 1'b0;
                if (registroContadorCiclosReloj < CICLOS_DE_RELOJ_POR_BIT) begin
                    registroContadorCiclosReloj <= registroContadorCiclosReloj + 1;
                    registroEstadoActual <= ESTADO_ENVIANDO_BIT_DE_INICIO;
                end
                else begin
                    registroContadorCiclosReloj <= 0;
                    registroEstadoActual <= ESTADO_ENVIANDO_INFORMACION;
                end
            end
            else if (registroEstadoActual == ESTADO_ENVIANDO_INFORMACION) begin
                lineaTransmisionBits <= registroBitsTransmitir[registroIndiceBitTransmitir];
                if (registroContadorCiclosReloj < CICLOS_DE_RELOJ_POR_BIT) begin
                    registroContadorCiclosReloj <= registroContadorCiclosReloj + 1;
                    registroEstadoActual <= ESTADO_ENVIANDO_INFORMACION;
                end
                else begin
                    registroContadorCiclosReloj <= 0;
                    if (registroIndiceBitTransmitir < CANTIDAD_BITS_TRANSMISION) begin
                        registroIndiceBitTransmitir <= registroIndiceBitTransmitir + 1;
                        registroEstadoActual <= ESTADO_ENVIANDO_INFORMACION;
                    end
                    else begin
                        registroIndiceBitTransmitir <= 0;
                        registroEstadoActual <= ESTADO_ENVIANDO_BIT_DE_FINALIZACION;
                    end
                end
            end
            else if (registroEstadoActual == ESTADO_ENVIANDO_BIT_DE_FINALIZACION) begin
                lineaTransmisionBits <= 1'b1;
                if (registroContadorCiclosReloj < CICLOS_DE_RELOJ_POR_BIT) begin
                    registroContadorCiclosReloj <= registroContadorCiclosReloj + 1;
                    registroEstadoActual <= ESTADO_ENVIANDO_BIT_DE_FINALIZACION;
                end
                else begin
                    registroContadorCiclosReloj <= 1'b0;
                    registroEstadoActual <= ESTADO_ESPERA;
                end
            end
            else registroEstadoActual <= ESTADO_ESPERA;
        end
    end
    
endmodule 