module moduloRISCV (reloj, reinicio, instruccion, datosLeer, PC, escribirEnMemoria, resultadoALU, datosEscribir);
    input logic reloj; // Reloj del sistema (10 MHz).
    input logic reinicio; // Reinicio del sistema.
    input logic [31:0] instruccionEjecutar; // Instrucción en lenguaje máquina de lo que se debe ejecutar.
    input logic [31:0] datosLeer; // Datos que se leen de alguna fuente externa.

    output logic [31:0] PC; // Program Counter (contador de programa). Almacena la dirección de memoria de la siguiente instrucción a ejecutar.
    output logic escribirEnMemoria; // Bandera que indica si se debe escribir en la memoria RAM.
    output logic [31:0] resultadoALU; // Resultado calculado por la ALU.
    output logic [31:0] datosEscribir; // Datos que se van a escribir.

    logic banderaZero; // Bandera que indica si el resultado es cero.
    logic [1:0] origenResultado; // Bits que indican de donde viene el resultado que es calculado en el procesador.
    logic origenOperandosALU; // Bandera que indica de donde vienen los operandos que son operados por la ALU.
    logic escribirEnRegistros; // Bandera que indica si se debe escribir en los registros.
    logic realizarSaltoJump; // Bandera que indica si se debe realizar un salto de tipo jump en las instrucciones.
    logic [1:0] origenImmediate; // Bits que indican de donde viene el immediate que se utiliza en las instrucciones.
    logic [2:0] seleccionOperacionALU; // Bits que indican la operación que se realizará en la ALU.
    logic origenPC; // Bandera que indica de donde viene el Program Counter (contador de programa) actual del procesador.

    moduloControlador moduloControladorInstancia
    (
        instruccionEjecutar[6:0], // Primeros 6 bits de la instrucción: código de la operación.
        instruccionEjecutar[14:12], // Bits del 12 al 14 de la instrucción: funct3 (ayuda a seleccionar la instrucción a ejecutar junto con el código de la operación). 
        instruccionEjecutar[30], // Bit 30 de la instruccion: funct30 (ayuda a seleccionar la instrucción a ejecutar junto con el código de la operación y el funct3).
        banderaZero,
        origenResultado,
        escribirEnMemoria,
        origenPC,
        origenOperandosALU,
        escribirEnRegistros,
        realizarSaltoJump,
        origenImmediate,
        seleccionOperacionALU
    );

    moduloRutaDatos moduloRutaDatosInstancia
    (
        reloj, 
        reinicio, 
        origenResultado,
        origenPC,
        origenOperandosALU, 
        escribirEnRegistros,
        origenImmediate,
        seleccionOperacionALU,
        banderaZero, 
        PC, 
        instruccionEjecutar,
        resultadoALU, 
        datosEscribir, 
        datosLeer
    );

endmodule