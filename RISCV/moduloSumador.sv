module moduloSumador(operandoA, operandoB, resultado);
    input [31:0] operandoA;
    input [31:0] operandoB;
    output [31:0] resultado;
    
    assign resultado = operandoA + operandoB;
endmodule