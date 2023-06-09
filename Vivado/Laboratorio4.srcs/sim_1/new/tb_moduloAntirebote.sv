`timescale 1ns / 1ps

module tb_moduloAntirebote;

    parameter CLK_PERIOD = 10;
    
    reg reloj;
    reg reinicio;
    reg entradaBoton;
    wire salidaBoton;
    
    moduloAntirebote moduloAntireboteInstancia (
        .reloj(reloj),
        .reinicio(reinicio),
        .entradaBoton(entradaBoton),
        .salidaBoton(salidaBoton)
    );
    
    always #((CLK_PERIOD/2)) reloj = ~reloj;
    
    initial begin
        reinicio = 0;
        entradaBoton = 0;
        
        #20;
        
        entradaBoton = 1;
        #30;
        entradaBoton = 0;
        #10;
        
        entradaBoton = 1;
        #20;
        entradaBoton = 0;
        #40;
        entradaBoton = 1;
        #30;
        entradaBoton = 0;
        #10;
        
        entradaBoton = 1;
        #10;
        reinicio = 1;
        entradaBoton = 0;
        #10;
        reinicio = 0;
        #30;
        entradaBoton = 1;
        #30;
        entradaBoton = 0;
        #10;
        
        $finish;
    end
    
    always @(posedge reloj) begin
        $display("Tiempo: %t, EntradaBoton: %b, SalidaBoton: %b", $time, entradaBoton, salidaBoton);
    end

endmodule
