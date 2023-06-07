module moduloReceptorUART #(parameter CICLOS_DE_RELOJ_POR_BIT = 10417, parameter CANTIDAD_BITS_TRANSMISION = 8) (reloj, reinicio, lineaRecepcionBits, recepcionFinalizada, bitsRecibidos);
    input logic reloj;
    input logic reinicio;
    input logic lineaRecepcionBits;

    output reg recepcionFinalizada;
    output reg [CANTIDAD_BITS_TRANSMISION-1+2:0] bitsRecibidos;

    parameter ESTADO_ESPERA = 3'b000;
    parameter ESTADO_RECIBIENDO_BIT_DE_INICIO = 3'b001;
    parameter ESTADO_RECIBIENDO_INFORMACION = 3'b010;
    parameter ESTADO_RECIBIENDO_BIT_DE_FINALIZACION = 3'b011;
    parameter ESTADO_LIMPIEZA = 3'b100;
  
    reg [2:0] registroEstadoActual;
    reg [CICLOS_DE_RELOJ_POR_BIT-1:0] registroContadorCiclosReloj;
    reg [CANTIDAD_BITS_TRANSMISION-1:0] registroIndiceBitRecibir;
    reg [CANTIDAD_BITS_TRANSMISION-1:0] registroBitsRecibidos;
    reg registroRecepcionFinalizada;
    
    always @(posedge reloj or posedge reinicio) begin
        if (reinicio == 1'b1) begin
            registroEstadoActual <= ESTADO_ESPERA;
            registroContadorCiclosReloj <= 0;
            registroIndiceBitRecibir <= 0;
            registroBitsRecibidos <= 0;
            registroRecepcionFinalizada <= 1'b0;
        end
        else begin
            case (registroEstadoActual)
                ESTADO_ESPERA: 
                    begin
                        registroRecepcionFinalizada <= 1'b0;
                        registroContadorCiclosReloj <= 0;
                        registroIndiceBitRecibir <= 0;
                        if (lineaRecepcionBits == 1'b0)  registroEstadoActual <= ESTADO_RECIBIENDO_BIT_DE_INICIO;
                        else registroEstadoActual <= ESTADO_ESPERA;
                    end
    
                ESTADO_RECIBIENDO_BIT_DE_INICIO:
                    begin
                        if (registroContadorCiclosReloj == (CICLOS_DE_RELOJ_POR_BIT-1)/2) begin
                            if (lineaRecepcionBits == 1'b0) begin
                                registroContadorCiclosReloj <= 0;
                                registroEstadoActual <= ESTADO_RECIBIENDO_INFORMACION;
                            end
                            else registroEstadoActual <= ESTADO_ESPERA;
                        end
                        else begin
                            registroContadorCiclosReloj <= registroContadorCiclosReloj + 1;
                            registroEstadoActual     <= ESTADO_RECIBIENDO_BIT_DE_INICIO;
                        end
                    end
            
                ESTADO_RECIBIENDO_INFORMACION:
                    begin
                        if (registroContadorCiclosReloj < CICLOS_DE_RELOJ_POR_BIT-1) begin
                            registroContadorCiclosReloj <= registroContadorCiclosReloj + 1;
                            registroEstadoActual <= ESTADO_RECIBIENDO_INFORMACION;
                        end
                        else begin
                            registroContadorCiclosReloj <= 0;
                            registroBitsRecibidos[registroIndiceBitRecibir] <= lineaRecepcionBits;
                            if (registroIndiceBitRecibir < CANTIDAD_BITS_TRANSMISION) begin
                                registroIndiceBitRecibir <= registroIndiceBitRecibir + 1;
                                registroEstadoActual   <= ESTADO_RECIBIENDO_INFORMACION;
                            end
                            else begin
                                registroIndiceBitRecibir <= 0;
                                registroEstadoActual   <= ESTADO_RECIBIENDO_BIT_DE_FINALIZACION;
                            end
                        end
                    end
    
                ESTADO_RECIBIENDO_BIT_DE_FINALIZACION :
                    begin
                        if (registroContadorCiclosReloj < CICLOS_DE_RELOJ_POR_BIT-1) begin
                            registroContadorCiclosReloj <= registroContadorCiclosReloj + 1;
                            registroEstadoActual <= ESTADO_RECIBIENDO_BIT_DE_FINALIZACION;
                        end
                        else begin
                            registroRecepcionFinalizada <= 1'b1;
                            registroContadorCiclosReloj <= 0;
                            registroEstadoActual <= ESTADO_LIMPIEZA;
                        end
                    end
                ESTADO_LIMPIEZA:
                    begin
                        registroEstadoActual <= ESTADO_ESPERA;
                        registroRecepcionFinalizada <= 1'b0;
                    end
                default:
                    registroEstadoActual <= ESTADO_ESPERA;
            endcase
        end
    end    

    assign recepcionFinalizada = registroRecepcionFinalizada;
    assign bitsRecibidos = registroBitsRecibidos;

endmodule