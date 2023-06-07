module moduloDecodificador(codigoOperacion, origenResultado, escribirEnMemoria, cambiarBranch, origenOperandosALU, escribirEnRegistros, realizarSaltoJump, origenImmediate, seleccionOperacionALU);
    
    input logic [6:0] codigoOperacion;
    output logic [1:0] origenResultado;
    output logic escribirEnMemoria;
    output logic cambiarBranch;
    output logic origenOperandosALU;
    output logic escribirEnRegistros; 
    output logic realizarSaltoJump;
    output logic [1:0] origenImmediate;
    output logic [1:0] seleccionOperacionALU;

    logic [10:0] controlesProcesador; // Controles del procesador. Contienen todas las instrucciones indicadas.
    assign 
    {
        escribirEnRegistros,
        origenImmediate,
        origenOperandosALU,
        escribirEnMemoria,
        origenResultado,
        cambiarBranch,
        seleccionOperacionALU,
        realizarSaltoJump
    } = controls;

    always_comb begin
        case(codigoOperacion)
            7'b0000011: controlesProcesador = 11'b1_00_1_0_01_0_00_0; // Load word (lw).
            7'b0100011: controlesProcesador = 11'b0_01_1_1_00_0_00_0; // Save word (sw).
            7'b0110011: controlesProcesador = 11'b1_xx_0_0_00_0_10_0; // Instrucción de tipo R.
            7'b1100011: controlesProcesador = 11'b0_10_0_0_00_1_01_0; // Branch equal (beq).
            7'b0010011: controlesProcesador = 11'b1_00_1_0_00_0_10_0; // Instrucción de tipo I.
            7'b1101111: controlesProcesador = 11'b1_11_0_0_10_0_00_1; // Jump and load (jal).
            default: controlesProcesador = 11'bx_xx_x_x_xx_x_xx_x; // Instrucción desconocida.
        endcase
    end
    
endmodule