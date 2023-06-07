module moduloDecodificadorALU(opb5, funct3, funct30, operacionRealizarALU, seleccionOperacionALU);
    input logic opb5;
    input logic [2:0] funct3;
    input logic funct30;
    input logic [1:0] operacionRealizarALU;
    output logic [2:0] seleccionOperacionALU;

    logic tipoDeResta; // Bandera que indica que tipo de resta se debe realizar.
    assign tipoDeResta = funct30 & opb5;
    
    always_comb begin
        case(operacionRealizarALU)
            2'b00: seleccionOperacionALU = 3'b000; // Se debe realizar una suma (add).
            2'b01: seleccionOperacionALU = 3'b001; // Se debe realizar una resta (sub).
            default: 
                case(funct3)
                    3'b000: 
                        if (tipoDeResta) seleccionOperacionALU = 3'b001; // Se debe realizar una resta (sub).
                        else seleccionOperacionALU = 3'b000; // Se debe realizar una suma (add, addi).
                    3'b010: seleccionOperacionALU = 3'b101; // Se debe realizar una comparación menor que (slt, slti).
                    3'b110: seleccionOperacionALU = 3'b011; // Se debe realizar un OR (or, ori).
                    3'b111: seleccionOperacionALU = 3'b010; // Se debe realizar un AND (and, andi).
                    default: seleccionOperacionALU = 3'bxxx; // Operación desconocida.
                endcase
        endcase
    end

endmodule