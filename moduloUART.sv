module moduloUART (reloj, reinicio, lineaRecepcionBits, bitsTransmitir, botonIniciarTransmision, bitsRecibidos, recepcionFinalizada, lineaTransmisionBits);
    input logic reloj;
    input logic reinicio;
    
    input logic lineaRecepcionBits;
    input logic [7:0] bitsTransmitir;
    input logic botonIniciarTransmision;

    output logic [7:0] bitsRecibidos;
    output logic recepcionFinalizada
    output logic lineaTransmisionBits;

    moduloTransmisorUART moduloTransmisorUARTInstancia
    #(10417, 8)
    (
        .reloj (reloj),
        .reinicio (reinicio),
        .botonIniciarTransmision (botonIniciarTransmision),
        .bitsTransmitir (bitsTransmitir),
        .lineaTransmisionBits (lineaTransmisionBits)
    );

    moduloReceptorUART moduloReceptorUARTInstancia
    #(10417, 8)
    (
        .reloj (reloj),
        .reinicio (reinicio),
        .lineaRecepcionBits (lineaRecepcionBits),
        .recepcionFinalizada (recepcionFinalizada),
        .bitsRecibidos (bitsRecibidos)
    );

endmodule