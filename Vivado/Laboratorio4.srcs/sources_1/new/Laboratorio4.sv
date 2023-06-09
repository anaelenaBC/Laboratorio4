`timescale 1ns / 1ps

module Laboratorio4 (reloj, reinicio, identificadorFPGA, identificadorDestinoDatoEnviar, datoEnviar, botonEnviar, LEDSContadorPaquetes, contadorPaquetes, displaySieteSegmentosDatoConsumido, lineaTransmisionA, lineaRecepcionA, lineaTransmisionB, lineaRecepcionB, lineaTransmisionC, lineaRecepcionC);

    input logic reloj;
    input logic reinicio;
    input logic [3:0] identificadorFPGA;
    input logic [3:0] identificadorDestinoDatoEnviar;
    input logic [3:0] datoEnviar;
    input logic botonEnviar;

    input logic lineaRecepcionA;
    input logic lineaRecepcionB;
    input logic lineaRecepcionC;

    output logic lineaTransmisionA;
    output logic lineaTransmisionB;
    output logic lineaTransmisionC;
    
    output logic [3:0] LEDSContadorPaquetes;
    output logic [3:0] contadorPaquetes;
    output logic [6:0] displaySieteSegmentosDatoConsumido;

    wire wireBotonIniciarTransmisionCorregidoAntirebote; // boton de enviar pasado por el antirebote

    wire [3:0] wireContadorPaquetesHexadecimal; // aqui se tiene la cuenta de cuantos paquetes he procesado
    wire [3:0] wireDatoConsumidoHexadecimal; // aqui se tiene guarado de lo que me llegó

    wire wireRecepcionAFinalizada;
    wire wireRecepcionBFinalizada;
    wire wireRecepcionCFinalizada;

    wire [7:0] wireBitsRecibidosA;
    wire [7:0] wireBitsRecibidosB;
    wire [7:0] wireBitsRecibidosC;

    wire wireIniciarTransmisionA;
    wire wireIniciarTransmisionB;
    wire wireIniciarTransmisionC;
    
    moduloProcesador moduloProcesadorInstancia 
    (
        .reloj (reloj),
        .reinicio (reinicio),
        .identificadorFPGA (identificadorFPGA),
        .recepcionFinalizadaA (wireRecepcionAFinalizada),
        .recepcionFinalizadaB (wireRecepcionBFinalizada),
        .recepcionFinalizadaC (wireRecepcionCFinalizada),
        .datoRecibido ({wireBitsRecibidosA,wireBitsRecibidosB,wireBitsRecibidosC}),
        .iniciarTransmisionA (wireIniciarTransmisionA),
        .iniciarTransmisionB (wireIniciarTransmisionB),
        .iniciarTransmisionC (wireIniciarTransmisionC),
        .datoConsumido (wireDatoConsumidoHexadecimal),
        .cantidadContadorPaquetes (wireContadorPaquetesHexadecimal),
        .cantidadContadorPaquetesProcesados (LEDSContadorPaquetes)
    );

    moduloUART moduloUARTA 
    (
        .reloj (reloj),
        .reinicio (reinicio),
        .lineaRecepcionBits (lineaRecepcionA),
        .bitsTransmitir ({identificadorDestinoDatoEnviar, datoEnviar}),
        .botonIniciarTransmision (wireBotonIniciarTransmisionCorregidoAntirebote || wireIniciarTransmisionA),
        .bitsRecibidos (wireBitsRecibidosA),
        .recepcionFinalizada (wireRecepcionAFinalizada),
        .lineaTransmisionBits (lineaTransmisionA)
    );

    moduloUART moduloUARTB 
    (
        .reloj (reloj),
        .reinicio (reinicio),
        .lineaRecepcionBits (lineaRecepcionB),
        .bitsTransmitir ({identificadorDestinoDatoEnviar, datoEnviar}),
        .botonIniciarTransmision (wireBotonIniciarTransmisionCorregidoAntirebote || wireIniciarTransmisionB),
        .bitsRecibidos (wireBitsRecibidosB),
        .recepcionFinalizada (wireRecepcionBFinalizada),
        .lineaTransmisionBits (lineaTransmisionB)
    );

    moduloUART moduloUARTC
    (
        .reloj (reloj),
        .reinicio (reinicio),
        .lineaRecepcionBits (lineaRecepcionC),
        .bitsTransmitir ({identificadorDestinoDatoEnviar, datoEnviar}),
        .botonIniciarTransmision (wireBotonIniciarTransmisionCorregidoAntirebote || wireIniciarTransmisionC),
        .bitsRecibidos (wireBitsRecibidosC),
        .recepcionFinalizada (wireRecepcionCFinalizada),
        .lineaTransmisionBits (lineaTransmisionC)
    );
    
    moduloAntirebote moduloAntireboteBotonEnviar
    (
        .reloj (reloj),
        .reinicio (reinicio),
        .entradaBoton (botonEnviar),
        .salidaBoton (wireBotonIniciarTransmisionCorregidoAntirebote)
    );
  
    moduloHexadecimalDisplaySieteSegmentos moduloHexadecimalDisplaySieteSegmentosDatoConsumido
    (
        .reloj (reloj),
        .reinicio (reinicio),
        .entradaNumeroHexadecimal (wireDatoConsumidoHexadecimal),
        .salidaDisplaySieteSegmentos (displaySieteSegmentosDatoConsumido)
    );
    
    assign contadorPaquetes = wireContadorPaquetesHexadecimal;
    
endmodule 