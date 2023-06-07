module moduloAntirebote (reloj, reinicio, entradaBoton, salidaBoton);
    input logic reloj;
    input logic reinicio;
    input logic entradaBoton;
    output logic salidaBoton;

    parameter cantidadCiclosRelojNecesarios = 30; 
    reg [cantidadCiclosRelojNecesarios-1:0] registroCantidadCiclosReloj;

    always @(posedge entradaBoton) begin
        registroCantidadCiclosReloj <= registroCantidadCiclosReloj + 1;
    end

    always @(posedge reloj) begin
        if (reinicio == 1'b1) begin
            registroCantidadCiclosReloj <= 0;
            salidaBoton <= 0;
        end
        else if (registroCantidadCiclosReloj == cantidadCiclosRelojNecesarios - 1) begin
            salidaBoton <= entradaBoton;
            registroCantidadCiclosReloj <= 0;
        end
    end
    
endmodule