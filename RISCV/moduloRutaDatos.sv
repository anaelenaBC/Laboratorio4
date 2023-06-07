module moduloRutaDatos(reloj, reinicio, origenResultado, origenPC, origenOperandosALU, escribirEnRegistros, origenImmediate, seleccionOperacionALU, banderaZero, PC, instruccionEjecutar, resultadoALU, datosEscribir, datosLeer);
    input logic reloj;
    input logic reinicio;
    input logic [1:0] origenResultado;
    input logic origenPC;
    input logic origenOperandosALU;
    input logic escribirEnRegistros;
    input logic origenImmediate;
    input logic [2:0] seleccionOperacionALU;
    input logic [31:0] instruccionEjecutar;
    input logic [31:0] datosLeer;

    output logic [31:0] resultadoALU;
    output logic [31:0] datosEscribir;
    output logic banderaZero;
    output logic [31:0] PC;

    logic [31:0] siguientePC; // Almacena el siguiente valor del PC. 
    logic [31:0] PCMasCuatro; // Almacena el valor de PC+4.
    logic [31:0] PCActual; // Almacena el valor actual del PC.
    logic [31:0] immediateTransformado; // Immediate transformado a 32 bits.
    logic [31:0] operandoA; // Operando A.
    logic [31:0] operandoB; // Operando B.
    logic [31:0] resultadoOperacion; // Resultado de operar los operandoA y operandoB.

    ///----------------------------------------------------------------------------
    // Lógica que controla el valor del PC.
    moduloFlipFlopPC #(32) moduloFlipFlopPCInstancia(reloj, reinicio, siguientePC, PC); // Se encarga de guardar el valor del PC.
    moduloSumador moduloSumadorInstancia (PC, 32'd4, PCMasCuatro); // Se encarga de sumar 32'd4 al PC.

    adder pcaddbranch(PC, immediateTransformado, PCActual);
    mux2 #(32) pcmux(PCMasCuatro, PCActual, origenPC, siguientePC);

    // register file logic
    regfile rf(reloj, escribirEnRegistros, instruccionEjecutar[19:15], instruccionEjecutar[24:20],
    instruccionEjecutar[11:7], resultadoOperacion, operandoA, datosEscribir);
    extend ext(instruccionEjecutar[31:7], origenImmediate, immediateTransformado);

    // ALU logic
    mux2 #(32) srcbmux(datosEscribir, immediateTransformado, origenOperandosALU, operandoB);
    alu alu(operandoA, operandoB, seleccionOperacionALU, ALUResult, banderaZero);
    mux3 #(32) resultmux(resultadoALU, datosLeer, PCPlus4,
    origenResultado, resultadoOperacion);

endmodule