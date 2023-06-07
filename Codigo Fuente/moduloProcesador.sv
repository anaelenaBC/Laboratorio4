module moduloProcesador (reloj, reinicio, identificadorFPGA, recepcionFinalizadaA, recepcionFinalizadaB, recepcionFinalizadaC, datoRecibido, iniciarTransmisionA, iniciarTransmisionB, iniciarTransmisionC, datoConsumido, cantidadContadorPaquetes, cantidadContadorPaquetesProcesados);
    input logic reloj;
    input logic reinicio;

    input logic [3:0] identificadorFPGA;
    input logic recepcionFinalizadaA;
    input logic recepcionFinalizadaB;
    input logic recepcionFinalizadaC;
    input logic [7:0] datoRecibido;

    output logic iniciarTransmisionA;
    output logic iniciarTransmisionB;
    output logic iniciarTransmisionC;
    
    output reg [3:0] datoConsumido;
    output reg [3:0] cantidadContadorPaquetes;
    output reg [3:0] cantidadContadorPaquetesProcesados;

    reg [3:0] registroCantidadContadorPaquetesProcesados;
    reg [3:0] registroCantidadContadorPaquetes;
    reg [3:0] registroDatoConsumido;

    always @(posedge reloj) begin
        if (reinicio == 1'b1) begin
            iniciarTransmisionA <= 1'b0;
            iniciarTransmisionB <= 1'b0;
            iniciarTransmisionC <= 1'b0;
            registroCantidadContadorPaquetes <= 1'b0;
            registroCantidadContadorPaquetesProcesados <= 1'b0;
            registroDatoConsumido <= 1'b0;
        end
        else begin
            if (recepcionFinalizadaA == 1'b1) begin
                registroCantidadContadorPaquetesProcesados <= registroCantidadContadorPaquetesProcesados + 1'b1;
                if (datoRecibido[7:4] == identificadorFPGA) begin
                    registroCantidadContadorPaquetes <= registroCantidadContadorPaquetes + 1'b1;
                    registroDatoConsumido <= datoRecibido[3:0];
                end
                else begin
                    iniciarTransmisionA <= 1'b0;
                    iniciarTransmisionB <= 1'b1;
                    iniciarTransmisionC <= 1'b1;
                end
            end

            else if (recepcionFinalizadaB == 1'b1) begin
                registroCantidadContadorPaquetesProcesados <= registroCantidadContadorPaquetesProcesados + 1'b1;
                if (datoRecibido[7:4] == identificadorFPGA) begin
                    registroCantidadContadorPaquetes <= registroCantidadContadorPaquetes + 1'b1;
                    registroDatoConsumido <= datoRecibido[3:0];
                end
                else begin
                    iniciarTransmisionA <= 1'b1;
                    iniciarTransmisionB <= 1'b0;
                    iniciarTransmisionC <= 1'b1;
                end
            end

            else if (recepcionFinalizadaC == 1'b1) begin
                registroCantidadContadorPaquetesProcesados <= registroCantidadContadorPaquetesProcesados + 1'b1;
                if (datoRecibido[7:4] == identificadorFPGA) begin
                    registroCantidadContadorPaquetes <= registroCantidadContadorPaquetes + 1'b1;
                    registroDatoConsumido <= datoRecibido[3:0];
                end
                else begin
                    iniciarTransmisionA <= 1'b1;
                    iniciarTransmisionB <= 1'b1;
                    iniciarTransmisionC <= 1'b0;
                end
            end
        end
    end

    assign datoConsumido = registroDatoConsumido;
    assign cantidadContadorPaquetes = registroCantidadContadorPaquetes;
    assign cantidadContadorPaquetesProcesados = registroCantidadContadorPaquetesProcesados;

endmodule 