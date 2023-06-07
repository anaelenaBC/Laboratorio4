module moduloControlador(codigoOperacion, funct3, funct30, banderaZero, origenResultado, escribirEnMemoria, origenPC, origenOperandosALU, escribirEnRegistros, realizarSaltoJump, origenImmediate, seleccionOperacionALU);
    input logic [6:0] codigoOperacion; // Primeros 6 bits de la instrucción: código de la operación. Indica que operación se quiere realizar.
    input logic [2:0] funct3; // Bits del 12 al 14 de la instrucción: funct3 (ayuda a seleccionar la instrucción a ejecutar junto con el código de la operación). 
    input logic funct30; // Bit 30 de la instruccion: funct30 (ayuda a seleccionar la instrucción a ejecutar junto con el código de la operación y el funct3).
    input logic banderaZero; // Bandera que indica si el resultado es cero.

    output logic [1:0] origenResultado; // Bits que indican de donde viene el resultado que es calculado en el procesador.
    output logic escribirEnMemoria; // Bandera que indica si se debe escribir en la memoria RAM.
    output logic origenPC; // Bandera que indica de donde viene el Program Counter (contador de programa) actual del procesador.
    output logic origenOperandosALU; // Bandera que indica de donde vienen los operandos que son operados por la ALU.
    output logic escribirEnRegistros; // Bandera que indica si se debe escribir en los registros.
    output logic realizarSaltoJump; // Bandera que indica si se debe realizar un salto de tipo jump en las instrucciones.
    output logic [1:0] origenImmediate; // Bits que indican de donde viene el immediate que se utiliza en las instrucciones.
    output logic [2:0] seleccionOperacionALU; // Bits que indican la operación que se realizará en la ALU.

    logic [1:0] operacionRealizarALU; // Bits que indican que operación se debe realizar en la ALU.
    logic cambiarBranch; // Bandera que indica si se debe cambiar de branch dentro de las instrucciones del procesador.

    moduloDecodificadorPrincipal moduloDecodificadorPrincipalInstancia
    (
        codigoOperacion, 
        origenResultado, 
        escribirEnMemoria,
        cambiarBranch,
        origenOperandosALU, 
        escribirEnRegistros, 
        realizarSaltoJump, 
        origenImmediate,
        operacionRealizarALU
    );

    moduloDecodificadorALU moduloDecodificadorALUInstancia
    (
        codigoOperacion[5], // Bit 5 del código de operación: opb5 (ayuda a seleccionar el tipo de operación?)
        funct3, 
        funct30, 
        operacionRealizarALU, 
        seleccionOperacionALU
    );

    assign origenPC = cambiarBranch & banderaZero | realizarSaltoJump;

endmodule