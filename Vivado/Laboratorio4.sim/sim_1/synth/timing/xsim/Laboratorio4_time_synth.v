// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Jun  9 05:39:55 2023
// Host        : DESKTOP-K4MR4E5 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/aebol/OneDrive/Desktop/Laboratorio4/Vivado/Laboratorio4.sim/sim_1/synth/timing/xsim/Laboratorio4_time_synth.v
// Design      : Laboratorio4
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module Laboratorio4
   (reloj,
    reinicio,
    identificadorFPGA,
    identificadorDestinoDatoEnviar,
    datoEnviar,
    botonEnviar,
    LEDSContadorPaquetes,
    contadorPaquetes,
    displaySieteSegmentosDatoConsumido,
    lineaTransmisionA,
    lineaRecepcionA,
    lineaTransmisionB,
    lineaRecepcionB,
    lineaTransmisionC,
    lineaRecepcionC);
  input reloj;
  input reinicio;
  input [3:0]identificadorFPGA;
  input [3:0]identificadorDestinoDatoEnviar;
  input [3:0]datoEnviar;
  input botonEnviar;
  output [3:0]LEDSContadorPaquetes;
  output [3:0]contadorPaquetes;
  output [6:0]displaySieteSegmentosDatoConsumido;
  output lineaTransmisionA;
  input lineaRecepcionA;
  output lineaTransmisionB;
  input lineaRecepcionB;
  output lineaTransmisionC;
  input lineaRecepcionC;

  wire [3:0]LEDSContadorPaquetes;
  wire [3:0]LEDSContadorPaquetes_OBUF;
  wire [3:0]contadorPaquetes;
  wire [3:0]contadorPaquetes_OBUF;
  wire [3:0]datoEnviar;
  wire [3:0]datoEnviar_IBUF;
  wire [6:0]displaySieteSegmentosDatoConsumido;
  wire [6:0]displaySieteSegmentosDatoConsumido_OBUF;
  wire [3:0]identificadorDestinoDatoEnviar;
  wire [3:0]identificadorDestinoDatoEnviar_IBUF;
  wire [3:0]identificadorFPGA;
  wire [3:0]identificadorFPGA_IBUF;
  wire lineaRecepcionA;
  wire lineaRecepcionA_IBUF;
  wire lineaRecepcionB;
  wire lineaRecepcionB_IBUF;
  wire lineaRecepcionC;
  wire lineaRecepcionC_IBUF;
  wire lineaTransmisionA;
  wire lineaTransmisionA_OBUF;
  wire lineaTransmisionB;
  wire lineaTransmisionB_OBUF;
  wire lineaTransmisionC;
  wire lineaTransmisionC_OBUF;
  wire moduloProcesadorInstancia_n_11;
  wire moduloProcesadorInstancia_n_12;
  wire moduloProcesadorInstancia_n_13;
  wire moduloProcesadorInstancia_n_14;
  wire moduloUARTA_n_1;
  wire moduloUARTA_n_3;
  wire moduloUARTA_n_4;
  wire moduloUARTA_n_5;
  wire moduloUARTA_n_6;
  wire moduloUARTA_n_7;
  wire moduloUARTC_n_2;
  wire moduloUARTC_n_8;
  wire moduloUARTC_n_9;
  wire registroDatoConsumido;
  wire reinicio;
  wire reinicio_IBUF;
  wire reloj;
  wire reloj_IBUF;
  wire reloj_IBUF_BUFG;
  wire [7:4]wireBitsRecibidosB;
  wire [7:4]wireBitsRecibidosC;
  wire wireIniciarTransmisionA;
  wire wireIniciarTransmisionB;
  wire wireIniciarTransmisionC;
  wire wireRecepcionAFinalizada;
  wire wireRecepcionBFinalizada;
  wire wireRecepcionCFinalizada;

initial begin
 $sdf_annotate("Laboratorio4_time_synth.sdf",,,,"tool_control");
end
  OBUF \LEDSContadorPaquetes_OBUF[0]_inst 
       (.I(LEDSContadorPaquetes_OBUF[0]),
        .O(LEDSContadorPaquetes[0]));
  OBUF \LEDSContadorPaquetes_OBUF[1]_inst 
       (.I(LEDSContadorPaquetes_OBUF[1]),
        .O(LEDSContadorPaquetes[1]));
  OBUF \LEDSContadorPaquetes_OBUF[2]_inst 
       (.I(LEDSContadorPaquetes_OBUF[2]),
        .O(LEDSContadorPaquetes[2]));
  OBUF \LEDSContadorPaquetes_OBUF[3]_inst 
       (.I(LEDSContadorPaquetes_OBUF[3]),
        .O(LEDSContadorPaquetes[3]));
  OBUF \contadorPaquetes_OBUF[0]_inst 
       (.I(contadorPaquetes_OBUF[0]),
        .O(contadorPaquetes[0]));
  OBUF \contadorPaquetes_OBUF[1]_inst 
       (.I(contadorPaquetes_OBUF[1]),
        .O(contadorPaquetes[1]));
  OBUF \contadorPaquetes_OBUF[2]_inst 
       (.I(contadorPaquetes_OBUF[2]),
        .O(contadorPaquetes[2]));
  OBUF \contadorPaquetes_OBUF[3]_inst 
       (.I(contadorPaquetes_OBUF[3]),
        .O(contadorPaquetes[3]));
  IBUF \datoEnviar_IBUF[0]_inst 
       (.I(datoEnviar[0]),
        .O(datoEnviar_IBUF[0]));
  IBUF \datoEnviar_IBUF[1]_inst 
       (.I(datoEnviar[1]),
        .O(datoEnviar_IBUF[1]));
  IBUF \datoEnviar_IBUF[2]_inst 
       (.I(datoEnviar[2]),
        .O(datoEnviar_IBUF[2]));
  IBUF \datoEnviar_IBUF[3]_inst 
       (.I(datoEnviar[3]),
        .O(datoEnviar_IBUF[3]));
  OBUF \displaySieteSegmentosDatoConsumido_OBUF[0]_inst 
       (.I(displaySieteSegmentosDatoConsumido_OBUF[0]),
        .O(displaySieteSegmentosDatoConsumido[0]));
  OBUF \displaySieteSegmentosDatoConsumido_OBUF[1]_inst 
       (.I(displaySieteSegmentosDatoConsumido_OBUF[1]),
        .O(displaySieteSegmentosDatoConsumido[1]));
  OBUF \displaySieteSegmentosDatoConsumido_OBUF[2]_inst 
       (.I(displaySieteSegmentosDatoConsumido_OBUF[2]),
        .O(displaySieteSegmentosDatoConsumido[2]));
  OBUF \displaySieteSegmentosDatoConsumido_OBUF[3]_inst 
       (.I(displaySieteSegmentosDatoConsumido_OBUF[3]),
        .O(displaySieteSegmentosDatoConsumido[3]));
  OBUF \displaySieteSegmentosDatoConsumido_OBUF[4]_inst 
       (.I(displaySieteSegmentosDatoConsumido_OBUF[4]),
        .O(displaySieteSegmentosDatoConsumido[4]));
  OBUF \displaySieteSegmentosDatoConsumido_OBUF[5]_inst 
       (.I(displaySieteSegmentosDatoConsumido_OBUF[5]),
        .O(displaySieteSegmentosDatoConsumido[5]));
  OBUF \displaySieteSegmentosDatoConsumido_OBUF[6]_inst 
       (.I(displaySieteSegmentosDatoConsumido_OBUF[6]),
        .O(displaySieteSegmentosDatoConsumido[6]));
  IBUF \identificadorDestinoDatoEnviar_IBUF[0]_inst 
       (.I(identificadorDestinoDatoEnviar[0]),
        .O(identificadorDestinoDatoEnviar_IBUF[0]));
  IBUF \identificadorDestinoDatoEnviar_IBUF[1]_inst 
       (.I(identificadorDestinoDatoEnviar[1]),
        .O(identificadorDestinoDatoEnviar_IBUF[1]));
  IBUF \identificadorDestinoDatoEnviar_IBUF[2]_inst 
       (.I(identificadorDestinoDatoEnviar[2]),
        .O(identificadorDestinoDatoEnviar_IBUF[2]));
  IBUF \identificadorDestinoDatoEnviar_IBUF[3]_inst 
       (.I(identificadorDestinoDatoEnviar[3]),
        .O(identificadorDestinoDatoEnviar_IBUF[3]));
  IBUF \identificadorFPGA_IBUF[0]_inst 
       (.I(identificadorFPGA[0]),
        .O(identificadorFPGA_IBUF[0]));
  IBUF \identificadorFPGA_IBUF[1]_inst 
       (.I(identificadorFPGA[1]),
        .O(identificadorFPGA_IBUF[1]));
  IBUF \identificadorFPGA_IBUF[2]_inst 
       (.I(identificadorFPGA[2]),
        .O(identificadorFPGA_IBUF[2]));
  IBUF \identificadorFPGA_IBUF[3]_inst 
       (.I(identificadorFPGA[3]),
        .O(identificadorFPGA_IBUF[3]));
  IBUF lineaRecepcionA_IBUF_inst
       (.I(lineaRecepcionA),
        .O(lineaRecepcionA_IBUF));
  IBUF lineaRecepcionB_IBUF_inst
       (.I(lineaRecepcionB),
        .O(lineaRecepcionB_IBUF));
  IBUF lineaRecepcionC_IBUF_inst
       (.I(lineaRecepcionC),
        .O(lineaRecepcionC_IBUF));
  OBUF lineaTransmisionA_OBUF_inst
       (.I(lineaTransmisionA_OBUF),
        .O(lineaTransmisionA));
  OBUF lineaTransmisionB_OBUF_inst
       (.I(lineaTransmisionB_OBUF),
        .O(lineaTransmisionB));
  OBUF lineaTransmisionC_OBUF_inst
       (.I(lineaTransmisionC_OBUF),
        .O(lineaTransmisionC));
  moduloHexadecimalDisplaySieteSegmentos moduloHexadecimalDisplaySieteSegmentosDatoConsumido
       (.CLK(reloj_IBUF_BUFG),
        .Q({moduloProcesadorInstancia_n_11,moduloProcesadorInstancia_n_12,moduloProcesadorInstancia_n_13,moduloProcesadorInstancia_n_14}),
        .reinicio_IBUF(reinicio_IBUF),
        .\salidaDisplaySieteSegmentos_reg[6]_0 (displaySieteSegmentosDatoConsumido_OBUF));
  moduloProcesador moduloProcesadorInstancia
       (.CLK(reloj_IBUF_BUFG),
        .D({moduloUARTA_n_4,moduloUARTA_n_5,moduloUARTA_n_6,moduloUARTA_n_7}),
        .E(registroDatoConsumido),
        .Q(contadorPaquetes_OBUF),
        .iniciarTransmisionA_reg_0(moduloUARTC_n_2),
        .iniciarTransmisionB_reg_0(moduloUARTC_n_8),
        .iniciarTransmisionC_reg_0(moduloUARTC_n_9),
        .\registroCantidadContadorPaquetesProcesados_reg[3]_0 (LEDSContadorPaquetes_OBUF),
        .\registroCantidadContadorPaquetesProcesados_reg[3]_1 (moduloUARTA_n_3),
        .\registroDatoConsumido_reg[3]_0 ({moduloProcesadorInstancia_n_11,moduloProcesadorInstancia_n_12,moduloProcesadorInstancia_n_13,moduloProcesadorInstancia_n_14}),
        .reinicio_IBUF(reinicio_IBUF),
        .wireIniciarTransmisionA(wireIniciarTransmisionA),
        .wireIniciarTransmisionB(wireIniciarTransmisionB),
        .wireIniciarTransmisionC(wireIniciarTransmisionC));
  moduloUART moduloUARTA
       (.CLK(reloj_IBUF_BUFG),
        .D({moduloUARTA_n_4,moduloUARTA_n_5,moduloUARTA_n_6,moduloUARTA_n_7}),
        .Q(wireBitsRecibidosB),
        .lineaRecepcionA_IBUF(lineaRecepcionA_IBUF),
        .lineaTransmisionA_OBUF(lineaTransmisionA_OBUF),
        .\registroBitsTransmitir_reg[7] ({identificadorDestinoDatoEnviar_IBUF,datoEnviar_IBUF}),
        .\registroDatoConsumido_reg[3] (wireBitsRecibidosC),
        .registroRecepcionFinalizada_reg(moduloUARTA_n_3),
        .reinicio(moduloUARTA_n_1),
        .reinicio_IBUF(reinicio_IBUF),
        .wireIniciarTransmisionA(wireIniciarTransmisionA),
        .wireRecepcionAFinalizada(wireRecepcionAFinalizada),
        .wireRecepcionBFinalizada(wireRecepcionBFinalizada),
        .wireRecepcionCFinalizada(wireRecepcionCFinalizada));
  moduloUART_0 moduloUARTB
       (.CLK(reloj_IBUF_BUFG),
        .D({identificadorDestinoDatoEnviar_IBUF,datoEnviar_IBUF}),
        .Q(wireBitsRecibidosB),
        .lineaRecepcionB_IBUF(lineaRecepcionB_IBUF),
        .lineaTransmisionB_OBUF(lineaTransmisionB_OBUF),
        .lineaTransmisionBits_reg(moduloUARTA_n_1),
        .reinicio_IBUF(reinicio_IBUF),
        .wireIniciarTransmisionB(wireIniciarTransmisionB),
        .wireRecepcionBFinalizada(wireRecepcionBFinalizada));
  moduloUART_1 moduloUARTC
       (.CLK(reloj_IBUF_BUFG),
        .D({identificadorDestinoDatoEnviar_IBUF,datoEnviar_IBUF}),
        .E(registroDatoConsumido),
        .Q(wireBitsRecibidosC),
        .identificadorFPGA_IBUF(identificadorFPGA_IBUF),
        .iniciarTransmisionA_reg(moduloUARTC_n_2),
        .lineaRecepcionC_IBUF(lineaRecepcionC_IBUF),
        .lineaTransmisionBits_reg(moduloUARTA_n_1),
        .lineaTransmisionC_OBUF(lineaTransmisionC_OBUF),
        .registroRecepcionFinalizada_reg(moduloUARTC_n_8),
        .registroRecepcionFinalizada_reg_0(moduloUARTC_n_9),
        .reinicio_IBUF(reinicio_IBUF),
        .wireIniciarTransmisionA(wireIniciarTransmisionA),
        .wireIniciarTransmisionB(wireIniciarTransmisionB),
        .wireIniciarTransmisionC(wireIniciarTransmisionC),
        .wireRecepcionAFinalizada(wireRecepcionAFinalizada),
        .wireRecepcionBFinalizada(wireRecepcionBFinalizada),
        .wireRecepcionCFinalizada(wireRecepcionCFinalizada));
  IBUF reinicio_IBUF_inst
       (.I(reinicio),
        .O(reinicio_IBUF));
  BUFG reloj_IBUF_BUFG_inst
       (.I(reloj_IBUF),
        .O(reloj_IBUF_BUFG));
  IBUF reloj_IBUF_inst
       (.I(reloj),
        .O(reloj_IBUF));
endmodule

module moduloHexadecimalDisplaySieteSegmentos
   (\salidaDisplaySieteSegmentos_reg[6]_0 ,
    Q,
    reinicio_IBUF,
    CLK);
  output [6:0]\salidaDisplaySieteSegmentos_reg[6]_0 ;
  input [3:0]Q;
  input reinicio_IBUF;
  input CLK;

  wire CLK;
  wire [3:0]Q;
  wire reinicio_IBUF;
  wire [6:0]salidaDisplaySieteSegmentos;
  wire [6:0]\salidaDisplaySieteSegmentos_reg[6]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4025)) 
    \salidaDisplaySieteSegmentos[0]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(salidaDisplaySieteSegmentos[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h5190)) 
    \salidaDisplaySieteSegmentos[1]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(salidaDisplaySieteSegmentos[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h5710)) 
    \salidaDisplaySieteSegmentos[2]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(salidaDisplaySieteSegmentos[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hC214)) 
    \salidaDisplaySieteSegmentos[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(salidaDisplaySieteSegmentos[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \salidaDisplaySieteSegmentos[4]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(salidaDisplaySieteSegmentos[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hAC48)) 
    \salidaDisplaySieteSegmentos[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(salidaDisplaySieteSegmentos[5]));
  LUT4 #(
    .INIT(16'h2094)) 
    \salidaDisplaySieteSegmentos[6]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(salidaDisplaySieteSegmentos[6]));
  FDSE #(
    .INIT(1'b1)) 
    \salidaDisplaySieteSegmentos_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(salidaDisplaySieteSegmentos[0]),
        .Q(\salidaDisplaySieteSegmentos_reg[6]_0 [0]),
        .S(reinicio_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \salidaDisplaySieteSegmentos_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(salidaDisplaySieteSegmentos[1]),
        .Q(\salidaDisplaySieteSegmentos_reg[6]_0 [1]),
        .S(reinicio_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \salidaDisplaySieteSegmentos_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(salidaDisplaySieteSegmentos[2]),
        .Q(\salidaDisplaySieteSegmentos_reg[6]_0 [2]),
        .S(reinicio_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \salidaDisplaySieteSegmentos_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(salidaDisplaySieteSegmentos[3]),
        .Q(\salidaDisplaySieteSegmentos_reg[6]_0 [3]),
        .S(reinicio_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \salidaDisplaySieteSegmentos_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(salidaDisplaySieteSegmentos[4]),
        .Q(\salidaDisplaySieteSegmentos_reg[6]_0 [4]),
        .S(reinicio_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \salidaDisplaySieteSegmentos_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(salidaDisplaySieteSegmentos[5]),
        .Q(\salidaDisplaySieteSegmentos_reg[6]_0 [5]),
        .S(reinicio_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \salidaDisplaySieteSegmentos_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(salidaDisplaySieteSegmentos[6]),
        .Q(\salidaDisplaySieteSegmentos_reg[6]_0 [6]),
        .S(reinicio_IBUF));
endmodule

module moduloProcesador
   (wireIniciarTransmisionA,
    wireIniciarTransmisionB,
    wireIniciarTransmisionC,
    Q,
    \registroCantidadContadorPaquetesProcesados_reg[3]_0 ,
    \registroDatoConsumido_reg[3]_0 ,
    iniciarTransmisionA_reg_0,
    CLK,
    iniciarTransmisionB_reg_0,
    iniciarTransmisionC_reg_0,
    reinicio_IBUF,
    E,
    D,
    \registroCantidadContadorPaquetesProcesados_reg[3]_1 );
  output wireIniciarTransmisionA;
  output wireIniciarTransmisionB;
  output wireIniciarTransmisionC;
  output [3:0]Q;
  output [3:0]\registroCantidadContadorPaquetesProcesados_reg[3]_0 ;
  output [3:0]\registroDatoConsumido_reg[3]_0 ;
  input iniciarTransmisionA_reg_0;
  input CLK;
  input iniciarTransmisionB_reg_0;
  input iniciarTransmisionC_reg_0;
  input reinicio_IBUF;
  input [0:0]E;
  input [3:0]D;
  input [0:0]\registroCantidadContadorPaquetesProcesados_reg[3]_1 ;

  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire iniciarTransmisionA_reg_0;
  wire iniciarTransmisionB_reg_0;
  wire iniciarTransmisionC_reg_0;
  wire [3:0]p_0_in;
  wire [3:0]p_0_in__0;
  wire [3:0]\registroCantidadContadorPaquetesProcesados_reg[3]_0 ;
  wire [0:0]\registroCantidadContadorPaquetesProcesados_reg[3]_1 ;
  wire [3:0]\registroDatoConsumido_reg[3]_0 ;
  wire reinicio_IBUF;
  wire wireIniciarTransmisionA;
  wire wireIniciarTransmisionB;
  wire wireIniciarTransmisionC;

  FDRE #(
    .INIT(1'b0)) 
    iniciarTransmisionA_reg
       (.C(CLK),
        .CE(1'b1),
        .D(iniciarTransmisionA_reg_0),
        .Q(wireIniciarTransmisionA),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    iniciarTransmisionB_reg
       (.C(CLK),
        .CE(1'b1),
        .D(iniciarTransmisionB_reg_0),
        .Q(wireIniciarTransmisionB),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    iniciarTransmisionC_reg
       (.C(CLK),
        .CE(1'b1),
        .D(iniciarTransmisionC_reg_0),
        .Q(wireIniciarTransmisionC),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \registroCantidadContadorPaquetesProcesados[0]_i_1 
       (.I0(\registroCantidadContadorPaquetesProcesados_reg[3]_0 [0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \registroCantidadContadorPaquetesProcesados[1]_i_1 
       (.I0(\registroCantidadContadorPaquetesProcesados_reg[3]_0 [0]),
        .I1(\registroCantidadContadorPaquetesProcesados_reg[3]_0 [1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \registroCantidadContadorPaquetesProcesados[2]_i_1 
       (.I0(\registroCantidadContadorPaquetesProcesados_reg[3]_0 [0]),
        .I1(\registroCantidadContadorPaquetesProcesados_reg[3]_0 [1]),
        .I2(\registroCantidadContadorPaquetesProcesados_reg[3]_0 [2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \registroCantidadContadorPaquetesProcesados[3]_i_2 
       (.I0(\registroCantidadContadorPaquetesProcesados_reg[3]_0 [1]),
        .I1(\registroCantidadContadorPaquetesProcesados_reg[3]_0 [0]),
        .I2(\registroCantidadContadorPaquetesProcesados_reg[3]_0 [2]),
        .I3(\registroCantidadContadorPaquetesProcesados_reg[3]_0 [3]),
        .O(p_0_in__0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \registroCantidadContadorPaquetesProcesados_reg[0] 
       (.C(CLK),
        .CE(\registroCantidadContadorPaquetesProcesados_reg[3]_1 ),
        .D(p_0_in__0[0]),
        .Q(\registroCantidadContadorPaquetesProcesados_reg[3]_0 [0]),
        .R(reinicio_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registroCantidadContadorPaquetesProcesados_reg[1] 
       (.C(CLK),
        .CE(\registroCantidadContadorPaquetesProcesados_reg[3]_1 ),
        .D(p_0_in__0[1]),
        .Q(\registroCantidadContadorPaquetesProcesados_reg[3]_0 [1]),
        .R(reinicio_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registroCantidadContadorPaquetesProcesados_reg[2] 
       (.C(CLK),
        .CE(\registroCantidadContadorPaquetesProcesados_reg[3]_1 ),
        .D(p_0_in__0[2]),
        .Q(\registroCantidadContadorPaquetesProcesados_reg[3]_0 [2]),
        .R(reinicio_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registroCantidadContadorPaquetesProcesados_reg[3] 
       (.C(CLK),
        .CE(\registroCantidadContadorPaquetesProcesados_reg[3]_1 ),
        .D(p_0_in__0[3]),
        .Q(\registroCantidadContadorPaquetesProcesados_reg[3]_0 [3]),
        .R(reinicio_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \registroCantidadContadorPaquetes[0]_i_1 
       (.I0(Q[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \registroCantidadContadorPaquetes[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \registroCantidadContadorPaquetes[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \registroCantidadContadorPaquetes[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \registroCantidadContadorPaquetes_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in[0]),
        .Q(Q[0]),
        .R(reinicio_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registroCantidadContadorPaquetes_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in[1]),
        .Q(Q[1]),
        .R(reinicio_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registroCantidadContadorPaquetes_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in[2]),
        .Q(Q[2]),
        .R(reinicio_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registroCantidadContadorPaquetes_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in[3]),
        .Q(Q[3]),
        .R(reinicio_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registroDatoConsumido_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(D[0]),
        .Q(\registroDatoConsumido_reg[3]_0 [0]),
        .R(reinicio_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registroDatoConsumido_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(D[1]),
        .Q(\registroDatoConsumido_reg[3]_0 [1]),
        .R(reinicio_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registroDatoConsumido_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(D[2]),
        .Q(\registroDatoConsumido_reg[3]_0 [2]),
        .R(reinicio_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registroDatoConsumido_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(D[3]),
        .Q(\registroDatoConsumido_reg[3]_0 [3]),
        .R(reinicio_IBUF));
endmodule

module moduloReceptorUART
   (registroRecepcionFinalizada_reg_0,
    iniciarTransmisionA_reg,
    E,
    Q,
    registroRecepcionFinalizada_reg_1,
    registroRecepcionFinalizada_reg_2,
    CLK,
    reinicio_IBUF,
    wireIniciarTransmisionA,
    wireRecepcionBFinalizada,
    wireRecepcionAFinalizada,
    identificadorFPGA_IBUF,
    wireIniciarTransmisionB,
    wireIniciarTransmisionC,
    lineaRecepcionC_IBUF);
  output registroRecepcionFinalizada_reg_0;
  output iniciarTransmisionA_reg;
  output [0:0]E;
  output [3:0]Q;
  output registroRecepcionFinalizada_reg_1;
  output registroRecepcionFinalizada_reg_2;
  input CLK;
  input reinicio_IBUF;
  input wireIniciarTransmisionA;
  input wireRecepcionBFinalizada;
  input wireRecepcionAFinalizada;
  input [3:0]identificadorFPGA_IBUF;
  input wireIniciarTransmisionB;
  input wireIniciarTransmisionC;
  input lineaRecepcionC_IBUF;

  wire CLK;
  wire [0:0]E;
  wire [3:0]Q;
  wire [3:0]identificadorFPGA_IBUF;
  wire iniciarTransmisionA_reg;
  wire lineaRecepcionC_IBUF;
  wire \registroBitsRecibidos[4]_i_1__1_n_0 ;
  wire \registroBitsRecibidos[5]_i_1__1_n_0 ;
  wire \registroBitsRecibidos[6]_i_1__1_n_0 ;
  wire \registroBitsRecibidos[7]_i_1__1_n_0 ;
  wire \registroBitsRecibidos[7]_i_2__1_n_0 ;
  wire registroContadorCiclosReloj0_carry__0_n_0;
  wire registroContadorCiclosReloj0_carry__0_n_1;
  wire registroContadorCiclosReloj0_carry__0_n_2;
  wire registroContadorCiclosReloj0_carry__0_n_3;
  wire registroContadorCiclosReloj0_carry__0_n_4;
  wire registroContadorCiclosReloj0_carry__0_n_5;
  wire registroContadorCiclosReloj0_carry__0_n_6;
  wire registroContadorCiclosReloj0_carry__0_n_7;
  wire registroContadorCiclosReloj0_carry__1_n_0;
  wire registroContadorCiclosReloj0_carry__1_n_1;
  wire registroContadorCiclosReloj0_carry__1_n_2;
  wire registroContadorCiclosReloj0_carry__1_n_3;
  wire registroContadorCiclosReloj0_carry__1_n_4;
  wire registroContadorCiclosReloj0_carry__1_n_5;
  wire registroContadorCiclosReloj0_carry__1_n_6;
  wire registroContadorCiclosReloj0_carry__1_n_7;
  wire registroContadorCiclosReloj0_carry__2_n_7;
  wire registroContadorCiclosReloj0_carry_n_0;
  wire registroContadorCiclosReloj0_carry_n_1;
  wire registroContadorCiclosReloj0_carry_n_2;
  wire registroContadorCiclosReloj0_carry_n_3;
  wire registroContadorCiclosReloj0_carry_n_4;
  wire registroContadorCiclosReloj0_carry_n_5;
  wire registroContadorCiclosReloj0_carry_n_6;
  wire registroContadorCiclosReloj0_carry_n_7;
  wire \registroContadorCiclosReloj[0]_i_1__4_n_0 ;
  wire \registroContadorCiclosReloj[10]_i_1__4_n_0 ;
  wire \registroContadorCiclosReloj[11]_i_1__4_n_0 ;
  wire \registroContadorCiclosReloj[12]_i_1__4_n_0 ;
  wire \registroContadorCiclosReloj[13]_i_1__4_n_0 ;
  wire \registroContadorCiclosReloj[13]_i_2__4_n_0 ;
  wire \registroContadorCiclosReloj[13]_i_3__1_n_0 ;
  wire \registroContadorCiclosReloj[13]_i_4__1_n_0 ;
  wire \registroContadorCiclosReloj[13]_i_5__1_n_0 ;
  wire \registroContadorCiclosReloj[13]_i_6__1_n_0 ;
  wire \registroContadorCiclosReloj[13]_i_7__1_n_0 ;
  wire \registroContadorCiclosReloj[1]_i_1__4_n_0 ;
  wire \registroContadorCiclosReloj[2]_i_1__4_n_0 ;
  wire \registroContadorCiclosReloj[3]_i_1__4_n_0 ;
  wire \registroContadorCiclosReloj[4]_i_1__4_n_0 ;
  wire \registroContadorCiclosReloj[5]_i_1__4_n_0 ;
  wire \registroContadorCiclosReloj[6]_i_1__4_n_0 ;
  wire \registroContadorCiclosReloj[7]_i_1__4_n_0 ;
  wire \registroContadorCiclosReloj[8]_i_1__4_n_0 ;
  wire \registroContadorCiclosReloj[9]_i_1__4_n_0 ;
  wire \registroContadorCiclosReloj_reg_n_0_[0] ;
  wire \registroContadorCiclosReloj_reg_n_0_[10] ;
  wire \registroContadorCiclosReloj_reg_n_0_[11] ;
  wire \registroContadorCiclosReloj_reg_n_0_[12] ;
  wire \registroContadorCiclosReloj_reg_n_0_[13] ;
  wire \registroContadorCiclosReloj_reg_n_0_[1] ;
  wire \registroContadorCiclosReloj_reg_n_0_[2] ;
  wire \registroContadorCiclosReloj_reg_n_0_[3] ;
  wire \registroContadorCiclosReloj_reg_n_0_[4] ;
  wire \registroContadorCiclosReloj_reg_n_0_[5] ;
  wire \registroContadorCiclosReloj_reg_n_0_[6] ;
  wire \registroContadorCiclosReloj_reg_n_0_[7] ;
  wire \registroContadorCiclosReloj_reg_n_0_[8] ;
  wire \registroContadorCiclosReloj_reg_n_0_[9] ;
  wire \registroDatoConsumido[3]_i_3_n_0 ;
  wire \registroDatoConsumido[3]_i_4_n_0 ;
  wire \registroEstadoActual[0]_i_1__4_n_0 ;
  wire \registroEstadoActual[0]_i_2__4_n_0 ;
  wire \registroEstadoActual[0]_i_3__4_n_0 ;
  wire \registroEstadoActual[1]_i_1__4_n_0 ;
  wire \registroEstadoActual[1]_i_2__1_n_0 ;
  wire \registroEstadoActual[1]_i_3__1_n_0 ;
  wire \registroEstadoActual[1]_i_4__1_n_0 ;
  wire \registroEstadoActual[2]_i_1__1_n_0 ;
  wire \registroEstadoActual[2]_i_2__1_n_0 ;
  wire \registroEstadoActual[2]_i_3__1_n_0 ;
  wire \registroEstadoActual[2]_i_4__1_n_0 ;
  wire \registroEstadoActual_reg_n_0_[0] ;
  wire \registroEstadoActual_reg_n_0_[1] ;
  wire \registroEstadoActual_reg_n_0_[2] ;
  wire \registroIndiceBitRecibir[0]_i_1__1_n_0 ;
  wire \registroIndiceBitRecibir[1]_i_1__1_n_0 ;
  wire \registroIndiceBitRecibir[2]_i_1__1_n_0 ;
  wire \registroIndiceBitRecibir[3]_i_1__1_n_0 ;
  wire \registroIndiceBitRecibir[3]_i_2__1_n_0 ;
  wire \registroIndiceBitRecibir_reg_n_0_[0] ;
  wire \registroIndiceBitRecibir_reg_n_0_[1] ;
  wire \registroIndiceBitRecibir_reg_n_0_[2] ;
  wire \registroIndiceBitRecibir_reg_n_0_[3] ;
  wire registroRecepcionFinalizada_i_1__1_n_0;
  wire registroRecepcionFinalizada_reg_0;
  wire registroRecepcionFinalizada_reg_1;
  wire registroRecepcionFinalizada_reg_2;
  wire reinicio_IBUF;
  wire wireIniciarTransmisionA;
  wire wireIniciarTransmisionB;
  wire wireIniciarTransmisionC;
  wire wireRecepcionAFinalizada;
  wire wireRecepcionBFinalizada;
  wire [3:0]NLW_registroContadorCiclosReloj0_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_registroContadorCiclosReloj0_carry__2_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h00000000AAAA00FE)) 
    iniciarTransmisionA_i_1
       (.I0(wireIniciarTransmisionA),
        .I1(wireRecepcionBFinalizada),
        .I2(registroRecepcionFinalizada_reg_0),
        .I3(wireRecepcionAFinalizada),
        .I4(\registroDatoConsumido[3]_i_3_n_0 ),
        .I5(reinicio_IBUF),
        .O(iniciarTransmisionA_reg));
  LUT6 #(
    .INIT(64'h5555445511110010)) 
    iniciarTransmisionB_i_1
       (.I0(reinicio_IBUF),
        .I1(\registroDatoConsumido[3]_i_3_n_0 ),
        .I2(registroRecepcionFinalizada_reg_0),
        .I3(wireRecepcionBFinalizada),
        .I4(wireRecepcionAFinalizada),
        .I5(wireIniciarTransmisionB),
        .O(registroRecepcionFinalizada_reg_1));
  LUT6 #(
    .INIT(64'h5555554511111100)) 
    iniciarTransmisionC_i_1
       (.I0(reinicio_IBUF),
        .I1(\registroDatoConsumido[3]_i_3_n_0 ),
        .I2(registroRecepcionFinalizada_reg_0),
        .I3(wireRecepcionBFinalizada),
        .I4(wireRecepcionAFinalizada),
        .I5(wireIniciarTransmisionC),
        .O(registroRecepcionFinalizada_reg_2));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \registroBitsRecibidos[4]_i_1__1 
       (.I0(\registroEstadoActual[2]_i_2__1_n_0 ),
        .I1(\registroEstadoActual_reg_n_0_[0] ),
        .I2(\registroEstadoActual_reg_n_0_[2] ),
        .I3(\registroIndiceBitRecibir_reg_n_0_[0] ),
        .I4(\registroIndiceBitRecibir_reg_n_0_[1] ),
        .I5(\registroBitsRecibidos[7]_i_2__1_n_0 ),
        .O(\registroBitsRecibidos[4]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \registroBitsRecibidos[5]_i_1__1 
       (.I0(\registroEstadoActual[2]_i_2__1_n_0 ),
        .I1(\registroEstadoActual_reg_n_0_[0] ),
        .I2(\registroEstadoActual_reg_n_0_[2] ),
        .I3(\registroIndiceBitRecibir_reg_n_0_[1] ),
        .I4(\registroIndiceBitRecibir_reg_n_0_[0] ),
        .I5(\registroBitsRecibidos[7]_i_2__1_n_0 ),
        .O(\registroBitsRecibidos[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \registroBitsRecibidos[6]_i_1__1 
       (.I0(\registroEstadoActual[2]_i_2__1_n_0 ),
        .I1(\registroEstadoActual_reg_n_0_[0] ),
        .I2(\registroEstadoActual_reg_n_0_[2] ),
        .I3(\registroIndiceBitRecibir_reg_n_0_[0] ),
        .I4(\registroIndiceBitRecibir_reg_n_0_[1] ),
        .I5(\registroBitsRecibidos[7]_i_2__1_n_0 ),
        .O(\registroBitsRecibidos[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \registroBitsRecibidos[7]_i_1__1 
       (.I0(\registroBitsRecibidos[7]_i_2__1_n_0 ),
        .I1(\registroIndiceBitRecibir_reg_n_0_[0] ),
        .I2(\registroIndiceBitRecibir_reg_n_0_[1] ),
        .I3(\registroEstadoActual[2]_i_2__1_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[0] ),
        .I5(\registroEstadoActual_reg_n_0_[2] ),
        .O(\registroBitsRecibidos[7]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \registroBitsRecibidos[7]_i_2__1 
       (.I0(\registroIndiceBitRecibir_reg_n_0_[2] ),
        .I1(\registroIndiceBitRecibir_reg_n_0_[3] ),
        .I2(\registroEstadoActual_reg_n_0_[1] ),
        .O(\registroBitsRecibidos[7]_i_2__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registroBitsRecibidos_reg[4] 
       (.C(CLK),
        .CE(\registroBitsRecibidos[4]_i_1__1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(lineaRecepcionC_IBUF),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \registroBitsRecibidos_reg[5] 
       (.C(CLK),
        .CE(\registroBitsRecibidos[5]_i_1__1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(lineaRecepcionC_IBUF),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \registroBitsRecibidos_reg[6] 
       (.C(CLK),
        .CE(\registroBitsRecibidos[6]_i_1__1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(lineaRecepcionC_IBUF),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \registroBitsRecibidos_reg[7] 
       (.C(CLK),
        .CE(\registroBitsRecibidos[7]_i_1__1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(lineaRecepcionC_IBUF),
        .Q(Q[3]));
  CARRY4 registroContadorCiclosReloj0_carry
       (.CI(1'b0),
        .CO({registroContadorCiclosReloj0_carry_n_0,registroContadorCiclosReloj0_carry_n_1,registroContadorCiclosReloj0_carry_n_2,registroContadorCiclosReloj0_carry_n_3}),
        .CYINIT(\registroContadorCiclosReloj_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({registroContadorCiclosReloj0_carry_n_4,registroContadorCiclosReloj0_carry_n_5,registroContadorCiclosReloj0_carry_n_6,registroContadorCiclosReloj0_carry_n_7}),
        .S({\registroContadorCiclosReloj_reg_n_0_[4] ,\registroContadorCiclosReloj_reg_n_0_[3] ,\registroContadorCiclosReloj_reg_n_0_[2] ,\registroContadorCiclosReloj_reg_n_0_[1] }));
  CARRY4 registroContadorCiclosReloj0_carry__0
       (.CI(registroContadorCiclosReloj0_carry_n_0),
        .CO({registroContadorCiclosReloj0_carry__0_n_0,registroContadorCiclosReloj0_carry__0_n_1,registroContadorCiclosReloj0_carry__0_n_2,registroContadorCiclosReloj0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({registroContadorCiclosReloj0_carry__0_n_4,registroContadorCiclosReloj0_carry__0_n_5,registroContadorCiclosReloj0_carry__0_n_6,registroContadorCiclosReloj0_carry__0_n_7}),
        .S({\registroContadorCiclosReloj_reg_n_0_[8] ,\registroContadorCiclosReloj_reg_n_0_[7] ,\registroContadorCiclosReloj_reg_n_0_[6] ,\registroContadorCiclosReloj_reg_n_0_[5] }));
  CARRY4 registroContadorCiclosReloj0_carry__1
       (.CI(registroContadorCiclosReloj0_carry__0_n_0),
        .CO({registroContadorCiclosReloj0_carry__1_n_0,registroContadorCiclosReloj0_carry__1_n_1,registroContadorCiclosReloj0_carry__1_n_2,registroContadorCiclosReloj0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({registroContadorCiclosReloj0_carry__1_n_4,registroContadorCiclosReloj0_carry__1_n_5,registroContadorCiclosReloj0_carry__1_n_6,registroContadorCiclosReloj0_carry__1_n_7}),
        .S({\registroContadorCiclosReloj_reg_n_0_[12] ,\registroContadorCiclosReloj_reg_n_0_[11] ,\registroContadorCiclosReloj_reg_n_0_[10] ,\registroContadorCiclosReloj_reg_n_0_[9] }));
  CARRY4 registroContadorCiclosReloj0_carry__2
       (.CI(registroContadorCiclosReloj0_carry__1_n_0),
        .CO(NLW_registroContadorCiclosReloj0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_registroContadorCiclosReloj0_carry__2_O_UNCONNECTED[3:1],registroContadorCiclosReloj0_carry__2_n_7}),
        .S({1'b0,1'b0,1'b0,\registroContadorCiclosReloj_reg_n_0_[13] }));
  LUT6 #(
    .INIT(64'h0000A2023333A202)) 
    \registroContadorCiclosReloj[0]_i_1__4 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[0] ),
        .I2(\registroEstadoActual[1]_i_2__1_n_0 ),
        .I3(lineaRecepcionC_IBUF),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2__1_n_0 ),
        .O(\registroContadorCiclosReloj[0]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[10]_i_1__4 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry__1_n_6),
        .I2(\registroContadorCiclosReloj[13]_i_4__1_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3__1_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2__1_n_0 ),
        .O(\registroContadorCiclosReloj[10]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[11]_i_1__4 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry__1_n_5),
        .I2(\registroContadorCiclosReloj[13]_i_4__1_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3__1_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2__1_n_0 ),
        .O(\registroContadorCiclosReloj[11]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[12]_i_1__4 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry__1_n_4),
        .I2(\registroContadorCiclosReloj[13]_i_4__1_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3__1_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2__1_n_0 ),
        .O(\registroContadorCiclosReloj[12]_i_1__4_n_0 ));
  LUT4 #(
    .INIT(16'h5545)) 
    \registroContadorCiclosReloj[13]_i_1__4 
       (.I0(\registroEstadoActual_reg_n_0_[2] ),
        .I1(\registroContadorCiclosReloj[13]_i_3__1_n_0 ),
        .I2(\registroEstadoActual_reg_n_0_[0] ),
        .I3(\registroEstadoActual_reg_n_0_[1] ),
        .O(\registroContadorCiclosReloj[13]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[13]_i_2__4 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry__2_n_7),
        .I2(\registroContadorCiclosReloj[13]_i_4__1_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3__1_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2__1_n_0 ),
        .O(\registroContadorCiclosReloj[13]_i_2__4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7FFFFFFFFF)) 
    \registroContadorCiclosReloj[13]_i_3__1 
       (.I0(lineaRecepcionC_IBUF),
        .I1(\registroContadorCiclosReloj_reg_n_0_[4] ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[10] ),
        .I3(\registroContadorCiclosReloj[13]_i_5__1_n_0 ),
        .I4(\registroEstadoActual[1]_i_4__1_n_0 ),
        .I5(\registroEstadoActual[1]_i_3__1_n_0 ),
        .O(\registroContadorCiclosReloj[13]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \registroContadorCiclosReloj[13]_i_4__1 
       (.I0(\registroContadorCiclosReloj[13]_i_6__1_n_0 ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[9] ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[8] ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I5(\registroContadorCiclosReloj[13]_i_7__1_n_0 ),
        .O(\registroContadorCiclosReloj[13]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \registroContadorCiclosReloj[13]_i_5__1 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[0] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .O(\registroContadorCiclosReloj[13]_i_5__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \registroContadorCiclosReloj[13]_i_6__1 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[2] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[1] ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[7] ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[5] ),
        .O(\registroContadorCiclosReloj[13]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    \registroContadorCiclosReloj[13]_i_7__1 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[3] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[4] ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[6] ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[10] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[0] ),
        .I5(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .O(\registroContadorCiclosReloj[13]_i_7__1_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[1]_i_1__4 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry_n_7),
        .I2(\registroContadorCiclosReloj[13]_i_4__1_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3__1_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2__1_n_0 ),
        .O(\registroContadorCiclosReloj[1]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[2]_i_1__4 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry_n_6),
        .I2(\registroContadorCiclosReloj[13]_i_4__1_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3__1_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2__1_n_0 ),
        .O(\registroContadorCiclosReloj[2]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[3]_i_1__4 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry_n_5),
        .I2(\registroContadorCiclosReloj[13]_i_4__1_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3__1_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2__1_n_0 ),
        .O(\registroContadorCiclosReloj[3]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[4]_i_1__4 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry_n_4),
        .I2(\registroContadorCiclosReloj[13]_i_4__1_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3__1_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2__1_n_0 ),
        .O(\registroContadorCiclosReloj[4]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[5]_i_1__4 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry__0_n_7),
        .I2(\registroContadorCiclosReloj[13]_i_4__1_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3__1_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2__1_n_0 ),
        .O(\registroContadorCiclosReloj[5]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[6]_i_1__4 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry__0_n_6),
        .I2(\registroContadorCiclosReloj[13]_i_4__1_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3__1_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2__1_n_0 ),
        .O(\registroContadorCiclosReloj[6]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[7]_i_1__4 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry__0_n_5),
        .I2(\registroContadorCiclosReloj[13]_i_4__1_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3__1_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2__1_n_0 ),
        .O(\registroContadorCiclosReloj[7]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[8]_i_1__4 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry__0_n_4),
        .I2(\registroContadorCiclosReloj[13]_i_4__1_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3__1_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2__1_n_0 ),
        .O(\registroContadorCiclosReloj[8]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[9]_i_1__4 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry__1_n_7),
        .I2(\registroContadorCiclosReloj[13]_i_4__1_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3__1_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2__1_n_0 ),
        .O(\registroContadorCiclosReloj[9]_i_1__4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[0] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__4_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[0]_i_1__4_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[10] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__4_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[10]_i_1__4_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[11] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__4_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[11]_i_1__4_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[12] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__4_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[12]_i_1__4_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[13] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__4_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[13]_i_2__4_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[1] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__4_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[1]_i_1__4_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[2] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__4_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[2]_i_1__4_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[3] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__4_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[3]_i_1__4_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[4] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__4_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[4]_i_1__4_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[5] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__4_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[5]_i_1__4_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[6] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__4_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[6]_i_1__4_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[7] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__4_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[7]_i_1__4_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[8] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__4_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[8]_i_1__4_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[9] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__4_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[9]_i_1__4_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[9] ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \registroDatoConsumido[3]_i_1 
       (.I0(wireRecepcionAFinalizada),
        .I1(wireRecepcionBFinalizada),
        .I2(registroRecepcionFinalizada_reg_0),
        .I3(\registroDatoConsumido[3]_i_3_n_0 ),
        .O(E));
  LUT3 #(
    .INIT(8'h90)) 
    \registroDatoConsumido[3]_i_3 
       (.I0(Q[3]),
        .I1(identificadorFPGA_IBUF[3]),
        .I2(\registroDatoConsumido[3]_i_4_n_0 ),
        .O(\registroDatoConsumido[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \registroDatoConsumido[3]_i_4 
       (.I0(Q[0]),
        .I1(identificadorFPGA_IBUF[0]),
        .I2(identificadorFPGA_IBUF[2]),
        .I3(Q[2]),
        .I4(identificadorFPGA_IBUF[1]),
        .I5(Q[1]),
        .O(\registroDatoConsumido[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4444545454444444)) 
    \registroEstadoActual[0]_i_1__4 
       (.I0(\registroEstadoActual_reg_n_0_[2] ),
        .I1(\registroEstadoActual[0]_i_2__4_n_0 ),
        .I2(\registroEstadoActual_reg_n_0_[1] ),
        .I3(\registroIndiceBitRecibir_reg_n_0_[3] ),
        .I4(\registroEstadoActual[2]_i_2__1_n_0 ),
        .I5(\registroEstadoActual_reg_n_0_[0] ),
        .O(\registroEstadoActual[0]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFF35555)) 
    \registroEstadoActual[0]_i_2__4 
       (.I0(lineaRecepcionC_IBUF),
        .I1(\registroEstadoActual[1]_i_3__1_n_0 ),
        .I2(\registroEstadoActual[1]_i_4__1_n_0 ),
        .I3(\registroEstadoActual[0]_i_3__4_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[0] ),
        .I5(\registroEstadoActual_reg_n_0_[1] ),
        .O(\registroEstadoActual[0]_i_2__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \registroEstadoActual[0]_i_3__4 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[0] ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[10] ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[4] ),
        .O(\registroEstadoActual[0]_i_3__4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000047CC44CC)) 
    \registroEstadoActual[1]_i_1__4 
       (.I0(\registroEstadoActual[2]_i_2__1_n_0 ),
        .I1(\registroEstadoActual_reg_n_0_[1] ),
        .I2(lineaRecepcionC_IBUF),
        .I3(\registroEstadoActual_reg_n_0_[0] ),
        .I4(\registroEstadoActual[1]_i_2__1_n_0 ),
        .I5(\registroEstadoActual_reg_n_0_[2] ),
        .O(\registroEstadoActual[1]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \registroEstadoActual[1]_i_2__1 
       (.I0(\registroEstadoActual[1]_i_3__1_n_0 ),
        .I1(\registroEstadoActual[1]_i_4__1_n_0 ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[0] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[10] ),
        .I5(\registroContadorCiclosReloj_reg_n_0_[4] ),
        .O(\registroEstadoActual[1]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \registroEstadoActual[1]_i_3__1 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[9] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[8] ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[2] ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[5] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[7] ),
        .I5(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .O(\registroEstadoActual[1]_i_3__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \registroEstadoActual[1]_i_4__1 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[6] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[1] ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[3] ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .O(\registroEstadoActual[1]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \registroEstadoActual[2]_i_1__1 
       (.I0(\registroEstadoActual_reg_n_0_[2] ),
        .I1(\registroEstadoActual[2]_i_2__1_n_0 ),
        .I2(\registroEstadoActual_reg_n_0_[0] ),
        .I3(\registroEstadoActual_reg_n_0_[1] ),
        .O(\registroEstadoActual[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAAAAA88888888)) 
    \registroEstadoActual[2]_i_2__1 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[10] ),
        .I3(\registroEstadoActual[2]_i_3__1_n_0 ),
        .I4(\registroEstadoActual[2]_i_4__1_n_0 ),
        .I5(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .O(\registroEstadoActual[2]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \registroEstadoActual[2]_i_3__1 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[8] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[9] ),
        .O(\registroEstadoActual[2]_i_3__1_n_0 ));
  LUT4 #(
    .INIT(16'h557F)) 
    \registroEstadoActual[2]_i_4__1 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[7] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[4] ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[5] ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[6] ),
        .O(\registroEstadoActual[2]_i_4__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registroEstadoActual_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroEstadoActual[0]_i_1__4_n_0 ),
        .Q(\registroEstadoActual_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroEstadoActual_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroEstadoActual[1]_i_1__4_n_0 ),
        .Q(\registroEstadoActual_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroEstadoActual_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroEstadoActual[2]_i_1__1_n_0 ),
        .Q(\registroEstadoActual_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \registroIndiceBitRecibir[0]_i_1__1 
       (.I0(\registroIndiceBitRecibir_reg_n_0_[3] ),
        .I1(\registroEstadoActual_reg_n_0_[1] ),
        .I2(\registroIndiceBitRecibir_reg_n_0_[0] ),
        .O(\registroIndiceBitRecibir[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \registroIndiceBitRecibir[1]_i_1__1 
       (.I0(\registroEstadoActual_reg_n_0_[1] ),
        .I1(\registroIndiceBitRecibir_reg_n_0_[3] ),
        .I2(\registroIndiceBitRecibir_reg_n_0_[1] ),
        .I3(\registroIndiceBitRecibir_reg_n_0_[0] ),
        .O(\registroIndiceBitRecibir[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h04444000)) 
    \registroIndiceBitRecibir[2]_i_1__1 
       (.I0(\registroIndiceBitRecibir_reg_n_0_[3] ),
        .I1(\registroEstadoActual_reg_n_0_[1] ),
        .I2(\registroIndiceBitRecibir_reg_n_0_[0] ),
        .I3(\registroIndiceBitRecibir_reg_n_0_[1] ),
        .I4(\registroIndiceBitRecibir_reg_n_0_[2] ),
        .O(\registroIndiceBitRecibir[2]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'h1011)) 
    \registroIndiceBitRecibir[3]_i_1__1 
       (.I0(\registroEstadoActual_reg_n_0_[2] ),
        .I1(\registroEstadoActual_reg_n_0_[0] ),
        .I2(\registroEstadoActual[2]_i_2__1_n_0 ),
        .I3(\registroEstadoActual_reg_n_0_[1] ),
        .O(\registroIndiceBitRecibir[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \registroIndiceBitRecibir[3]_i_2__1 
       (.I0(\registroIndiceBitRecibir_reg_n_0_[1] ),
        .I1(\registroIndiceBitRecibir_reg_n_0_[0] ),
        .I2(\registroEstadoActual_reg_n_0_[1] ),
        .I3(\registroIndiceBitRecibir_reg_n_0_[3] ),
        .I4(\registroIndiceBitRecibir_reg_n_0_[2] ),
        .O(\registroIndiceBitRecibir[3]_i_2__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registroIndiceBitRecibir_reg[0] 
       (.C(CLK),
        .CE(\registroIndiceBitRecibir[3]_i_1__1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroIndiceBitRecibir[0]_i_1__1_n_0 ),
        .Q(\registroIndiceBitRecibir_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroIndiceBitRecibir_reg[1] 
       (.C(CLK),
        .CE(\registroIndiceBitRecibir[3]_i_1__1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroIndiceBitRecibir[1]_i_1__1_n_0 ),
        .Q(\registroIndiceBitRecibir_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroIndiceBitRecibir_reg[2] 
       (.C(CLK),
        .CE(\registroIndiceBitRecibir[3]_i_1__1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroIndiceBitRecibir[2]_i_1__1_n_0 ),
        .Q(\registroIndiceBitRecibir_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroIndiceBitRecibir_reg[3] 
       (.C(CLK),
        .CE(\registroIndiceBitRecibir[3]_i_1__1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroIndiceBitRecibir[3]_i_2__1_n_0 ),
        .Q(\registroIndiceBitRecibir_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hEEEE0080)) 
    registroRecepcionFinalizada_i_1__1
       (.I0(\registroEstadoActual_reg_n_0_[1] ),
        .I1(\registroEstadoActual_reg_n_0_[0] ),
        .I2(\registroEstadoActual[2]_i_2__1_n_0 ),
        .I3(\registroEstadoActual_reg_n_0_[2] ),
        .I4(registroRecepcionFinalizada_reg_0),
        .O(registroRecepcionFinalizada_i_1__1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    registroRecepcionFinalizada_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(registroRecepcionFinalizada_i_1__1_n_0),
        .Q(registroRecepcionFinalizada_reg_0));
endmodule

(* ORIG_REF_NAME = "moduloReceptorUART" *) 
module moduloReceptorUART_2
   (wireRecepcionBFinalizada,
    Q,
    CLK,
    reinicio_IBUF,
    lineaRecepcionB_IBUF);
  output wireRecepcionBFinalizada;
  output [3:0]Q;
  input CLK;
  input reinicio_IBUF;
  input lineaRecepcionB_IBUF;

  wire CLK;
  wire [3:0]Q;
  wire lineaRecepcionB_IBUF;
  wire \registroBitsRecibidos[4]_i_1__0_n_0 ;
  wire \registroBitsRecibidos[5]_i_1__0_n_0 ;
  wire \registroBitsRecibidos[6]_i_1__0_n_0 ;
  wire \registroBitsRecibidos[7]_i_1__0_n_0 ;
  wire \registroBitsRecibidos[7]_i_2__0_n_0 ;
  wire registroContadorCiclosReloj0_carry__0_n_0;
  wire registroContadorCiclosReloj0_carry__0_n_1;
  wire registroContadorCiclosReloj0_carry__0_n_2;
  wire registroContadorCiclosReloj0_carry__0_n_3;
  wire registroContadorCiclosReloj0_carry__0_n_4;
  wire registroContadorCiclosReloj0_carry__0_n_5;
  wire registroContadorCiclosReloj0_carry__0_n_6;
  wire registroContadorCiclosReloj0_carry__0_n_7;
  wire registroContadorCiclosReloj0_carry__1_n_0;
  wire registroContadorCiclosReloj0_carry__1_n_1;
  wire registroContadorCiclosReloj0_carry__1_n_2;
  wire registroContadorCiclosReloj0_carry__1_n_3;
  wire registroContadorCiclosReloj0_carry__1_n_4;
  wire registroContadorCiclosReloj0_carry__1_n_5;
  wire registroContadorCiclosReloj0_carry__1_n_6;
  wire registroContadorCiclosReloj0_carry__1_n_7;
  wire registroContadorCiclosReloj0_carry__2_n_7;
  wire registroContadorCiclosReloj0_carry_n_0;
  wire registroContadorCiclosReloj0_carry_n_1;
  wire registroContadorCiclosReloj0_carry_n_2;
  wire registroContadorCiclosReloj0_carry_n_3;
  wire registroContadorCiclosReloj0_carry_n_4;
  wire registroContadorCiclosReloj0_carry_n_5;
  wire registroContadorCiclosReloj0_carry_n_6;
  wire registroContadorCiclosReloj0_carry_n_7;
  wire \registroContadorCiclosReloj[0]_i_1__3_n_0 ;
  wire \registroContadorCiclosReloj[10]_i_1__3_n_0 ;
  wire \registroContadorCiclosReloj[11]_i_1__3_n_0 ;
  wire \registroContadorCiclosReloj[12]_i_1__3_n_0 ;
  wire \registroContadorCiclosReloj[13]_i_1__3_n_0 ;
  wire \registroContadorCiclosReloj[13]_i_2__3_n_0 ;
  wire \registroContadorCiclosReloj[13]_i_3__0_n_0 ;
  wire \registroContadorCiclosReloj[13]_i_4__0_n_0 ;
  wire \registroContadorCiclosReloj[13]_i_5__0_n_0 ;
  wire \registroContadorCiclosReloj[13]_i_6__0_n_0 ;
  wire \registroContadorCiclosReloj[13]_i_7__0_n_0 ;
  wire \registroContadorCiclosReloj[1]_i_1__3_n_0 ;
  wire \registroContadorCiclosReloj[2]_i_1__3_n_0 ;
  wire \registroContadorCiclosReloj[3]_i_1__3_n_0 ;
  wire \registroContadorCiclosReloj[4]_i_1__3_n_0 ;
  wire \registroContadorCiclosReloj[5]_i_1__3_n_0 ;
  wire \registroContadorCiclosReloj[6]_i_1__3_n_0 ;
  wire \registroContadorCiclosReloj[7]_i_1__3_n_0 ;
  wire \registroContadorCiclosReloj[8]_i_1__3_n_0 ;
  wire \registroContadorCiclosReloj[9]_i_1__3_n_0 ;
  wire \registroContadorCiclosReloj_reg_n_0_[0] ;
  wire \registroContadorCiclosReloj_reg_n_0_[10] ;
  wire \registroContadorCiclosReloj_reg_n_0_[11] ;
  wire \registroContadorCiclosReloj_reg_n_0_[12] ;
  wire \registroContadorCiclosReloj_reg_n_0_[13] ;
  wire \registroContadorCiclosReloj_reg_n_0_[1] ;
  wire \registroContadorCiclosReloj_reg_n_0_[2] ;
  wire \registroContadorCiclosReloj_reg_n_0_[3] ;
  wire \registroContadorCiclosReloj_reg_n_0_[4] ;
  wire \registroContadorCiclosReloj_reg_n_0_[5] ;
  wire \registroContadorCiclosReloj_reg_n_0_[6] ;
  wire \registroContadorCiclosReloj_reg_n_0_[7] ;
  wire \registroContadorCiclosReloj_reg_n_0_[8] ;
  wire \registroContadorCiclosReloj_reg_n_0_[9] ;
  wire \registroEstadoActual[0]_i_1__3_n_0 ;
  wire \registroEstadoActual[0]_i_2__2_n_0 ;
  wire \registroEstadoActual[0]_i_3__2_n_0 ;
  wire \registroEstadoActual[1]_i_1__2_n_0 ;
  wire \registroEstadoActual[1]_i_2__0_n_0 ;
  wire \registroEstadoActual[1]_i_3__0_n_0 ;
  wire \registroEstadoActual[1]_i_4__0_n_0 ;
  wire \registroEstadoActual[2]_i_1__0_n_0 ;
  wire \registroEstadoActual[2]_i_2__0_n_0 ;
  wire \registroEstadoActual[2]_i_3__0_n_0 ;
  wire \registroEstadoActual[2]_i_4__0_n_0 ;
  wire \registroEstadoActual_reg_n_0_[0] ;
  wire \registroEstadoActual_reg_n_0_[1] ;
  wire \registroEstadoActual_reg_n_0_[2] ;
  wire \registroIndiceBitRecibir[0]_i_1__0_n_0 ;
  wire \registroIndiceBitRecibir[1]_i_1__0_n_0 ;
  wire \registroIndiceBitRecibir[2]_i_1__0_n_0 ;
  wire \registroIndiceBitRecibir[3]_i_1__0_n_0 ;
  wire \registroIndiceBitRecibir[3]_i_2__0_n_0 ;
  wire \registroIndiceBitRecibir_reg_n_0_[0] ;
  wire \registroIndiceBitRecibir_reg_n_0_[1] ;
  wire \registroIndiceBitRecibir_reg_n_0_[2] ;
  wire \registroIndiceBitRecibir_reg_n_0_[3] ;
  wire registroRecepcionFinalizada_i_1__0_n_0;
  wire reinicio_IBUF;
  wire wireRecepcionBFinalizada;
  wire [3:0]NLW_registroContadorCiclosReloj0_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_registroContadorCiclosReloj0_carry__2_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \registroBitsRecibidos[4]_i_1__0 
       (.I0(\registroEstadoActual[2]_i_2__0_n_0 ),
        .I1(\registroEstadoActual_reg_n_0_[0] ),
        .I2(\registroEstadoActual_reg_n_0_[2] ),
        .I3(\registroIndiceBitRecibir_reg_n_0_[0] ),
        .I4(\registroIndiceBitRecibir_reg_n_0_[1] ),
        .I5(\registroBitsRecibidos[7]_i_2__0_n_0 ),
        .O(\registroBitsRecibidos[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \registroBitsRecibidos[5]_i_1__0 
       (.I0(\registroEstadoActual[2]_i_2__0_n_0 ),
        .I1(\registroEstadoActual_reg_n_0_[0] ),
        .I2(\registroEstadoActual_reg_n_0_[2] ),
        .I3(\registroIndiceBitRecibir_reg_n_0_[1] ),
        .I4(\registroIndiceBitRecibir_reg_n_0_[0] ),
        .I5(\registroBitsRecibidos[7]_i_2__0_n_0 ),
        .O(\registroBitsRecibidos[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \registroBitsRecibidos[6]_i_1__0 
       (.I0(\registroEstadoActual[2]_i_2__0_n_0 ),
        .I1(\registroEstadoActual_reg_n_0_[0] ),
        .I2(\registroEstadoActual_reg_n_0_[2] ),
        .I3(\registroIndiceBitRecibir_reg_n_0_[0] ),
        .I4(\registroIndiceBitRecibir_reg_n_0_[1] ),
        .I5(\registroBitsRecibidos[7]_i_2__0_n_0 ),
        .O(\registroBitsRecibidos[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \registroBitsRecibidos[7]_i_1__0 
       (.I0(\registroBitsRecibidos[7]_i_2__0_n_0 ),
        .I1(\registroIndiceBitRecibir_reg_n_0_[0] ),
        .I2(\registroIndiceBitRecibir_reg_n_0_[1] ),
        .I3(\registroEstadoActual[2]_i_2__0_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[0] ),
        .I5(\registroEstadoActual_reg_n_0_[2] ),
        .O(\registroBitsRecibidos[7]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \registroBitsRecibidos[7]_i_2__0 
       (.I0(\registroIndiceBitRecibir_reg_n_0_[2] ),
        .I1(\registroIndiceBitRecibir_reg_n_0_[3] ),
        .I2(\registroEstadoActual_reg_n_0_[1] ),
        .O(\registroBitsRecibidos[7]_i_2__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registroBitsRecibidos_reg[4] 
       (.C(CLK),
        .CE(\registroBitsRecibidos[4]_i_1__0_n_0 ),
        .CLR(reinicio_IBUF),
        .D(lineaRecepcionB_IBUF),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \registroBitsRecibidos_reg[5] 
       (.C(CLK),
        .CE(\registroBitsRecibidos[5]_i_1__0_n_0 ),
        .CLR(reinicio_IBUF),
        .D(lineaRecepcionB_IBUF),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \registroBitsRecibidos_reg[6] 
       (.C(CLK),
        .CE(\registroBitsRecibidos[6]_i_1__0_n_0 ),
        .CLR(reinicio_IBUF),
        .D(lineaRecepcionB_IBUF),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \registroBitsRecibidos_reg[7] 
       (.C(CLK),
        .CE(\registroBitsRecibidos[7]_i_1__0_n_0 ),
        .CLR(reinicio_IBUF),
        .D(lineaRecepcionB_IBUF),
        .Q(Q[3]));
  CARRY4 registroContadorCiclosReloj0_carry
       (.CI(1'b0),
        .CO({registroContadorCiclosReloj0_carry_n_0,registroContadorCiclosReloj0_carry_n_1,registroContadorCiclosReloj0_carry_n_2,registroContadorCiclosReloj0_carry_n_3}),
        .CYINIT(\registroContadorCiclosReloj_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({registroContadorCiclosReloj0_carry_n_4,registroContadorCiclosReloj0_carry_n_5,registroContadorCiclosReloj0_carry_n_6,registroContadorCiclosReloj0_carry_n_7}),
        .S({\registroContadorCiclosReloj_reg_n_0_[4] ,\registroContadorCiclosReloj_reg_n_0_[3] ,\registroContadorCiclosReloj_reg_n_0_[2] ,\registroContadorCiclosReloj_reg_n_0_[1] }));
  CARRY4 registroContadorCiclosReloj0_carry__0
       (.CI(registroContadorCiclosReloj0_carry_n_0),
        .CO({registroContadorCiclosReloj0_carry__0_n_0,registroContadorCiclosReloj0_carry__0_n_1,registroContadorCiclosReloj0_carry__0_n_2,registroContadorCiclosReloj0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({registroContadorCiclosReloj0_carry__0_n_4,registroContadorCiclosReloj0_carry__0_n_5,registroContadorCiclosReloj0_carry__0_n_6,registroContadorCiclosReloj0_carry__0_n_7}),
        .S({\registroContadorCiclosReloj_reg_n_0_[8] ,\registroContadorCiclosReloj_reg_n_0_[7] ,\registroContadorCiclosReloj_reg_n_0_[6] ,\registroContadorCiclosReloj_reg_n_0_[5] }));
  CARRY4 registroContadorCiclosReloj0_carry__1
       (.CI(registroContadorCiclosReloj0_carry__0_n_0),
        .CO({registroContadorCiclosReloj0_carry__1_n_0,registroContadorCiclosReloj0_carry__1_n_1,registroContadorCiclosReloj0_carry__1_n_2,registroContadorCiclosReloj0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({registroContadorCiclosReloj0_carry__1_n_4,registroContadorCiclosReloj0_carry__1_n_5,registroContadorCiclosReloj0_carry__1_n_6,registroContadorCiclosReloj0_carry__1_n_7}),
        .S({\registroContadorCiclosReloj_reg_n_0_[12] ,\registroContadorCiclosReloj_reg_n_0_[11] ,\registroContadorCiclosReloj_reg_n_0_[10] ,\registroContadorCiclosReloj_reg_n_0_[9] }));
  CARRY4 registroContadorCiclosReloj0_carry__2
       (.CI(registroContadorCiclosReloj0_carry__1_n_0),
        .CO(NLW_registroContadorCiclosReloj0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_registroContadorCiclosReloj0_carry__2_O_UNCONNECTED[3:1],registroContadorCiclosReloj0_carry__2_n_7}),
        .S({1'b0,1'b0,1'b0,\registroContadorCiclosReloj_reg_n_0_[13] }));
  LUT6 #(
    .INIT(64'h0000A2023333A202)) 
    \registroContadorCiclosReloj[0]_i_1__3 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[0] ),
        .I2(\registroEstadoActual[1]_i_2__0_n_0 ),
        .I3(lineaRecepcionB_IBUF),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2__0_n_0 ),
        .O(\registroContadorCiclosReloj[0]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[10]_i_1__3 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry__1_n_6),
        .I2(\registroContadorCiclosReloj[13]_i_4__0_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3__0_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2__0_n_0 ),
        .O(\registroContadorCiclosReloj[10]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[11]_i_1__3 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry__1_n_5),
        .I2(\registroContadorCiclosReloj[13]_i_4__0_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3__0_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2__0_n_0 ),
        .O(\registroContadorCiclosReloj[11]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[12]_i_1__3 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry__1_n_4),
        .I2(\registroContadorCiclosReloj[13]_i_4__0_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3__0_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2__0_n_0 ),
        .O(\registroContadorCiclosReloj[12]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'h5545)) 
    \registroContadorCiclosReloj[13]_i_1__3 
       (.I0(\registroEstadoActual_reg_n_0_[2] ),
        .I1(\registroContadorCiclosReloj[13]_i_3__0_n_0 ),
        .I2(\registroEstadoActual_reg_n_0_[0] ),
        .I3(\registroEstadoActual_reg_n_0_[1] ),
        .O(\registroContadorCiclosReloj[13]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[13]_i_2__3 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry__2_n_7),
        .I2(\registroContadorCiclosReloj[13]_i_4__0_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3__0_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2__0_n_0 ),
        .O(\registroContadorCiclosReloj[13]_i_2__3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7FFFFFFFFF)) 
    \registroContadorCiclosReloj[13]_i_3__0 
       (.I0(lineaRecepcionB_IBUF),
        .I1(\registroContadorCiclosReloj_reg_n_0_[4] ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[10] ),
        .I3(\registroContadorCiclosReloj[13]_i_5__0_n_0 ),
        .I4(\registroEstadoActual[1]_i_4__0_n_0 ),
        .I5(\registroEstadoActual[1]_i_3__0_n_0 ),
        .O(\registroContadorCiclosReloj[13]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \registroContadorCiclosReloj[13]_i_4__0 
       (.I0(\registroContadorCiclosReloj[13]_i_6__0_n_0 ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[9] ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[8] ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I5(\registroContadorCiclosReloj[13]_i_7__0_n_0 ),
        .O(\registroContadorCiclosReloj[13]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \registroContadorCiclosReloj[13]_i_5__0 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[0] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .O(\registroContadorCiclosReloj[13]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \registroContadorCiclosReloj[13]_i_6__0 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[2] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[1] ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[7] ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[5] ),
        .O(\registroContadorCiclosReloj[13]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    \registroContadorCiclosReloj[13]_i_7__0 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[3] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[4] ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[6] ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[10] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[0] ),
        .I5(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .O(\registroContadorCiclosReloj[13]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[1]_i_1__3 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry_n_7),
        .I2(\registroContadorCiclosReloj[13]_i_4__0_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3__0_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2__0_n_0 ),
        .O(\registroContadorCiclosReloj[1]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[2]_i_1__3 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry_n_6),
        .I2(\registroContadorCiclosReloj[13]_i_4__0_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3__0_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2__0_n_0 ),
        .O(\registroContadorCiclosReloj[2]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[3]_i_1__3 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry_n_5),
        .I2(\registroContadorCiclosReloj[13]_i_4__0_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3__0_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2__0_n_0 ),
        .O(\registroContadorCiclosReloj[3]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[4]_i_1__3 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry_n_4),
        .I2(\registroContadorCiclosReloj[13]_i_4__0_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3__0_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2__0_n_0 ),
        .O(\registroContadorCiclosReloj[4]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[5]_i_1__3 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry__0_n_7),
        .I2(\registroContadorCiclosReloj[13]_i_4__0_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3__0_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2__0_n_0 ),
        .O(\registroContadorCiclosReloj[5]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[6]_i_1__3 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry__0_n_6),
        .I2(\registroContadorCiclosReloj[13]_i_4__0_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3__0_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2__0_n_0 ),
        .O(\registroContadorCiclosReloj[6]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[7]_i_1__3 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry__0_n_5),
        .I2(\registroContadorCiclosReloj[13]_i_4__0_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3__0_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2__0_n_0 ),
        .O(\registroContadorCiclosReloj[7]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[8]_i_1__3 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry__0_n_4),
        .I2(\registroContadorCiclosReloj[13]_i_4__0_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3__0_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2__0_n_0 ),
        .O(\registroContadorCiclosReloj[8]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[9]_i_1__3 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry__1_n_7),
        .I2(\registroContadorCiclosReloj[13]_i_4__0_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3__0_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2__0_n_0 ),
        .O(\registroContadorCiclosReloj[9]_i_1__3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[0] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__3_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[0]_i_1__3_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[10] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__3_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[10]_i_1__3_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[11] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__3_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[11]_i_1__3_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[12] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__3_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[12]_i_1__3_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[13] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__3_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[13]_i_2__3_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[1] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__3_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[1]_i_1__3_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[2] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__3_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[2]_i_1__3_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[3] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__3_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[3]_i_1__3_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[4] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__3_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[4]_i_1__3_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[5] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__3_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[5]_i_1__3_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[6] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__3_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[6]_i_1__3_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[7] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__3_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[7]_i_1__3_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[8] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__3_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[8]_i_1__3_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[9] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__3_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[9]_i_1__3_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'h4444545454444444)) 
    \registroEstadoActual[0]_i_1__3 
       (.I0(\registroEstadoActual_reg_n_0_[2] ),
        .I1(\registroEstadoActual[0]_i_2__2_n_0 ),
        .I2(\registroEstadoActual_reg_n_0_[1] ),
        .I3(\registroIndiceBitRecibir_reg_n_0_[3] ),
        .I4(\registroEstadoActual[2]_i_2__0_n_0 ),
        .I5(\registroEstadoActual_reg_n_0_[0] ),
        .O(\registroEstadoActual[0]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFF35555)) 
    \registroEstadoActual[0]_i_2__2 
       (.I0(lineaRecepcionB_IBUF),
        .I1(\registroEstadoActual[1]_i_3__0_n_0 ),
        .I2(\registroEstadoActual[1]_i_4__0_n_0 ),
        .I3(\registroEstadoActual[0]_i_3__2_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[0] ),
        .I5(\registroEstadoActual_reg_n_0_[1] ),
        .O(\registroEstadoActual[0]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \registroEstadoActual[0]_i_3__2 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[0] ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[10] ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[4] ),
        .O(\registroEstadoActual[0]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000047CC44CC)) 
    \registroEstadoActual[1]_i_1__2 
       (.I0(\registroEstadoActual[2]_i_2__0_n_0 ),
        .I1(\registroEstadoActual_reg_n_0_[1] ),
        .I2(lineaRecepcionB_IBUF),
        .I3(\registroEstadoActual_reg_n_0_[0] ),
        .I4(\registroEstadoActual[1]_i_2__0_n_0 ),
        .I5(\registroEstadoActual_reg_n_0_[2] ),
        .O(\registroEstadoActual[1]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \registroEstadoActual[1]_i_2__0 
       (.I0(\registroEstadoActual[1]_i_3__0_n_0 ),
        .I1(\registroEstadoActual[1]_i_4__0_n_0 ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[0] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[10] ),
        .I5(\registroContadorCiclosReloj_reg_n_0_[4] ),
        .O(\registroEstadoActual[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \registroEstadoActual[1]_i_3__0 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[9] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[8] ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[2] ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[5] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[7] ),
        .I5(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .O(\registroEstadoActual[1]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \registroEstadoActual[1]_i_4__0 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[6] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[1] ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[3] ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .O(\registroEstadoActual[1]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \registroEstadoActual[2]_i_1__0 
       (.I0(\registroEstadoActual_reg_n_0_[2] ),
        .I1(\registroEstadoActual[2]_i_2__0_n_0 ),
        .I2(\registroEstadoActual_reg_n_0_[0] ),
        .I3(\registroEstadoActual_reg_n_0_[1] ),
        .O(\registroEstadoActual[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAAAAA88888888)) 
    \registroEstadoActual[2]_i_2__0 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[10] ),
        .I3(\registroEstadoActual[2]_i_3__0_n_0 ),
        .I4(\registroEstadoActual[2]_i_4__0_n_0 ),
        .I5(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .O(\registroEstadoActual[2]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \registroEstadoActual[2]_i_3__0 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[8] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[9] ),
        .O(\registroEstadoActual[2]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'h557F)) 
    \registroEstadoActual[2]_i_4__0 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[7] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[4] ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[5] ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[6] ),
        .O(\registroEstadoActual[2]_i_4__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registroEstadoActual_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroEstadoActual[0]_i_1__3_n_0 ),
        .Q(\registroEstadoActual_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroEstadoActual_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroEstadoActual[1]_i_1__2_n_0 ),
        .Q(\registroEstadoActual_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroEstadoActual_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroEstadoActual[2]_i_1__0_n_0 ),
        .Q(\registroEstadoActual_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \registroIndiceBitRecibir[0]_i_1__0 
       (.I0(\registroIndiceBitRecibir_reg_n_0_[3] ),
        .I1(\registroEstadoActual_reg_n_0_[1] ),
        .I2(\registroIndiceBitRecibir_reg_n_0_[0] ),
        .O(\registroIndiceBitRecibir[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \registroIndiceBitRecibir[1]_i_1__0 
       (.I0(\registroEstadoActual_reg_n_0_[1] ),
        .I1(\registroIndiceBitRecibir_reg_n_0_[3] ),
        .I2(\registroIndiceBitRecibir_reg_n_0_[1] ),
        .I3(\registroIndiceBitRecibir_reg_n_0_[0] ),
        .O(\registroIndiceBitRecibir[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h04444000)) 
    \registroIndiceBitRecibir[2]_i_1__0 
       (.I0(\registroIndiceBitRecibir_reg_n_0_[3] ),
        .I1(\registroEstadoActual_reg_n_0_[1] ),
        .I2(\registroIndiceBitRecibir_reg_n_0_[0] ),
        .I3(\registroIndiceBitRecibir_reg_n_0_[1] ),
        .I4(\registroIndiceBitRecibir_reg_n_0_[2] ),
        .O(\registroIndiceBitRecibir[2]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h1011)) 
    \registroIndiceBitRecibir[3]_i_1__0 
       (.I0(\registroEstadoActual_reg_n_0_[2] ),
        .I1(\registroEstadoActual_reg_n_0_[0] ),
        .I2(\registroEstadoActual[2]_i_2__0_n_0 ),
        .I3(\registroEstadoActual_reg_n_0_[1] ),
        .O(\registroIndiceBitRecibir[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \registroIndiceBitRecibir[3]_i_2__0 
       (.I0(\registroIndiceBitRecibir_reg_n_0_[1] ),
        .I1(\registroIndiceBitRecibir_reg_n_0_[0] ),
        .I2(\registroEstadoActual_reg_n_0_[1] ),
        .I3(\registroIndiceBitRecibir_reg_n_0_[3] ),
        .I4(\registroIndiceBitRecibir_reg_n_0_[2] ),
        .O(\registroIndiceBitRecibir[3]_i_2__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registroIndiceBitRecibir_reg[0] 
       (.C(CLK),
        .CE(\registroIndiceBitRecibir[3]_i_1__0_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroIndiceBitRecibir[0]_i_1__0_n_0 ),
        .Q(\registroIndiceBitRecibir_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroIndiceBitRecibir_reg[1] 
       (.C(CLK),
        .CE(\registroIndiceBitRecibir[3]_i_1__0_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroIndiceBitRecibir[1]_i_1__0_n_0 ),
        .Q(\registroIndiceBitRecibir_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroIndiceBitRecibir_reg[2] 
       (.C(CLK),
        .CE(\registroIndiceBitRecibir[3]_i_1__0_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroIndiceBitRecibir[2]_i_1__0_n_0 ),
        .Q(\registroIndiceBitRecibir_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroIndiceBitRecibir_reg[3] 
       (.C(CLK),
        .CE(\registroIndiceBitRecibir[3]_i_1__0_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroIndiceBitRecibir[3]_i_2__0_n_0 ),
        .Q(\registroIndiceBitRecibir_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hEEEE0080)) 
    registroRecepcionFinalizada_i_1__0
       (.I0(\registroEstadoActual_reg_n_0_[1] ),
        .I1(\registroEstadoActual_reg_n_0_[0] ),
        .I2(\registroEstadoActual[2]_i_2__0_n_0 ),
        .I3(\registroEstadoActual_reg_n_0_[2] ),
        .I4(wireRecepcionBFinalizada),
        .O(registroRecepcionFinalizada_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    registroRecepcionFinalizada_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(registroRecepcionFinalizada_i_1__0_n_0),
        .Q(wireRecepcionBFinalizada));
endmodule

(* ORIG_REF_NAME = "moduloReceptorUART" *) 
module moduloReceptorUART_4
   (registroRecepcionFinalizada_reg_0,
    registroRecepcionFinalizada_reg_1,
    D,
    CLK,
    reinicio_IBUF,
    wireRecepcionCFinalizada,
    wireRecepcionBFinalizada,
    Q,
    \registroDatoConsumido_reg[3] ,
    lineaRecepcionA_IBUF);
  output registroRecepcionFinalizada_reg_0;
  output [0:0]registroRecepcionFinalizada_reg_1;
  output [3:0]D;
  input CLK;
  input reinicio_IBUF;
  input wireRecepcionCFinalizada;
  input wireRecepcionBFinalizada;
  input [3:0]Q;
  input [3:0]\registroDatoConsumido_reg[3] ;
  input lineaRecepcionA_IBUF;

  wire CLK;
  wire [3:0]D;
  wire [3:0]Q;
  wire lineaRecepcionA_IBUF;
  wire \registroBitsRecibidos[4]_i_1_n_0 ;
  wire \registroBitsRecibidos[5]_i_1_n_0 ;
  wire \registroBitsRecibidos[6]_i_1_n_0 ;
  wire \registroBitsRecibidos[7]_i_1_n_0 ;
  wire \registroBitsRecibidos[7]_i_2_n_0 ;
  wire registroContadorCiclosReloj0_carry__0_n_0;
  wire registroContadorCiclosReloj0_carry__0_n_1;
  wire registroContadorCiclosReloj0_carry__0_n_2;
  wire registroContadorCiclosReloj0_carry__0_n_3;
  wire registroContadorCiclosReloj0_carry__0_n_4;
  wire registroContadorCiclosReloj0_carry__0_n_5;
  wire registroContadorCiclosReloj0_carry__0_n_6;
  wire registroContadorCiclosReloj0_carry__0_n_7;
  wire registroContadorCiclosReloj0_carry__1_n_0;
  wire registroContadorCiclosReloj0_carry__1_n_1;
  wire registroContadorCiclosReloj0_carry__1_n_2;
  wire registroContadorCiclosReloj0_carry__1_n_3;
  wire registroContadorCiclosReloj0_carry__1_n_4;
  wire registroContadorCiclosReloj0_carry__1_n_5;
  wire registroContadorCiclosReloj0_carry__1_n_6;
  wire registroContadorCiclosReloj0_carry__1_n_7;
  wire registroContadorCiclosReloj0_carry__2_n_7;
  wire registroContadorCiclosReloj0_carry_n_0;
  wire registroContadorCiclosReloj0_carry_n_1;
  wire registroContadorCiclosReloj0_carry_n_2;
  wire registroContadorCiclosReloj0_carry_n_3;
  wire registroContadorCiclosReloj0_carry_n_4;
  wire registroContadorCiclosReloj0_carry_n_5;
  wire registroContadorCiclosReloj0_carry_n_6;
  wire registroContadorCiclosReloj0_carry_n_7;
  wire \registroContadorCiclosReloj[0]_i_1__2_n_0 ;
  wire \registroContadorCiclosReloj[10]_i_1__2_n_0 ;
  wire \registroContadorCiclosReloj[11]_i_1__2_n_0 ;
  wire \registroContadorCiclosReloj[12]_i_1__2_n_0 ;
  wire \registroContadorCiclosReloj[13]_i_1__2_n_0 ;
  wire \registroContadorCiclosReloj[13]_i_2__2_n_0 ;
  wire \registroContadorCiclosReloj[13]_i_3_n_0 ;
  wire \registroContadorCiclosReloj[13]_i_4_n_0 ;
  wire \registroContadorCiclosReloj[13]_i_5_n_0 ;
  wire \registroContadorCiclosReloj[13]_i_6_n_0 ;
  wire \registroContadorCiclosReloj[13]_i_7_n_0 ;
  wire \registroContadorCiclosReloj[1]_i_1__2_n_0 ;
  wire \registroContadorCiclosReloj[2]_i_1__2_n_0 ;
  wire \registroContadorCiclosReloj[3]_i_1__2_n_0 ;
  wire \registroContadorCiclosReloj[4]_i_1__2_n_0 ;
  wire \registroContadorCiclosReloj[5]_i_1__2_n_0 ;
  wire \registroContadorCiclosReloj[6]_i_1__2_n_0 ;
  wire \registroContadorCiclosReloj[7]_i_1__2_n_0 ;
  wire \registroContadorCiclosReloj[8]_i_1__2_n_0 ;
  wire \registroContadorCiclosReloj[9]_i_1__2_n_0 ;
  wire \registroContadorCiclosReloj_reg_n_0_[0] ;
  wire \registroContadorCiclosReloj_reg_n_0_[10] ;
  wire \registroContadorCiclosReloj_reg_n_0_[11] ;
  wire \registroContadorCiclosReloj_reg_n_0_[12] ;
  wire \registroContadorCiclosReloj_reg_n_0_[13] ;
  wire \registroContadorCiclosReloj_reg_n_0_[1] ;
  wire \registroContadorCiclosReloj_reg_n_0_[2] ;
  wire \registroContadorCiclosReloj_reg_n_0_[3] ;
  wire \registroContadorCiclosReloj_reg_n_0_[4] ;
  wire \registroContadorCiclosReloj_reg_n_0_[5] ;
  wire \registroContadorCiclosReloj_reg_n_0_[6] ;
  wire \registroContadorCiclosReloj_reg_n_0_[7] ;
  wire \registroContadorCiclosReloj_reg_n_0_[8] ;
  wire \registroContadorCiclosReloj_reg_n_0_[9] ;
  wire [3:0]\registroDatoConsumido_reg[3] ;
  wire \registroEstadoActual[0]_i_1__2_n_0 ;
  wire \registroEstadoActual[0]_i_2__0_n_0 ;
  wire \registroEstadoActual[0]_i_3__0_n_0 ;
  wire \registroEstadoActual[1]_i_1__0_n_0 ;
  wire \registroEstadoActual[1]_i_2_n_0 ;
  wire \registroEstadoActual[1]_i_3_n_0 ;
  wire \registroEstadoActual[1]_i_4_n_0 ;
  wire \registroEstadoActual[2]_i_1_n_0 ;
  wire \registroEstadoActual[2]_i_2_n_0 ;
  wire \registroEstadoActual[2]_i_3_n_0 ;
  wire \registroEstadoActual[2]_i_4_n_0 ;
  wire \registroEstadoActual_reg_n_0_[0] ;
  wire \registroEstadoActual_reg_n_0_[1] ;
  wire \registroEstadoActual_reg_n_0_[2] ;
  wire [3:0]registroIndiceBitRecibir;
  wire \registroIndiceBitRecibir[3]_i_1_n_0 ;
  wire \registroIndiceBitRecibir_reg_n_0_[0] ;
  wire \registroIndiceBitRecibir_reg_n_0_[1] ;
  wire \registroIndiceBitRecibir_reg_n_0_[2] ;
  wire \registroIndiceBitRecibir_reg_n_0_[3] ;
  wire registroRecepcionFinalizada_i_1_n_0;
  wire registroRecepcionFinalizada_reg_0;
  wire [0:0]registroRecepcionFinalizada_reg_1;
  wire reinicio_IBUF;
  wire [7:4]wireBitsRecibidosA;
  wire wireRecepcionBFinalizada;
  wire wireRecepcionCFinalizada;
  wire [3:0]NLW_registroContadorCiclosReloj0_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_registroContadorCiclosReloj0_carry__2_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \registroBitsRecibidos[4]_i_1 
       (.I0(\registroEstadoActual[2]_i_2_n_0 ),
        .I1(\registroEstadoActual_reg_n_0_[0] ),
        .I2(\registroEstadoActual_reg_n_0_[2] ),
        .I3(\registroIndiceBitRecibir_reg_n_0_[0] ),
        .I4(\registroIndiceBitRecibir_reg_n_0_[1] ),
        .I5(\registroBitsRecibidos[7]_i_2_n_0 ),
        .O(\registroBitsRecibidos[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \registroBitsRecibidos[5]_i_1 
       (.I0(\registroEstadoActual[2]_i_2_n_0 ),
        .I1(\registroEstadoActual_reg_n_0_[0] ),
        .I2(\registroEstadoActual_reg_n_0_[2] ),
        .I3(\registroIndiceBitRecibir_reg_n_0_[1] ),
        .I4(\registroIndiceBitRecibir_reg_n_0_[0] ),
        .I5(\registroBitsRecibidos[7]_i_2_n_0 ),
        .O(\registroBitsRecibidos[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \registroBitsRecibidos[6]_i_1 
       (.I0(\registroEstadoActual[2]_i_2_n_0 ),
        .I1(\registroEstadoActual_reg_n_0_[0] ),
        .I2(\registroEstadoActual_reg_n_0_[2] ),
        .I3(\registroIndiceBitRecibir_reg_n_0_[0] ),
        .I4(\registroIndiceBitRecibir_reg_n_0_[1] ),
        .I5(\registroBitsRecibidos[7]_i_2_n_0 ),
        .O(\registroBitsRecibidos[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \registroBitsRecibidos[7]_i_1 
       (.I0(\registroBitsRecibidos[7]_i_2_n_0 ),
        .I1(\registroIndiceBitRecibir_reg_n_0_[0] ),
        .I2(\registroIndiceBitRecibir_reg_n_0_[1] ),
        .I3(\registroEstadoActual[2]_i_2_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[0] ),
        .I5(\registroEstadoActual_reg_n_0_[2] ),
        .O(\registroBitsRecibidos[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \registroBitsRecibidos[7]_i_2 
       (.I0(\registroIndiceBitRecibir_reg_n_0_[2] ),
        .I1(\registroIndiceBitRecibir_reg_n_0_[3] ),
        .I2(\registroEstadoActual_reg_n_0_[1] ),
        .O(\registroBitsRecibidos[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registroBitsRecibidos_reg[4] 
       (.C(CLK),
        .CE(\registroBitsRecibidos[4]_i_1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(lineaRecepcionA_IBUF),
        .Q(wireBitsRecibidosA[4]));
  FDCE #(
    .INIT(1'b0)) 
    \registroBitsRecibidos_reg[5] 
       (.C(CLK),
        .CE(\registroBitsRecibidos[5]_i_1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(lineaRecepcionA_IBUF),
        .Q(wireBitsRecibidosA[5]));
  FDCE #(
    .INIT(1'b0)) 
    \registroBitsRecibidos_reg[6] 
       (.C(CLK),
        .CE(\registroBitsRecibidos[6]_i_1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(lineaRecepcionA_IBUF),
        .Q(wireBitsRecibidosA[6]));
  FDCE #(
    .INIT(1'b0)) 
    \registroBitsRecibidos_reg[7] 
       (.C(CLK),
        .CE(\registroBitsRecibidos[7]_i_1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(lineaRecepcionA_IBUF),
        .Q(wireBitsRecibidosA[7]));
  LUT3 #(
    .INIT(8'hFE)) 
    \registroCantidadContadorPaquetesProcesados[3]_i_1 
       (.I0(registroRecepcionFinalizada_reg_0),
        .I1(wireRecepcionCFinalizada),
        .I2(wireRecepcionBFinalizada),
        .O(registroRecepcionFinalizada_reg_1));
  CARRY4 registroContadorCiclosReloj0_carry
       (.CI(1'b0),
        .CO({registroContadorCiclosReloj0_carry_n_0,registroContadorCiclosReloj0_carry_n_1,registroContadorCiclosReloj0_carry_n_2,registroContadorCiclosReloj0_carry_n_3}),
        .CYINIT(\registroContadorCiclosReloj_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({registroContadorCiclosReloj0_carry_n_4,registroContadorCiclosReloj0_carry_n_5,registroContadorCiclosReloj0_carry_n_6,registroContadorCiclosReloj0_carry_n_7}),
        .S({\registroContadorCiclosReloj_reg_n_0_[4] ,\registroContadorCiclosReloj_reg_n_0_[3] ,\registroContadorCiclosReloj_reg_n_0_[2] ,\registroContadorCiclosReloj_reg_n_0_[1] }));
  CARRY4 registroContadorCiclosReloj0_carry__0
       (.CI(registroContadorCiclosReloj0_carry_n_0),
        .CO({registroContadorCiclosReloj0_carry__0_n_0,registroContadorCiclosReloj0_carry__0_n_1,registroContadorCiclosReloj0_carry__0_n_2,registroContadorCiclosReloj0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({registroContadorCiclosReloj0_carry__0_n_4,registroContadorCiclosReloj0_carry__0_n_5,registroContadorCiclosReloj0_carry__0_n_6,registroContadorCiclosReloj0_carry__0_n_7}),
        .S({\registroContadorCiclosReloj_reg_n_0_[8] ,\registroContadorCiclosReloj_reg_n_0_[7] ,\registroContadorCiclosReloj_reg_n_0_[6] ,\registroContadorCiclosReloj_reg_n_0_[5] }));
  CARRY4 registroContadorCiclosReloj0_carry__1
       (.CI(registroContadorCiclosReloj0_carry__0_n_0),
        .CO({registroContadorCiclosReloj0_carry__1_n_0,registroContadorCiclosReloj0_carry__1_n_1,registroContadorCiclosReloj0_carry__1_n_2,registroContadorCiclosReloj0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({registroContadorCiclosReloj0_carry__1_n_4,registroContadorCiclosReloj0_carry__1_n_5,registroContadorCiclosReloj0_carry__1_n_6,registroContadorCiclosReloj0_carry__1_n_7}),
        .S({\registroContadorCiclosReloj_reg_n_0_[12] ,\registroContadorCiclosReloj_reg_n_0_[11] ,\registroContadorCiclosReloj_reg_n_0_[10] ,\registroContadorCiclosReloj_reg_n_0_[9] }));
  CARRY4 registroContadorCiclosReloj0_carry__2
       (.CI(registroContadorCiclosReloj0_carry__1_n_0),
        .CO(NLW_registroContadorCiclosReloj0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_registroContadorCiclosReloj0_carry__2_O_UNCONNECTED[3:1],registroContadorCiclosReloj0_carry__2_n_7}),
        .S({1'b0,1'b0,1'b0,\registroContadorCiclosReloj_reg_n_0_[13] }));
  LUT6 #(
    .INIT(64'h0000A2023333A202)) 
    \registroContadorCiclosReloj[0]_i_1__2 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[0] ),
        .I2(\registroEstadoActual[1]_i_2_n_0 ),
        .I3(lineaRecepcionA_IBUF),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2_n_0 ),
        .O(\registroContadorCiclosReloj[0]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[10]_i_1__2 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry__1_n_6),
        .I2(\registroContadorCiclosReloj[13]_i_4_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2_n_0 ),
        .O(\registroContadorCiclosReloj[10]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[11]_i_1__2 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry__1_n_5),
        .I2(\registroContadorCiclosReloj[13]_i_4_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2_n_0 ),
        .O(\registroContadorCiclosReloj[11]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[12]_i_1__2 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry__1_n_4),
        .I2(\registroContadorCiclosReloj[13]_i_4_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2_n_0 ),
        .O(\registroContadorCiclosReloj[12]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'h5545)) 
    \registroContadorCiclosReloj[13]_i_1__2 
       (.I0(\registroEstadoActual_reg_n_0_[2] ),
        .I1(\registroContadorCiclosReloj[13]_i_3_n_0 ),
        .I2(\registroEstadoActual_reg_n_0_[0] ),
        .I3(\registroEstadoActual_reg_n_0_[1] ),
        .O(\registroContadorCiclosReloj[13]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[13]_i_2__2 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry__2_n_7),
        .I2(\registroContadorCiclosReloj[13]_i_4_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2_n_0 ),
        .O(\registroContadorCiclosReloj[13]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7FFFFFFFFF)) 
    \registroContadorCiclosReloj[13]_i_3 
       (.I0(lineaRecepcionA_IBUF),
        .I1(\registroContadorCiclosReloj_reg_n_0_[4] ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[10] ),
        .I3(\registroContadorCiclosReloj[13]_i_5_n_0 ),
        .I4(\registroEstadoActual[1]_i_4_n_0 ),
        .I5(\registroEstadoActual[1]_i_3_n_0 ),
        .O(\registroContadorCiclosReloj[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \registroContadorCiclosReloj[13]_i_4 
       (.I0(\registroContadorCiclosReloj[13]_i_6_n_0 ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[9] ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[8] ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I5(\registroContadorCiclosReloj[13]_i_7_n_0 ),
        .O(\registroContadorCiclosReloj[13]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \registroContadorCiclosReloj[13]_i_5 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[0] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .O(\registroContadorCiclosReloj[13]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \registroContadorCiclosReloj[13]_i_6 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[2] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[1] ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[7] ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[5] ),
        .O(\registroContadorCiclosReloj[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    \registroContadorCiclosReloj[13]_i_7 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[3] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[4] ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[6] ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[10] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[0] ),
        .I5(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .O(\registroContadorCiclosReloj[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[1]_i_1__2 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry_n_7),
        .I2(\registroContadorCiclosReloj[13]_i_4_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2_n_0 ),
        .O(\registroContadorCiclosReloj[1]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[2]_i_1__2 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry_n_6),
        .I2(\registroContadorCiclosReloj[13]_i_4_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2_n_0 ),
        .O(\registroContadorCiclosReloj[2]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[3]_i_1__2 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry_n_5),
        .I2(\registroContadorCiclosReloj[13]_i_4_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2_n_0 ),
        .O(\registroContadorCiclosReloj[3]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[4]_i_1__2 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry_n_4),
        .I2(\registroContadorCiclosReloj[13]_i_4_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2_n_0 ),
        .O(\registroContadorCiclosReloj[4]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[5]_i_1__2 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry__0_n_7),
        .I2(\registroContadorCiclosReloj[13]_i_4_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2_n_0 ),
        .O(\registroContadorCiclosReloj[5]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[6]_i_1__2 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry__0_n_6),
        .I2(\registroContadorCiclosReloj[13]_i_4_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2_n_0 ),
        .O(\registroContadorCiclosReloj[6]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[7]_i_1__2 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry__0_n_5),
        .I2(\registroContadorCiclosReloj[13]_i_4_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2_n_0 ),
        .O(\registroContadorCiclosReloj[7]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[8]_i_1__2 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry__0_n_4),
        .I2(\registroContadorCiclosReloj[13]_i_4_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2_n_0 ),
        .O(\registroContadorCiclosReloj[8]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h000008AACCCC08AA)) 
    \registroContadorCiclosReloj[9]_i_1__2 
       (.I0(\registroEstadoActual_reg_n_0_[0] ),
        .I1(registroContadorCiclosReloj0_carry__1_n_7),
        .I2(\registroContadorCiclosReloj[13]_i_4_n_0 ),
        .I3(\registroContadorCiclosReloj[13]_i_3_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[1] ),
        .I5(\registroEstadoActual[2]_i_2_n_0 ),
        .O(\registroContadorCiclosReloj[9]_i_1__2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[0] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__2_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[0]_i_1__2_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[10] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__2_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[10]_i_1__2_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[11] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__2_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[11]_i_1__2_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[12] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__2_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[12]_i_1__2_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[13] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__2_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[13]_i_2__2_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[1] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__2_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[1]_i_1__2_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[2] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__2_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[2]_i_1__2_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[3] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__2_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[3]_i_1__2_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[4] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__2_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[4]_i_1__2_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[5] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__2_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[5]_i_1__2_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[6] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__2_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[6]_i_1__2_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[7] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__2_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[7]_i_1__2_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[8] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__2_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[8]_i_1__2_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[9] 
       (.C(CLK),
        .CE(\registroContadorCiclosReloj[13]_i_1__2_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[9]_i_1__2_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \registroDatoConsumido[0]_i_1 
       (.I0(wireBitsRecibidosA[4]),
        .I1(registroRecepcionFinalizada_reg_0),
        .I2(Q[0]),
        .I3(wireRecepcionBFinalizada),
        .I4(\registroDatoConsumido_reg[3] [0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \registroDatoConsumido[1]_i_1 
       (.I0(wireBitsRecibidosA[5]),
        .I1(registroRecepcionFinalizada_reg_0),
        .I2(Q[1]),
        .I3(wireRecepcionBFinalizada),
        .I4(\registroDatoConsumido_reg[3] [1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \registroDatoConsumido[2]_i_1 
       (.I0(wireBitsRecibidosA[6]),
        .I1(registroRecepcionFinalizada_reg_0),
        .I2(Q[2]),
        .I3(wireRecepcionBFinalizada),
        .I4(\registroDatoConsumido_reg[3] [2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \registroDatoConsumido[3]_i_2 
       (.I0(wireBitsRecibidosA[7]),
        .I1(registroRecepcionFinalizada_reg_0),
        .I2(Q[3]),
        .I3(wireRecepcionBFinalizada),
        .I4(\registroDatoConsumido_reg[3] [3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h4444545454444444)) 
    \registroEstadoActual[0]_i_1__2 
       (.I0(\registroEstadoActual_reg_n_0_[2] ),
        .I1(\registroEstadoActual[0]_i_2__0_n_0 ),
        .I2(\registroEstadoActual_reg_n_0_[1] ),
        .I3(\registroIndiceBitRecibir_reg_n_0_[3] ),
        .I4(\registroEstadoActual[2]_i_2_n_0 ),
        .I5(\registroEstadoActual_reg_n_0_[0] ),
        .O(\registroEstadoActual[0]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFF35555)) 
    \registroEstadoActual[0]_i_2__0 
       (.I0(lineaRecepcionA_IBUF),
        .I1(\registroEstadoActual[1]_i_3_n_0 ),
        .I2(\registroEstadoActual[1]_i_4_n_0 ),
        .I3(\registroEstadoActual[0]_i_3__0_n_0 ),
        .I4(\registroEstadoActual_reg_n_0_[0] ),
        .I5(\registroEstadoActual_reg_n_0_[1] ),
        .O(\registroEstadoActual[0]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \registroEstadoActual[0]_i_3__0 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[0] ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[10] ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[4] ),
        .O(\registroEstadoActual[0]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000047CC44CC)) 
    \registroEstadoActual[1]_i_1__0 
       (.I0(\registroEstadoActual[2]_i_2_n_0 ),
        .I1(\registroEstadoActual_reg_n_0_[1] ),
        .I2(lineaRecepcionA_IBUF),
        .I3(\registroEstadoActual_reg_n_0_[0] ),
        .I4(\registroEstadoActual[1]_i_2_n_0 ),
        .I5(\registroEstadoActual_reg_n_0_[2] ),
        .O(\registroEstadoActual[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \registroEstadoActual[1]_i_2 
       (.I0(\registroEstadoActual[1]_i_3_n_0 ),
        .I1(\registroEstadoActual[1]_i_4_n_0 ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[0] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[10] ),
        .I5(\registroContadorCiclosReloj_reg_n_0_[4] ),
        .O(\registroEstadoActual[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \registroEstadoActual[1]_i_3 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[9] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[8] ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[2] ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[5] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[7] ),
        .I5(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .O(\registroEstadoActual[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \registroEstadoActual[1]_i_4 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[6] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[1] ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[3] ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .O(\registroEstadoActual[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \registroEstadoActual[2]_i_1 
       (.I0(\registroEstadoActual_reg_n_0_[2] ),
        .I1(\registroEstadoActual[2]_i_2_n_0 ),
        .I2(\registroEstadoActual_reg_n_0_[0] ),
        .I3(\registroEstadoActual_reg_n_0_[1] ),
        .O(\registroEstadoActual[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAAAAA88888888)) 
    \registroEstadoActual[2]_i_2 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[10] ),
        .I3(\registroEstadoActual[2]_i_3_n_0 ),
        .I4(\registroEstadoActual[2]_i_4_n_0 ),
        .I5(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .O(\registroEstadoActual[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \registroEstadoActual[2]_i_3 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[8] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[9] ),
        .O(\registroEstadoActual[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h557F)) 
    \registroEstadoActual[2]_i_4 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[7] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[4] ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[5] ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[6] ),
        .O(\registroEstadoActual[2]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registroEstadoActual_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroEstadoActual[0]_i_1__2_n_0 ),
        .Q(\registroEstadoActual_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroEstadoActual_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroEstadoActual[1]_i_1__0_n_0 ),
        .Q(\registroEstadoActual_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroEstadoActual_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroEstadoActual[2]_i_1_n_0 ),
        .Q(\registroEstadoActual_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \registroIndiceBitRecibir[0]_i_1 
       (.I0(\registroIndiceBitRecibir_reg_n_0_[3] ),
        .I1(\registroEstadoActual_reg_n_0_[1] ),
        .I2(\registroIndiceBitRecibir_reg_n_0_[0] ),
        .O(registroIndiceBitRecibir[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \registroIndiceBitRecibir[1]_i_1 
       (.I0(\registroEstadoActual_reg_n_0_[1] ),
        .I1(\registroIndiceBitRecibir_reg_n_0_[3] ),
        .I2(\registroIndiceBitRecibir_reg_n_0_[1] ),
        .I3(\registroIndiceBitRecibir_reg_n_0_[0] ),
        .O(registroIndiceBitRecibir[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h04444000)) 
    \registroIndiceBitRecibir[2]_i_1 
       (.I0(\registroIndiceBitRecibir_reg_n_0_[3] ),
        .I1(\registroEstadoActual_reg_n_0_[1] ),
        .I2(\registroIndiceBitRecibir_reg_n_0_[0] ),
        .I3(\registroIndiceBitRecibir_reg_n_0_[1] ),
        .I4(\registroIndiceBitRecibir_reg_n_0_[2] ),
        .O(registroIndiceBitRecibir[2]));
  LUT4 #(
    .INIT(16'h1011)) 
    \registroIndiceBitRecibir[3]_i_1 
       (.I0(\registroEstadoActual_reg_n_0_[2] ),
        .I1(\registroEstadoActual_reg_n_0_[0] ),
        .I2(\registroEstadoActual[2]_i_2_n_0 ),
        .I3(\registroEstadoActual_reg_n_0_[1] ),
        .O(\registroIndiceBitRecibir[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \registroIndiceBitRecibir[3]_i_2 
       (.I0(\registroIndiceBitRecibir_reg_n_0_[1] ),
        .I1(\registroIndiceBitRecibir_reg_n_0_[0] ),
        .I2(\registroEstadoActual_reg_n_0_[1] ),
        .I3(\registroIndiceBitRecibir_reg_n_0_[3] ),
        .I4(\registroIndiceBitRecibir_reg_n_0_[2] ),
        .O(registroIndiceBitRecibir[3]));
  FDCE #(
    .INIT(1'b0)) 
    \registroIndiceBitRecibir_reg[0] 
       (.C(CLK),
        .CE(\registroIndiceBitRecibir[3]_i_1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(registroIndiceBitRecibir[0]),
        .Q(\registroIndiceBitRecibir_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroIndiceBitRecibir_reg[1] 
       (.C(CLK),
        .CE(\registroIndiceBitRecibir[3]_i_1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(registroIndiceBitRecibir[1]),
        .Q(\registroIndiceBitRecibir_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroIndiceBitRecibir_reg[2] 
       (.C(CLK),
        .CE(\registroIndiceBitRecibir[3]_i_1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(registroIndiceBitRecibir[2]),
        .Q(\registroIndiceBitRecibir_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroIndiceBitRecibir_reg[3] 
       (.C(CLK),
        .CE(\registroIndiceBitRecibir[3]_i_1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(registroIndiceBitRecibir[3]),
        .Q(\registroIndiceBitRecibir_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hEEEE0080)) 
    registroRecepcionFinalizada_i_1
       (.I0(\registroEstadoActual_reg_n_0_[1] ),
        .I1(\registroEstadoActual_reg_n_0_[0] ),
        .I2(\registroEstadoActual[2]_i_2_n_0 ),
        .I3(\registroEstadoActual_reg_n_0_[2] ),
        .I4(registroRecepcionFinalizada_reg_0),
        .O(registroRecepcionFinalizada_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    registroRecepcionFinalizada_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(registroRecepcionFinalizada_i_1_n_0),
        .Q(registroRecepcionFinalizada_reg_0));
endmodule

module moduloTransmisorUART
   (lineaTransmisionC_OBUF,
    lineaTransmisionBits_reg_0,
    CLK,
    wireIniciarTransmisionC,
    reinicio_IBUF,
    D);
  output lineaTransmisionC_OBUF;
  input lineaTransmisionBits_reg_0;
  input CLK;
  input wireIniciarTransmisionC;
  input reinicio_IBUF;
  input [7:0]D;

  wire CLK;
  wire [7:0]D;
  wire lineaTransmisionBits_i_1__1_n_0;
  wire lineaTransmisionBits_i_2__1_n_0;
  wire lineaTransmisionBits_i_3__1_n_0;
  wire lineaTransmisionBits_reg_0;
  wire lineaTransmisionC_OBUF;
  wire \registroBitsTransmitir[7]_i_1__1_n_0 ;
  wire \registroBitsTransmitir_reg_n_0_[0] ;
  wire \registroBitsTransmitir_reg_n_0_[1] ;
  wire \registroBitsTransmitir_reg_n_0_[2] ;
  wire \registroBitsTransmitir_reg_n_0_[3] ;
  wire \registroBitsTransmitir_reg_n_0_[4] ;
  wire \registroBitsTransmitir_reg_n_0_[5] ;
  wire \registroBitsTransmitir_reg_n_0_[6] ;
  wire \registroBitsTransmitir_reg_n_0_[7] ;
  wire registroContadorCiclosReloj0_carry__0_n_0;
  wire registroContadorCiclosReloj0_carry__0_n_1;
  wire registroContadorCiclosReloj0_carry__0_n_2;
  wire registroContadorCiclosReloj0_carry__0_n_3;
  wire registroContadorCiclosReloj0_carry__0_n_4;
  wire registroContadorCiclosReloj0_carry__0_n_5;
  wire registroContadorCiclosReloj0_carry__0_n_6;
  wire registroContadorCiclosReloj0_carry__0_n_7;
  wire registroContadorCiclosReloj0_carry__1_n_0;
  wire registroContadorCiclosReloj0_carry__1_n_1;
  wire registroContadorCiclosReloj0_carry__1_n_2;
  wire registroContadorCiclosReloj0_carry__1_n_3;
  wire registroContadorCiclosReloj0_carry__1_n_4;
  wire registroContadorCiclosReloj0_carry__1_n_5;
  wire registroContadorCiclosReloj0_carry__1_n_6;
  wire registroContadorCiclosReloj0_carry__1_n_7;
  wire registroContadorCiclosReloj0_carry__2_n_7;
  wire registroContadorCiclosReloj0_carry_n_0;
  wire registroContadorCiclosReloj0_carry_n_1;
  wire registroContadorCiclosReloj0_carry_n_2;
  wire registroContadorCiclosReloj0_carry_n_3;
  wire registroContadorCiclosReloj0_carry_n_4;
  wire registroContadorCiclosReloj0_carry_n_5;
  wire registroContadorCiclosReloj0_carry_n_6;
  wire registroContadorCiclosReloj0_carry_n_7;
  wire \registroContadorCiclosReloj[0]_i_1__1_n_0 ;
  wire \registroContadorCiclosReloj[10]_i_1__1_n_0 ;
  wire \registroContadorCiclosReloj[11]_i_1__1_n_0 ;
  wire \registroContadorCiclosReloj[12]_i_1__1_n_0 ;
  wire \registroContadorCiclosReloj[13]_i_1__1_n_0 ;
  wire \registroContadorCiclosReloj[13]_i_2__1_n_0 ;
  wire \registroContadorCiclosReloj[1]_i_1__1_n_0 ;
  wire \registroContadorCiclosReloj[2]_i_1__1_n_0 ;
  wire \registroContadorCiclosReloj[3]_i_1__1_n_0 ;
  wire \registroContadorCiclosReloj[4]_i_1__1_n_0 ;
  wire \registroContadorCiclosReloj[5]_i_1__1_n_0 ;
  wire \registroContadorCiclosReloj[6]_i_1__1_n_0 ;
  wire \registroContadorCiclosReloj[7]_i_1__1_n_0 ;
  wire \registroContadorCiclosReloj[8]_i_1__1_n_0 ;
  wire \registroContadorCiclosReloj[9]_i_1__1_n_0 ;
  wire \registroContadorCiclosReloj_reg_n_0_[0] ;
  wire \registroContadorCiclosReloj_reg_n_0_[10] ;
  wire \registroContadorCiclosReloj_reg_n_0_[11] ;
  wire \registroContadorCiclosReloj_reg_n_0_[12] ;
  wire \registroContadorCiclosReloj_reg_n_0_[13] ;
  wire \registroContadorCiclosReloj_reg_n_0_[1] ;
  wire \registroContadorCiclosReloj_reg_n_0_[2] ;
  wire \registroContadorCiclosReloj_reg_n_0_[3] ;
  wire \registroContadorCiclosReloj_reg_n_0_[4] ;
  wire \registroContadorCiclosReloj_reg_n_0_[5] ;
  wire \registroContadorCiclosReloj_reg_n_0_[6] ;
  wire \registroContadorCiclosReloj_reg_n_0_[7] ;
  wire \registroContadorCiclosReloj_reg_n_0_[8] ;
  wire \registroContadorCiclosReloj_reg_n_0_[9] ;
  wire [1:0]registroEstadoActual;
  wire \registroEstadoActual[0]_i_1__1_n_0 ;
  wire \registroEstadoActual[0]_i_2__3_n_0 ;
  wire \registroEstadoActual[0]_i_3__3_n_0 ;
  wire \registroEstadoActual[1]_i_1__3_n_0 ;
  wire \registroIndiceBitTransmitir[0]_i_1__1_n_0 ;
  wire \registroIndiceBitTransmitir[1]_i_1__1_n_0 ;
  wire \registroIndiceBitTransmitir[2]_i_1__1_n_0 ;
  wire \registroIndiceBitTransmitir[3]_i_1__1_n_0 ;
  wire \registroIndiceBitTransmitir[3]_i_2__1_n_0 ;
  wire \registroIndiceBitTransmitir[3]_i_3__1_n_0 ;
  wire \registroIndiceBitTransmitir[3]_i_4__1_n_0 ;
  wire \registroIndiceBitTransmitir_reg_n_0_[0] ;
  wire \registroIndiceBitTransmitir_reg_n_0_[1] ;
  wire \registroIndiceBitTransmitir_reg_n_0_[2] ;
  wire \registroIndiceBitTransmitir_reg_n_0_[3] ;
  wire reinicio_IBUF;
  wire wireIniciarTransmisionC;
  wire [3:0]NLW_registroContadorCiclosReloj0_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_registroContadorCiclosReloj0_carry__2_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFF00B8FF)) 
    lineaTransmisionBits_i_1__1
       (.I0(lineaTransmisionBits_i_2__1_n_0),
        .I1(\registroIndiceBitTransmitir_reg_n_0_[2] ),
        .I2(lineaTransmisionBits_i_3__1_n_0),
        .I3(registroEstadoActual[1]),
        .I4(registroEstadoActual[0]),
        .O(lineaTransmisionBits_i_1__1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    lineaTransmisionBits_i_2__1
       (.I0(\registroBitsTransmitir_reg_n_0_[7] ),
        .I1(\registroBitsTransmitir_reg_n_0_[6] ),
        .I2(\registroIndiceBitTransmitir_reg_n_0_[1] ),
        .I3(\registroBitsTransmitir_reg_n_0_[5] ),
        .I4(\registroIndiceBitTransmitir_reg_n_0_[0] ),
        .I5(\registroBitsTransmitir_reg_n_0_[4] ),
        .O(lineaTransmisionBits_i_2__1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    lineaTransmisionBits_i_3__1
       (.I0(\registroBitsTransmitir_reg_n_0_[3] ),
        .I1(\registroBitsTransmitir_reg_n_0_[2] ),
        .I2(\registroIndiceBitTransmitir_reg_n_0_[1] ),
        .I3(\registroBitsTransmitir_reg_n_0_[1] ),
        .I4(\registroIndiceBitTransmitir_reg_n_0_[0] ),
        .I5(\registroBitsTransmitir_reg_n_0_[0] ),
        .O(lineaTransmisionBits_i_3__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    lineaTransmisionBits_reg
       (.C(CLK),
        .CE(lineaTransmisionBits_reg_0),
        .D(lineaTransmisionBits_i_1__1_n_0),
        .Q(lineaTransmisionC_OBUF),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h02)) 
    \registroBitsTransmitir[7]_i_1__1 
       (.I0(wireIniciarTransmisionC),
        .I1(registroEstadoActual[1]),
        .I2(registroEstadoActual[0]),
        .O(\registroBitsTransmitir[7]_i_1__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registroBitsTransmitir_reg[0] 
       (.C(CLK),
        .CE(\registroBitsTransmitir[7]_i_1__1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(D[0]),
        .Q(\registroBitsTransmitir_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroBitsTransmitir_reg[1] 
       (.C(CLK),
        .CE(\registroBitsTransmitir[7]_i_1__1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(D[1]),
        .Q(\registroBitsTransmitir_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroBitsTransmitir_reg[2] 
       (.C(CLK),
        .CE(\registroBitsTransmitir[7]_i_1__1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(D[2]),
        .Q(\registroBitsTransmitir_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroBitsTransmitir_reg[3] 
       (.C(CLK),
        .CE(\registroBitsTransmitir[7]_i_1__1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(D[3]),
        .Q(\registroBitsTransmitir_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroBitsTransmitir_reg[4] 
       (.C(CLK),
        .CE(\registroBitsTransmitir[7]_i_1__1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(D[4]),
        .Q(\registroBitsTransmitir_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroBitsTransmitir_reg[5] 
       (.C(CLK),
        .CE(\registroBitsTransmitir[7]_i_1__1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(D[5]),
        .Q(\registroBitsTransmitir_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroBitsTransmitir_reg[6] 
       (.C(CLK),
        .CE(\registroBitsTransmitir[7]_i_1__1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(D[6]),
        .Q(\registroBitsTransmitir_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroBitsTransmitir_reg[7] 
       (.C(CLK),
        .CE(\registroBitsTransmitir[7]_i_1__1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(D[7]),
        .Q(\registroBitsTransmitir_reg_n_0_[7] ));
  CARRY4 registroContadorCiclosReloj0_carry
       (.CI(1'b0),
        .CO({registroContadorCiclosReloj0_carry_n_0,registroContadorCiclosReloj0_carry_n_1,registroContadorCiclosReloj0_carry_n_2,registroContadorCiclosReloj0_carry_n_3}),
        .CYINIT(\registroContadorCiclosReloj_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({registroContadorCiclosReloj0_carry_n_4,registroContadorCiclosReloj0_carry_n_5,registroContadorCiclosReloj0_carry_n_6,registroContadorCiclosReloj0_carry_n_7}),
        .S({\registroContadorCiclosReloj_reg_n_0_[4] ,\registroContadorCiclosReloj_reg_n_0_[3] ,\registroContadorCiclosReloj_reg_n_0_[2] ,\registroContadorCiclosReloj_reg_n_0_[1] }));
  CARRY4 registroContadorCiclosReloj0_carry__0
       (.CI(registroContadorCiclosReloj0_carry_n_0),
        .CO({registroContadorCiclosReloj0_carry__0_n_0,registroContadorCiclosReloj0_carry__0_n_1,registroContadorCiclosReloj0_carry__0_n_2,registroContadorCiclosReloj0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({registroContadorCiclosReloj0_carry__0_n_4,registroContadorCiclosReloj0_carry__0_n_5,registroContadorCiclosReloj0_carry__0_n_6,registroContadorCiclosReloj0_carry__0_n_7}),
        .S({\registroContadorCiclosReloj_reg_n_0_[8] ,\registroContadorCiclosReloj_reg_n_0_[7] ,\registroContadorCiclosReloj_reg_n_0_[6] ,\registroContadorCiclosReloj_reg_n_0_[5] }));
  CARRY4 registroContadorCiclosReloj0_carry__1
       (.CI(registroContadorCiclosReloj0_carry__0_n_0),
        .CO({registroContadorCiclosReloj0_carry__1_n_0,registroContadorCiclosReloj0_carry__1_n_1,registroContadorCiclosReloj0_carry__1_n_2,registroContadorCiclosReloj0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({registroContadorCiclosReloj0_carry__1_n_4,registroContadorCiclosReloj0_carry__1_n_5,registroContadorCiclosReloj0_carry__1_n_6,registroContadorCiclosReloj0_carry__1_n_7}),
        .S({\registroContadorCiclosReloj_reg_n_0_[12] ,\registroContadorCiclosReloj_reg_n_0_[11] ,\registroContadorCiclosReloj_reg_n_0_[10] ,\registroContadorCiclosReloj_reg_n_0_[9] }));
  CARRY4 registroContadorCiclosReloj0_carry__2
       (.CI(registroContadorCiclosReloj0_carry__1_n_0),
        .CO(NLW_registroContadorCiclosReloj0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_registroContadorCiclosReloj0_carry__2_O_UNCONNECTED[3:1],registroContadorCiclosReloj0_carry__2_n_7}),
        .S({1'b0,1'b0,1'b0,\registroContadorCiclosReloj_reg_n_0_[13] }));
  LUT6 #(
    .INIT(64'h1011555500000000)) 
    \registroContadorCiclosReloj[0]_i_1__1 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[0] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3__1_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2__1_n_0 ),
        .O(\registroContadorCiclosReloj[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[10]_i_1__1 
       (.I0(registroContadorCiclosReloj0_carry__1_n_6),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3__1_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2__1_n_0 ),
        .O(\registroContadorCiclosReloj[10]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[11]_i_1__1 
       (.I0(registroContadorCiclosReloj0_carry__1_n_5),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3__1_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2__1_n_0 ),
        .O(\registroContadorCiclosReloj[11]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[12]_i_1__1 
       (.I0(registroContadorCiclosReloj0_carry__1_n_4),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3__1_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2__1_n_0 ),
        .O(\registroContadorCiclosReloj[12]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[13]_i_1__1 
       (.I0(registroContadorCiclosReloj0_carry__2_n_7),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3__1_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2__1_n_0 ),
        .O(\registroContadorCiclosReloj[13]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \registroContadorCiclosReloj[13]_i_2__1 
       (.I0(registroEstadoActual[0]),
        .I1(registroEstadoActual[1]),
        .O(\registroContadorCiclosReloj[13]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[1]_i_1__1 
       (.I0(registroContadorCiclosReloj0_carry_n_7),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3__1_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2__1_n_0 ),
        .O(\registroContadorCiclosReloj[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[2]_i_1__1 
       (.I0(registroContadorCiclosReloj0_carry_n_6),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3__1_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2__1_n_0 ),
        .O(\registroContadorCiclosReloj[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[3]_i_1__1 
       (.I0(registroContadorCiclosReloj0_carry_n_5),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3__1_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2__1_n_0 ),
        .O(\registroContadorCiclosReloj[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[4]_i_1__1 
       (.I0(registroContadorCiclosReloj0_carry_n_4),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3__1_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2__1_n_0 ),
        .O(\registroContadorCiclosReloj[4]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[5]_i_1__1 
       (.I0(registroContadorCiclosReloj0_carry__0_n_7),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3__1_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2__1_n_0 ),
        .O(\registroContadorCiclosReloj[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[6]_i_1__1 
       (.I0(registroContadorCiclosReloj0_carry__0_n_6),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3__1_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2__1_n_0 ),
        .O(\registroContadorCiclosReloj[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[7]_i_1__1 
       (.I0(registroContadorCiclosReloj0_carry__0_n_5),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3__1_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2__1_n_0 ),
        .O(\registroContadorCiclosReloj[7]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[8]_i_1__1 
       (.I0(registroContadorCiclosReloj0_carry__0_n_4),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3__1_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2__1_n_0 ),
        .O(\registroContadorCiclosReloj[8]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[9]_i_1__1 
       (.I0(registroContadorCiclosReloj0_carry__1_n_7),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3__1_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2__1_n_0 ),
        .O(\registroContadorCiclosReloj[9]_i_1__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[0]_i_1__1_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[10]_i_1__1_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[11]_i_1__1_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[12]_i_1__1_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[13]_i_1__1_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[1]_i_1__1_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[2]_i_1__1_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[3]_i_1__1_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[4]_i_1__1_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[5]_i_1__1_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[6]_i_1__1_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[7]_i_1__1_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[8]_i_1__1_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[9]_i_1__1_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'hAA4AFF5FAA4AAA0A)) 
    \registroEstadoActual[0]_i_1__1 
       (.I0(registroEstadoActual[0]),
        .I1(\registroIndiceBitTransmitir_reg_n_0_[3] ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I3(\registroEstadoActual[0]_i_2__3_n_0 ),
        .I4(registroEstadoActual[1]),
        .I5(wireIniciarTransmisionC),
        .O(\registroEstadoActual[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000555577F7)) 
    \registroEstadoActual[0]_i_2__3 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[7] ),
        .I2(\registroIndiceBitTransmitir[3]_i_4__1_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[6] ),
        .I4(\registroEstadoActual[0]_i_3__3_n_0 ),
        .I5(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .O(\registroEstadoActual[0]_i_2__3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \registroEstadoActual[0]_i_3__3 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[8] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[10] ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[9] ),
        .O(\registroEstadoActual[0]_i_3__3_n_0 ));
  LUT6 #(
    .INIT(64'h6A6A6A6AAAAA6AAA)) 
    \registroEstadoActual[1]_i_1__3 
       (.I0(registroEstadoActual[1]),
        .I1(registroEstadoActual[0]),
        .I2(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroIndiceBitTransmitir[3]_i_3__1_n_0 ),
        .I5(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .O(\registroEstadoActual[1]_i_1__3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registroEstadoActual_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroEstadoActual[0]_i_1__1_n_0 ),
        .Q(registroEstadoActual[0]));
  FDCE #(
    .INIT(1'b0)) 
    \registroEstadoActual_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroEstadoActual[1]_i_1__3_n_0 ),
        .Q(registroEstadoActual[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \registroIndiceBitTransmitir[0]_i_1__1 
       (.I0(\registroIndiceBitTransmitir_reg_n_0_[0] ),
        .I1(\registroIndiceBitTransmitir_reg_n_0_[3] ),
        .I2(registroEstadoActual[1]),
        .O(\registroIndiceBitTransmitir[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h1400)) 
    \registroIndiceBitTransmitir[1]_i_1__1 
       (.I0(\registroIndiceBitTransmitir_reg_n_0_[3] ),
        .I1(\registroIndiceBitTransmitir_reg_n_0_[0] ),
        .I2(\registroIndiceBitTransmitir_reg_n_0_[1] ),
        .I3(registroEstadoActual[1]),
        .O(\registroIndiceBitTransmitir[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h15400000)) 
    \registroIndiceBitTransmitir[2]_i_1__1 
       (.I0(\registroIndiceBitTransmitir_reg_n_0_[3] ),
        .I1(\registroIndiceBitTransmitir_reg_n_0_[0] ),
        .I2(\registroIndiceBitTransmitir_reg_n_0_[1] ),
        .I3(\registroIndiceBitTransmitir_reg_n_0_[2] ),
        .I4(registroEstadoActual[1]),
        .O(\registroIndiceBitTransmitir[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h4544000055555555)) 
    \registroIndiceBitTransmitir[3]_i_1__1 
       (.I0(registroEstadoActual[0]),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3__1_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(registroEstadoActual[1]),
        .O(\registroIndiceBitTransmitir[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \registroIndiceBitTransmitir[3]_i_2__1 
       (.I0(\registroIndiceBitTransmitir_reg_n_0_[3] ),
        .I1(\registroIndiceBitTransmitir_reg_n_0_[1] ),
        .I2(\registroIndiceBitTransmitir_reg_n_0_[0] ),
        .I3(\registroIndiceBitTransmitir_reg_n_0_[2] ),
        .I4(registroEstadoActual[1]),
        .O(\registroIndiceBitTransmitir[3]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000005D)) 
    \registroIndiceBitTransmitir[3]_i_3__1 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[7] ),
        .I1(\registroIndiceBitTransmitir[3]_i_4__1_n_0 ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[6] ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[9] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[10] ),
        .I5(\registroContadorCiclosReloj_reg_n_0_[8] ),
        .O(\registroIndiceBitTransmitir[3]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFFFFFFFFFF)) 
    \registroIndiceBitTransmitir[3]_i_4__1 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[0] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[1] ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[3] ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[2] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[5] ),
        .I5(\registroContadorCiclosReloj_reg_n_0_[4] ),
        .O(\registroIndiceBitTransmitir[3]_i_4__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registroIndiceBitTransmitir_reg[0] 
       (.C(CLK),
        .CE(\registroIndiceBitTransmitir[3]_i_1__1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroIndiceBitTransmitir[0]_i_1__1_n_0 ),
        .Q(\registroIndiceBitTransmitir_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroIndiceBitTransmitir_reg[1] 
       (.C(CLK),
        .CE(\registroIndiceBitTransmitir[3]_i_1__1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroIndiceBitTransmitir[1]_i_1__1_n_0 ),
        .Q(\registroIndiceBitTransmitir_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroIndiceBitTransmitir_reg[2] 
       (.C(CLK),
        .CE(\registroIndiceBitTransmitir[3]_i_1__1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroIndiceBitTransmitir[2]_i_1__1_n_0 ),
        .Q(\registroIndiceBitTransmitir_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroIndiceBitTransmitir_reg[3] 
       (.C(CLK),
        .CE(\registroIndiceBitTransmitir[3]_i_1__1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroIndiceBitTransmitir[3]_i_2__1_n_0 ),
        .Q(\registroIndiceBitTransmitir_reg_n_0_[3] ));
endmodule

(* ORIG_REF_NAME = "moduloTransmisorUART" *) 
module moduloTransmisorUART_3
   (lineaTransmisionB_OBUF,
    lineaTransmisionBits_reg_0,
    CLK,
    wireIniciarTransmisionB,
    reinicio_IBUF,
    D);
  output lineaTransmisionB_OBUF;
  input lineaTransmisionBits_reg_0;
  input CLK;
  input wireIniciarTransmisionB;
  input reinicio_IBUF;
  input [7:0]D;

  wire CLK;
  wire [7:0]D;
  wire lineaTransmisionB_OBUF;
  wire lineaTransmisionBits_i_1__0_n_0;
  wire lineaTransmisionBits_i_2__0_n_0;
  wire lineaTransmisionBits_i_3__0_n_0;
  wire lineaTransmisionBits_reg_0;
  wire \registroBitsTransmitir[7]_i_1__0_n_0 ;
  wire \registroBitsTransmitir_reg_n_0_[0] ;
  wire \registroBitsTransmitir_reg_n_0_[1] ;
  wire \registroBitsTransmitir_reg_n_0_[2] ;
  wire \registroBitsTransmitir_reg_n_0_[3] ;
  wire \registroBitsTransmitir_reg_n_0_[4] ;
  wire \registroBitsTransmitir_reg_n_0_[5] ;
  wire \registroBitsTransmitir_reg_n_0_[6] ;
  wire \registroBitsTransmitir_reg_n_0_[7] ;
  wire registroContadorCiclosReloj0_carry__0_n_0;
  wire registroContadorCiclosReloj0_carry__0_n_1;
  wire registroContadorCiclosReloj0_carry__0_n_2;
  wire registroContadorCiclosReloj0_carry__0_n_3;
  wire registroContadorCiclosReloj0_carry__0_n_4;
  wire registroContadorCiclosReloj0_carry__0_n_5;
  wire registroContadorCiclosReloj0_carry__0_n_6;
  wire registroContadorCiclosReloj0_carry__0_n_7;
  wire registroContadorCiclosReloj0_carry__1_n_0;
  wire registroContadorCiclosReloj0_carry__1_n_1;
  wire registroContadorCiclosReloj0_carry__1_n_2;
  wire registroContadorCiclosReloj0_carry__1_n_3;
  wire registroContadorCiclosReloj0_carry__1_n_4;
  wire registroContadorCiclosReloj0_carry__1_n_5;
  wire registroContadorCiclosReloj0_carry__1_n_6;
  wire registroContadorCiclosReloj0_carry__1_n_7;
  wire registroContadorCiclosReloj0_carry__2_n_7;
  wire registroContadorCiclosReloj0_carry_n_0;
  wire registroContadorCiclosReloj0_carry_n_1;
  wire registroContadorCiclosReloj0_carry_n_2;
  wire registroContadorCiclosReloj0_carry_n_3;
  wire registroContadorCiclosReloj0_carry_n_4;
  wire registroContadorCiclosReloj0_carry_n_5;
  wire registroContadorCiclosReloj0_carry_n_6;
  wire registroContadorCiclosReloj0_carry_n_7;
  wire \registroContadorCiclosReloj[0]_i_1__0_n_0 ;
  wire \registroContadorCiclosReloj[10]_i_1__0_n_0 ;
  wire \registroContadorCiclosReloj[11]_i_1__0_n_0 ;
  wire \registroContadorCiclosReloj[12]_i_1__0_n_0 ;
  wire \registroContadorCiclosReloj[13]_i_1__0_n_0 ;
  wire \registroContadorCiclosReloj[13]_i_2__0_n_0 ;
  wire \registroContadorCiclosReloj[1]_i_1__0_n_0 ;
  wire \registroContadorCiclosReloj[2]_i_1__0_n_0 ;
  wire \registroContadorCiclosReloj[3]_i_1__0_n_0 ;
  wire \registroContadorCiclosReloj[4]_i_1__0_n_0 ;
  wire \registroContadorCiclosReloj[5]_i_1__0_n_0 ;
  wire \registroContadorCiclosReloj[6]_i_1__0_n_0 ;
  wire \registroContadorCiclosReloj[7]_i_1__0_n_0 ;
  wire \registroContadorCiclosReloj[8]_i_1__0_n_0 ;
  wire \registroContadorCiclosReloj[9]_i_1__0_n_0 ;
  wire \registroContadorCiclosReloj_reg_n_0_[0] ;
  wire \registroContadorCiclosReloj_reg_n_0_[10] ;
  wire \registroContadorCiclosReloj_reg_n_0_[11] ;
  wire \registroContadorCiclosReloj_reg_n_0_[12] ;
  wire \registroContadorCiclosReloj_reg_n_0_[13] ;
  wire \registroContadorCiclosReloj_reg_n_0_[1] ;
  wire \registroContadorCiclosReloj_reg_n_0_[2] ;
  wire \registroContadorCiclosReloj_reg_n_0_[3] ;
  wire \registroContadorCiclosReloj_reg_n_0_[4] ;
  wire \registroContadorCiclosReloj_reg_n_0_[5] ;
  wire \registroContadorCiclosReloj_reg_n_0_[6] ;
  wire \registroContadorCiclosReloj_reg_n_0_[7] ;
  wire \registroContadorCiclosReloj_reg_n_0_[8] ;
  wire \registroContadorCiclosReloj_reg_n_0_[9] ;
  wire [1:0]registroEstadoActual;
  wire \registroEstadoActual[0]_i_1__0_n_0 ;
  wire \registroEstadoActual[0]_i_2__1_n_0 ;
  wire \registroEstadoActual[0]_i_3__1_n_0 ;
  wire \registroEstadoActual[1]_i_1__1_n_0 ;
  wire \registroIndiceBitTransmitir[0]_i_1__0_n_0 ;
  wire \registroIndiceBitTransmitir[1]_i_1__0_n_0 ;
  wire \registroIndiceBitTransmitir[2]_i_1__0_n_0 ;
  wire \registroIndiceBitTransmitir[3]_i_1__0_n_0 ;
  wire \registroIndiceBitTransmitir[3]_i_2__0_n_0 ;
  wire \registroIndiceBitTransmitir[3]_i_3__0_n_0 ;
  wire \registroIndiceBitTransmitir[3]_i_4__0_n_0 ;
  wire \registroIndiceBitTransmitir_reg_n_0_[0] ;
  wire \registroIndiceBitTransmitir_reg_n_0_[1] ;
  wire \registroIndiceBitTransmitir_reg_n_0_[2] ;
  wire \registroIndiceBitTransmitir_reg_n_0_[3] ;
  wire reinicio_IBUF;
  wire wireIniciarTransmisionB;
  wire [3:0]NLW_registroContadorCiclosReloj0_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_registroContadorCiclosReloj0_carry__2_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFF00B8FF)) 
    lineaTransmisionBits_i_1__0
       (.I0(lineaTransmisionBits_i_2__0_n_0),
        .I1(\registroIndiceBitTransmitir_reg_n_0_[2] ),
        .I2(lineaTransmisionBits_i_3__0_n_0),
        .I3(registroEstadoActual[1]),
        .I4(registroEstadoActual[0]),
        .O(lineaTransmisionBits_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    lineaTransmisionBits_i_2__0
       (.I0(\registroBitsTransmitir_reg_n_0_[7] ),
        .I1(\registroBitsTransmitir_reg_n_0_[6] ),
        .I2(\registroIndiceBitTransmitir_reg_n_0_[1] ),
        .I3(\registroBitsTransmitir_reg_n_0_[5] ),
        .I4(\registroIndiceBitTransmitir_reg_n_0_[0] ),
        .I5(\registroBitsTransmitir_reg_n_0_[4] ),
        .O(lineaTransmisionBits_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    lineaTransmisionBits_i_3__0
       (.I0(\registroBitsTransmitir_reg_n_0_[3] ),
        .I1(\registroBitsTransmitir_reg_n_0_[2] ),
        .I2(\registroIndiceBitTransmitir_reg_n_0_[1] ),
        .I3(\registroBitsTransmitir_reg_n_0_[1] ),
        .I4(\registroIndiceBitTransmitir_reg_n_0_[0] ),
        .I5(\registroBitsTransmitir_reg_n_0_[0] ),
        .O(lineaTransmisionBits_i_3__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    lineaTransmisionBits_reg
       (.C(CLK),
        .CE(lineaTransmisionBits_reg_0),
        .D(lineaTransmisionBits_i_1__0_n_0),
        .Q(lineaTransmisionB_OBUF),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h02)) 
    \registroBitsTransmitir[7]_i_1__0 
       (.I0(wireIniciarTransmisionB),
        .I1(registroEstadoActual[1]),
        .I2(registroEstadoActual[0]),
        .O(\registroBitsTransmitir[7]_i_1__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registroBitsTransmitir_reg[0] 
       (.C(CLK),
        .CE(\registroBitsTransmitir[7]_i_1__0_n_0 ),
        .CLR(reinicio_IBUF),
        .D(D[0]),
        .Q(\registroBitsTransmitir_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroBitsTransmitir_reg[1] 
       (.C(CLK),
        .CE(\registroBitsTransmitir[7]_i_1__0_n_0 ),
        .CLR(reinicio_IBUF),
        .D(D[1]),
        .Q(\registroBitsTransmitir_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroBitsTransmitir_reg[2] 
       (.C(CLK),
        .CE(\registroBitsTransmitir[7]_i_1__0_n_0 ),
        .CLR(reinicio_IBUF),
        .D(D[2]),
        .Q(\registroBitsTransmitir_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroBitsTransmitir_reg[3] 
       (.C(CLK),
        .CE(\registroBitsTransmitir[7]_i_1__0_n_0 ),
        .CLR(reinicio_IBUF),
        .D(D[3]),
        .Q(\registroBitsTransmitir_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroBitsTransmitir_reg[4] 
       (.C(CLK),
        .CE(\registroBitsTransmitir[7]_i_1__0_n_0 ),
        .CLR(reinicio_IBUF),
        .D(D[4]),
        .Q(\registroBitsTransmitir_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroBitsTransmitir_reg[5] 
       (.C(CLK),
        .CE(\registroBitsTransmitir[7]_i_1__0_n_0 ),
        .CLR(reinicio_IBUF),
        .D(D[5]),
        .Q(\registroBitsTransmitir_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroBitsTransmitir_reg[6] 
       (.C(CLK),
        .CE(\registroBitsTransmitir[7]_i_1__0_n_0 ),
        .CLR(reinicio_IBUF),
        .D(D[6]),
        .Q(\registroBitsTransmitir_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroBitsTransmitir_reg[7] 
       (.C(CLK),
        .CE(\registroBitsTransmitir[7]_i_1__0_n_0 ),
        .CLR(reinicio_IBUF),
        .D(D[7]),
        .Q(\registroBitsTransmitir_reg_n_0_[7] ));
  CARRY4 registroContadorCiclosReloj0_carry
       (.CI(1'b0),
        .CO({registroContadorCiclosReloj0_carry_n_0,registroContadorCiclosReloj0_carry_n_1,registroContadorCiclosReloj0_carry_n_2,registroContadorCiclosReloj0_carry_n_3}),
        .CYINIT(\registroContadorCiclosReloj_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({registroContadorCiclosReloj0_carry_n_4,registroContadorCiclosReloj0_carry_n_5,registroContadorCiclosReloj0_carry_n_6,registroContadorCiclosReloj0_carry_n_7}),
        .S({\registroContadorCiclosReloj_reg_n_0_[4] ,\registroContadorCiclosReloj_reg_n_0_[3] ,\registroContadorCiclosReloj_reg_n_0_[2] ,\registroContadorCiclosReloj_reg_n_0_[1] }));
  CARRY4 registroContadorCiclosReloj0_carry__0
       (.CI(registroContadorCiclosReloj0_carry_n_0),
        .CO({registroContadorCiclosReloj0_carry__0_n_0,registroContadorCiclosReloj0_carry__0_n_1,registroContadorCiclosReloj0_carry__0_n_2,registroContadorCiclosReloj0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({registroContadorCiclosReloj0_carry__0_n_4,registroContadorCiclosReloj0_carry__0_n_5,registroContadorCiclosReloj0_carry__0_n_6,registroContadorCiclosReloj0_carry__0_n_7}),
        .S({\registroContadorCiclosReloj_reg_n_0_[8] ,\registroContadorCiclosReloj_reg_n_0_[7] ,\registroContadorCiclosReloj_reg_n_0_[6] ,\registroContadorCiclosReloj_reg_n_0_[5] }));
  CARRY4 registroContadorCiclosReloj0_carry__1
       (.CI(registroContadorCiclosReloj0_carry__0_n_0),
        .CO({registroContadorCiclosReloj0_carry__1_n_0,registroContadorCiclosReloj0_carry__1_n_1,registroContadorCiclosReloj0_carry__1_n_2,registroContadorCiclosReloj0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({registroContadorCiclosReloj0_carry__1_n_4,registroContadorCiclosReloj0_carry__1_n_5,registroContadorCiclosReloj0_carry__1_n_6,registroContadorCiclosReloj0_carry__1_n_7}),
        .S({\registroContadorCiclosReloj_reg_n_0_[12] ,\registroContadorCiclosReloj_reg_n_0_[11] ,\registroContadorCiclosReloj_reg_n_0_[10] ,\registroContadorCiclosReloj_reg_n_0_[9] }));
  CARRY4 registroContadorCiclosReloj0_carry__2
       (.CI(registroContadorCiclosReloj0_carry__1_n_0),
        .CO(NLW_registroContadorCiclosReloj0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_registroContadorCiclosReloj0_carry__2_O_UNCONNECTED[3:1],registroContadorCiclosReloj0_carry__2_n_7}),
        .S({1'b0,1'b0,1'b0,\registroContadorCiclosReloj_reg_n_0_[13] }));
  LUT6 #(
    .INIT(64'h1011555500000000)) 
    \registroContadorCiclosReloj[0]_i_1__0 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[0] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3__0_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2__0_n_0 ),
        .O(\registroContadorCiclosReloj[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[10]_i_1__0 
       (.I0(registroContadorCiclosReloj0_carry__1_n_6),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3__0_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2__0_n_0 ),
        .O(\registroContadorCiclosReloj[10]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[11]_i_1__0 
       (.I0(registroContadorCiclosReloj0_carry__1_n_5),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3__0_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2__0_n_0 ),
        .O(\registroContadorCiclosReloj[11]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[12]_i_1__0 
       (.I0(registroContadorCiclosReloj0_carry__1_n_4),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3__0_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2__0_n_0 ),
        .O(\registroContadorCiclosReloj[12]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[13]_i_1__0 
       (.I0(registroContadorCiclosReloj0_carry__2_n_7),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3__0_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2__0_n_0 ),
        .O(\registroContadorCiclosReloj[13]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \registroContadorCiclosReloj[13]_i_2__0 
       (.I0(registroEstadoActual[0]),
        .I1(registroEstadoActual[1]),
        .O(\registroContadorCiclosReloj[13]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[1]_i_1__0 
       (.I0(registroContadorCiclosReloj0_carry_n_7),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3__0_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2__0_n_0 ),
        .O(\registroContadorCiclosReloj[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[2]_i_1__0 
       (.I0(registroContadorCiclosReloj0_carry_n_6),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3__0_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2__0_n_0 ),
        .O(\registroContadorCiclosReloj[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[3]_i_1__0 
       (.I0(registroContadorCiclosReloj0_carry_n_5),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3__0_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2__0_n_0 ),
        .O(\registroContadorCiclosReloj[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[4]_i_1__0 
       (.I0(registroContadorCiclosReloj0_carry_n_4),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3__0_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2__0_n_0 ),
        .O(\registroContadorCiclosReloj[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[5]_i_1__0 
       (.I0(registroContadorCiclosReloj0_carry__0_n_7),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3__0_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2__0_n_0 ),
        .O(\registroContadorCiclosReloj[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[6]_i_1__0 
       (.I0(registroContadorCiclosReloj0_carry__0_n_6),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3__0_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2__0_n_0 ),
        .O(\registroContadorCiclosReloj[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[7]_i_1__0 
       (.I0(registroContadorCiclosReloj0_carry__0_n_5),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3__0_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2__0_n_0 ),
        .O(\registroContadorCiclosReloj[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[8]_i_1__0 
       (.I0(registroContadorCiclosReloj0_carry__0_n_4),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3__0_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2__0_n_0 ),
        .O(\registroContadorCiclosReloj[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[9]_i_1__0 
       (.I0(registroContadorCiclosReloj0_carry__1_n_7),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3__0_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2__0_n_0 ),
        .O(\registroContadorCiclosReloj[9]_i_1__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[0]_i_1__0_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[10]_i_1__0_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[11]_i_1__0_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[12]_i_1__0_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[13]_i_1__0_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[1]_i_1__0_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[2]_i_1__0_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[3]_i_1__0_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[4]_i_1__0_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[5]_i_1__0_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[6]_i_1__0_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[7]_i_1__0_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[8]_i_1__0_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroContadorCiclosReloj[9]_i_1__0_n_0 ),
        .Q(\registroContadorCiclosReloj_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'hAA4AFF5FAA4AAA0A)) 
    \registroEstadoActual[0]_i_1__0 
       (.I0(registroEstadoActual[0]),
        .I1(\registroIndiceBitTransmitir_reg_n_0_[3] ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I3(\registroEstadoActual[0]_i_2__1_n_0 ),
        .I4(registroEstadoActual[1]),
        .I5(wireIniciarTransmisionB),
        .O(\registroEstadoActual[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000555577F7)) 
    \registroEstadoActual[0]_i_2__1 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[7] ),
        .I2(\registroIndiceBitTransmitir[3]_i_4__0_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[6] ),
        .I4(\registroEstadoActual[0]_i_3__1_n_0 ),
        .I5(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .O(\registroEstadoActual[0]_i_2__1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \registroEstadoActual[0]_i_3__1 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[8] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[10] ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[9] ),
        .O(\registroEstadoActual[0]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h6A6A6A6AAAAA6AAA)) 
    \registroEstadoActual[1]_i_1__1 
       (.I0(registroEstadoActual[1]),
        .I1(registroEstadoActual[0]),
        .I2(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroIndiceBitTransmitir[3]_i_3__0_n_0 ),
        .I5(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .O(\registroEstadoActual[1]_i_1__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registroEstadoActual_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroEstadoActual[0]_i_1__0_n_0 ),
        .Q(registroEstadoActual[0]));
  FDCE #(
    .INIT(1'b0)) 
    \registroEstadoActual_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(\registroEstadoActual[1]_i_1__1_n_0 ),
        .Q(registroEstadoActual[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \registroIndiceBitTransmitir[0]_i_1__0 
       (.I0(\registroIndiceBitTransmitir_reg_n_0_[0] ),
        .I1(\registroIndiceBitTransmitir_reg_n_0_[3] ),
        .I2(registroEstadoActual[1]),
        .O(\registroIndiceBitTransmitir[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h1400)) 
    \registroIndiceBitTransmitir[1]_i_1__0 
       (.I0(\registroIndiceBitTransmitir_reg_n_0_[3] ),
        .I1(\registroIndiceBitTransmitir_reg_n_0_[0] ),
        .I2(\registroIndiceBitTransmitir_reg_n_0_[1] ),
        .I3(registroEstadoActual[1]),
        .O(\registroIndiceBitTransmitir[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h15400000)) 
    \registroIndiceBitTransmitir[2]_i_1__0 
       (.I0(\registroIndiceBitTransmitir_reg_n_0_[3] ),
        .I1(\registroIndiceBitTransmitir_reg_n_0_[0] ),
        .I2(\registroIndiceBitTransmitir_reg_n_0_[1] ),
        .I3(\registroIndiceBitTransmitir_reg_n_0_[2] ),
        .I4(registroEstadoActual[1]),
        .O(\registroIndiceBitTransmitir[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h4544000055555555)) 
    \registroIndiceBitTransmitir[3]_i_1__0 
       (.I0(registroEstadoActual[0]),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3__0_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(registroEstadoActual[1]),
        .O(\registroIndiceBitTransmitir[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \registroIndiceBitTransmitir[3]_i_2__0 
       (.I0(\registroIndiceBitTransmitir_reg_n_0_[3] ),
        .I1(\registroIndiceBitTransmitir_reg_n_0_[1] ),
        .I2(\registroIndiceBitTransmitir_reg_n_0_[0] ),
        .I3(\registroIndiceBitTransmitir_reg_n_0_[2] ),
        .I4(registroEstadoActual[1]),
        .O(\registroIndiceBitTransmitir[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000005D)) 
    \registroIndiceBitTransmitir[3]_i_3__0 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[7] ),
        .I1(\registroIndiceBitTransmitir[3]_i_4__0_n_0 ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[6] ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[9] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[10] ),
        .I5(\registroContadorCiclosReloj_reg_n_0_[8] ),
        .O(\registroIndiceBitTransmitir[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFFFFFFFFFF)) 
    \registroIndiceBitTransmitir[3]_i_4__0 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[0] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[1] ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[3] ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[2] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[5] ),
        .I5(\registroContadorCiclosReloj_reg_n_0_[4] ),
        .O(\registroIndiceBitTransmitir[3]_i_4__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registroIndiceBitTransmitir_reg[0] 
       (.C(CLK),
        .CE(\registroIndiceBitTransmitir[3]_i_1__0_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroIndiceBitTransmitir[0]_i_1__0_n_0 ),
        .Q(\registroIndiceBitTransmitir_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroIndiceBitTransmitir_reg[1] 
       (.C(CLK),
        .CE(\registroIndiceBitTransmitir[3]_i_1__0_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroIndiceBitTransmitir[1]_i_1__0_n_0 ),
        .Q(\registroIndiceBitTransmitir_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroIndiceBitTransmitir_reg[2] 
       (.C(CLK),
        .CE(\registroIndiceBitTransmitir[3]_i_1__0_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroIndiceBitTransmitir[2]_i_1__0_n_0 ),
        .Q(\registroIndiceBitTransmitir_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroIndiceBitTransmitir_reg[3] 
       (.C(CLK),
        .CE(\registroIndiceBitTransmitir[3]_i_1__0_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroIndiceBitTransmitir[3]_i_2__0_n_0 ),
        .Q(\registroIndiceBitTransmitir_reg_n_0_[3] ));
endmodule

(* ORIG_REF_NAME = "moduloTransmisorUART" *) 
module moduloTransmisorUART_5
   (lineaTransmisionA_OBUF,
    reinicio,
    CLK,
    reinicio_IBUF,
    wireIniciarTransmisionA,
    \registroBitsTransmitir_reg[7]_0 );
  output lineaTransmisionA_OBUF;
  output reinicio;
  input CLK;
  input reinicio_IBUF;
  input wireIniciarTransmisionA;
  input [7:0]\registroBitsTransmitir_reg[7]_0 ;

  wire CLK;
  wire lineaTransmisionA_OBUF;
  wire lineaTransmisionBits_i_2_n_0;
  wire lineaTransmisionBits_i_3_n_0;
  wire lineaTransmisionBits_i_4_n_0;
  wire [1:0]p_0_out;
  wire [13:0]p_1_in;
  wire [7:0]registroBitsTransmitir;
  wire \registroBitsTransmitir[7]_i_1_n_0 ;
  wire [7:0]\registroBitsTransmitir_reg[7]_0 ;
  wire registroContadorCiclosReloj0_carry__0_n_0;
  wire registroContadorCiclosReloj0_carry__0_n_1;
  wire registroContadorCiclosReloj0_carry__0_n_2;
  wire registroContadorCiclosReloj0_carry__0_n_3;
  wire registroContadorCiclosReloj0_carry__0_n_4;
  wire registroContadorCiclosReloj0_carry__0_n_5;
  wire registroContadorCiclosReloj0_carry__0_n_6;
  wire registroContadorCiclosReloj0_carry__0_n_7;
  wire registroContadorCiclosReloj0_carry__1_n_0;
  wire registroContadorCiclosReloj0_carry__1_n_1;
  wire registroContadorCiclosReloj0_carry__1_n_2;
  wire registroContadorCiclosReloj0_carry__1_n_3;
  wire registroContadorCiclosReloj0_carry__1_n_4;
  wire registroContadorCiclosReloj0_carry__1_n_5;
  wire registroContadorCiclosReloj0_carry__1_n_6;
  wire registroContadorCiclosReloj0_carry__1_n_7;
  wire registroContadorCiclosReloj0_carry__2_n_7;
  wire registroContadorCiclosReloj0_carry_n_0;
  wire registroContadorCiclosReloj0_carry_n_1;
  wire registroContadorCiclosReloj0_carry_n_2;
  wire registroContadorCiclosReloj0_carry_n_3;
  wire registroContadorCiclosReloj0_carry_n_4;
  wire registroContadorCiclosReloj0_carry_n_5;
  wire registroContadorCiclosReloj0_carry_n_6;
  wire registroContadorCiclosReloj0_carry_n_7;
  wire \registroContadorCiclosReloj[13]_i_2_n_0 ;
  wire \registroContadorCiclosReloj_reg_n_0_[0] ;
  wire \registroContadorCiclosReloj_reg_n_0_[10] ;
  wire \registroContadorCiclosReloj_reg_n_0_[11] ;
  wire \registroContadorCiclosReloj_reg_n_0_[12] ;
  wire \registroContadorCiclosReloj_reg_n_0_[13] ;
  wire \registroContadorCiclosReloj_reg_n_0_[1] ;
  wire \registroContadorCiclosReloj_reg_n_0_[2] ;
  wire \registroContadorCiclosReloj_reg_n_0_[3] ;
  wire \registroContadorCiclosReloj_reg_n_0_[4] ;
  wire \registroContadorCiclosReloj_reg_n_0_[5] ;
  wire \registroContadorCiclosReloj_reg_n_0_[6] ;
  wire \registroContadorCiclosReloj_reg_n_0_[7] ;
  wire \registroContadorCiclosReloj_reg_n_0_[8] ;
  wire \registroContadorCiclosReloj_reg_n_0_[9] ;
  wire [1:0]registroEstadoActual;
  wire \registroEstadoActual[0]_i_2_n_0 ;
  wire \registroEstadoActual[0]_i_3_n_0 ;
  wire \registroIndiceBitTransmitir[0]_i_1_n_0 ;
  wire \registroIndiceBitTransmitir[1]_i_1_n_0 ;
  wire \registroIndiceBitTransmitir[2]_i_1_n_0 ;
  wire \registroIndiceBitTransmitir[3]_i_1_n_0 ;
  wire \registroIndiceBitTransmitir[3]_i_2_n_0 ;
  wire \registroIndiceBitTransmitir[3]_i_3_n_0 ;
  wire \registroIndiceBitTransmitir[3]_i_4_n_0 ;
  wire \registroIndiceBitTransmitir_reg_n_0_[0] ;
  wire \registroIndiceBitTransmitir_reg_n_0_[1] ;
  wire \registroIndiceBitTransmitir_reg_n_0_[2] ;
  wire \registroIndiceBitTransmitir_reg_n_0_[3] ;
  wire reinicio;
  wire reinicio_IBUF;
  wire wireIniciarTransmisionA;
  wire [3:0]NLW_registroContadorCiclosReloj0_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_registroContadorCiclosReloj0_carry__2_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    lineaTransmisionBits_i_1
       (.I0(reinicio_IBUF),
        .O(reinicio));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFF00B8FF)) 
    lineaTransmisionBits_i_2
       (.I0(lineaTransmisionBits_i_3_n_0),
        .I1(\registroIndiceBitTransmitir_reg_n_0_[2] ),
        .I2(lineaTransmisionBits_i_4_n_0),
        .I3(registroEstadoActual[1]),
        .I4(registroEstadoActual[0]),
        .O(lineaTransmisionBits_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    lineaTransmisionBits_i_3
       (.I0(registroBitsTransmitir[7]),
        .I1(registroBitsTransmitir[6]),
        .I2(\registroIndiceBitTransmitir_reg_n_0_[1] ),
        .I3(registroBitsTransmitir[5]),
        .I4(\registroIndiceBitTransmitir_reg_n_0_[0] ),
        .I5(registroBitsTransmitir[4]),
        .O(lineaTransmisionBits_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    lineaTransmisionBits_i_4
       (.I0(registroBitsTransmitir[3]),
        .I1(registroBitsTransmitir[2]),
        .I2(\registroIndiceBitTransmitir_reg_n_0_[1] ),
        .I3(registroBitsTransmitir[1]),
        .I4(\registroIndiceBitTransmitir_reg_n_0_[0] ),
        .I5(registroBitsTransmitir[0]),
        .O(lineaTransmisionBits_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    lineaTransmisionBits_reg
       (.C(CLK),
        .CE(reinicio),
        .D(lineaTransmisionBits_i_2_n_0),
        .Q(lineaTransmisionA_OBUF),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h02)) 
    \registroBitsTransmitir[7]_i_1 
       (.I0(wireIniciarTransmisionA),
        .I1(registroEstadoActual[1]),
        .I2(registroEstadoActual[0]),
        .O(\registroBitsTransmitir[7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registroBitsTransmitir_reg[0] 
       (.C(CLK),
        .CE(\registroBitsTransmitir[7]_i_1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroBitsTransmitir_reg[7]_0 [0]),
        .Q(registroBitsTransmitir[0]));
  FDCE #(
    .INIT(1'b0)) 
    \registroBitsTransmitir_reg[1] 
       (.C(CLK),
        .CE(\registroBitsTransmitir[7]_i_1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroBitsTransmitir_reg[7]_0 [1]),
        .Q(registroBitsTransmitir[1]));
  FDCE #(
    .INIT(1'b0)) 
    \registroBitsTransmitir_reg[2] 
       (.C(CLK),
        .CE(\registroBitsTransmitir[7]_i_1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroBitsTransmitir_reg[7]_0 [2]),
        .Q(registroBitsTransmitir[2]));
  FDCE #(
    .INIT(1'b0)) 
    \registroBitsTransmitir_reg[3] 
       (.C(CLK),
        .CE(\registroBitsTransmitir[7]_i_1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroBitsTransmitir_reg[7]_0 [3]),
        .Q(registroBitsTransmitir[3]));
  FDCE #(
    .INIT(1'b0)) 
    \registroBitsTransmitir_reg[4] 
       (.C(CLK),
        .CE(\registroBitsTransmitir[7]_i_1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroBitsTransmitir_reg[7]_0 [4]),
        .Q(registroBitsTransmitir[4]));
  FDCE #(
    .INIT(1'b0)) 
    \registroBitsTransmitir_reg[5] 
       (.C(CLK),
        .CE(\registroBitsTransmitir[7]_i_1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroBitsTransmitir_reg[7]_0 [5]),
        .Q(registroBitsTransmitir[5]));
  FDCE #(
    .INIT(1'b0)) 
    \registroBitsTransmitir_reg[6] 
       (.C(CLK),
        .CE(\registroBitsTransmitir[7]_i_1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroBitsTransmitir_reg[7]_0 [6]),
        .Q(registroBitsTransmitir[6]));
  FDCE #(
    .INIT(1'b0)) 
    \registroBitsTransmitir_reg[7] 
       (.C(CLK),
        .CE(\registroBitsTransmitir[7]_i_1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroBitsTransmitir_reg[7]_0 [7]),
        .Q(registroBitsTransmitir[7]));
  CARRY4 registroContadorCiclosReloj0_carry
       (.CI(1'b0),
        .CO({registroContadorCiclosReloj0_carry_n_0,registroContadorCiclosReloj0_carry_n_1,registroContadorCiclosReloj0_carry_n_2,registroContadorCiclosReloj0_carry_n_3}),
        .CYINIT(\registroContadorCiclosReloj_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({registroContadorCiclosReloj0_carry_n_4,registroContadorCiclosReloj0_carry_n_5,registroContadorCiclosReloj0_carry_n_6,registroContadorCiclosReloj0_carry_n_7}),
        .S({\registroContadorCiclosReloj_reg_n_0_[4] ,\registroContadorCiclosReloj_reg_n_0_[3] ,\registroContadorCiclosReloj_reg_n_0_[2] ,\registroContadorCiclosReloj_reg_n_0_[1] }));
  CARRY4 registroContadorCiclosReloj0_carry__0
       (.CI(registroContadorCiclosReloj0_carry_n_0),
        .CO({registroContadorCiclosReloj0_carry__0_n_0,registroContadorCiclosReloj0_carry__0_n_1,registroContadorCiclosReloj0_carry__0_n_2,registroContadorCiclosReloj0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({registroContadorCiclosReloj0_carry__0_n_4,registroContadorCiclosReloj0_carry__0_n_5,registroContadorCiclosReloj0_carry__0_n_6,registroContadorCiclosReloj0_carry__0_n_7}),
        .S({\registroContadorCiclosReloj_reg_n_0_[8] ,\registroContadorCiclosReloj_reg_n_0_[7] ,\registroContadorCiclosReloj_reg_n_0_[6] ,\registroContadorCiclosReloj_reg_n_0_[5] }));
  CARRY4 registroContadorCiclosReloj0_carry__1
       (.CI(registroContadorCiclosReloj0_carry__0_n_0),
        .CO({registroContadorCiclosReloj0_carry__1_n_0,registroContadorCiclosReloj0_carry__1_n_1,registroContadorCiclosReloj0_carry__1_n_2,registroContadorCiclosReloj0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({registroContadorCiclosReloj0_carry__1_n_4,registroContadorCiclosReloj0_carry__1_n_5,registroContadorCiclosReloj0_carry__1_n_6,registroContadorCiclosReloj0_carry__1_n_7}),
        .S({\registroContadorCiclosReloj_reg_n_0_[12] ,\registroContadorCiclosReloj_reg_n_0_[11] ,\registroContadorCiclosReloj_reg_n_0_[10] ,\registroContadorCiclosReloj_reg_n_0_[9] }));
  CARRY4 registroContadorCiclosReloj0_carry__2
       (.CI(registroContadorCiclosReloj0_carry__1_n_0),
        .CO(NLW_registroContadorCiclosReloj0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_registroContadorCiclosReloj0_carry__2_O_UNCONNECTED[3:1],registroContadorCiclosReloj0_carry__2_n_7}),
        .S({1'b0,1'b0,1'b0,\registroContadorCiclosReloj_reg_n_0_[13] }));
  LUT6 #(
    .INIT(64'h1011555500000000)) 
    \registroContadorCiclosReloj[0]_i_1 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[0] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2_n_0 ),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[10]_i_1 
       (.I0(registroContadorCiclosReloj0_carry__1_n_6),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2_n_0 ),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[11]_i_1 
       (.I0(registroContadorCiclosReloj0_carry__1_n_5),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2_n_0 ),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[12]_i_1 
       (.I0(registroContadorCiclosReloj0_carry__1_n_4),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2_n_0 ),
        .O(p_1_in[12]));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[13]_i_1 
       (.I0(registroContadorCiclosReloj0_carry__2_n_7),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2_n_0 ),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \registroContadorCiclosReloj[13]_i_2 
       (.I0(registroEstadoActual[0]),
        .I1(registroEstadoActual[1]),
        .O(\registroContadorCiclosReloj[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[1]_i_1 
       (.I0(registroContadorCiclosReloj0_carry_n_7),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2_n_0 ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[2]_i_1 
       (.I0(registroContadorCiclosReloj0_carry_n_6),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2_n_0 ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[3]_i_1 
       (.I0(registroContadorCiclosReloj0_carry_n_5),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2_n_0 ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[4]_i_1 
       (.I0(registroContadorCiclosReloj0_carry_n_4),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2_n_0 ),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[5]_i_1 
       (.I0(registroContadorCiclosReloj0_carry__0_n_7),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2_n_0 ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[6]_i_1 
       (.I0(registroContadorCiclosReloj0_carry__0_n_6),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2_n_0 ),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[7]_i_1 
       (.I0(registroContadorCiclosReloj0_carry__0_n_5),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2_n_0 ),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[8]_i_1 
       (.I0(registroContadorCiclosReloj0_carry__0_n_4),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2_n_0 ),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'h2022AAAA00000000)) 
    \registroContadorCiclosReloj[9]_i_1 
       (.I0(registroContadorCiclosReloj0_carry__1_n_7),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(\registroContadorCiclosReloj[13]_i_2_n_0 ),
        .O(p_1_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(p_1_in[0]),
        .Q(\registroContadorCiclosReloj_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(p_1_in[10]),
        .Q(\registroContadorCiclosReloj_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(p_1_in[11]),
        .Q(\registroContadorCiclosReloj_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(p_1_in[12]),
        .Q(\registroContadorCiclosReloj_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(p_1_in[13]),
        .Q(\registroContadorCiclosReloj_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(p_1_in[1]),
        .Q(\registroContadorCiclosReloj_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(p_1_in[2]),
        .Q(\registroContadorCiclosReloj_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(p_1_in[3]),
        .Q(\registroContadorCiclosReloj_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(p_1_in[4]),
        .Q(\registroContadorCiclosReloj_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(p_1_in[5]),
        .Q(\registroContadorCiclosReloj_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(p_1_in[6]),
        .Q(\registroContadorCiclosReloj_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(p_1_in[7]),
        .Q(\registroContadorCiclosReloj_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(p_1_in[8]),
        .Q(\registroContadorCiclosReloj_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroContadorCiclosReloj_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(p_1_in[9]),
        .Q(\registroContadorCiclosReloj_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'hAA4AFF5FAA4AAA0A)) 
    \registroEstadoActual[0]_i_1 
       (.I0(registroEstadoActual[0]),
        .I1(\registroIndiceBitTransmitir_reg_n_0_[3] ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I3(\registroEstadoActual[0]_i_2_n_0 ),
        .I4(registroEstadoActual[1]),
        .I5(wireIniciarTransmisionA),
        .O(p_0_out[0]));
  LUT6 #(
    .INIT(64'h00000000555577F7)) 
    \registroEstadoActual[0]_i_2 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[7] ),
        .I2(\registroIndiceBitTransmitir[3]_i_4_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[6] ),
        .I4(\registroEstadoActual[0]_i_3_n_0 ),
        .I5(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .O(\registroEstadoActual[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \registroEstadoActual[0]_i_3 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[8] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[10] ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[9] ),
        .O(\registroEstadoActual[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6A6A6A6AAAAA6AAA)) 
    \registroEstadoActual[1]_i_1 
       (.I0(registroEstadoActual[1]),
        .I1(registroEstadoActual[0]),
        .I2(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroIndiceBitTransmitir[3]_i_3_n_0 ),
        .I5(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .O(p_0_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \registroEstadoActual_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(p_0_out[0]),
        .Q(registroEstadoActual[0]));
  FDCE #(
    .INIT(1'b0)) 
    \registroEstadoActual_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reinicio_IBUF),
        .D(p_0_out[1]),
        .Q(registroEstadoActual[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \registroIndiceBitTransmitir[0]_i_1 
       (.I0(\registroIndiceBitTransmitir_reg_n_0_[0] ),
        .I1(\registroIndiceBitTransmitir_reg_n_0_[3] ),
        .I2(registroEstadoActual[1]),
        .O(\registroIndiceBitTransmitir[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h1400)) 
    \registroIndiceBitTransmitir[1]_i_1 
       (.I0(\registroIndiceBitTransmitir_reg_n_0_[3] ),
        .I1(\registroIndiceBitTransmitir_reg_n_0_[0] ),
        .I2(\registroIndiceBitTransmitir_reg_n_0_[1] ),
        .I3(registroEstadoActual[1]),
        .O(\registroIndiceBitTransmitir[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h15400000)) 
    \registroIndiceBitTransmitir[2]_i_1 
       (.I0(\registroIndiceBitTransmitir_reg_n_0_[3] ),
        .I1(\registroIndiceBitTransmitir_reg_n_0_[0] ),
        .I2(\registroIndiceBitTransmitir_reg_n_0_[1] ),
        .I3(\registroIndiceBitTransmitir_reg_n_0_[2] ),
        .I4(registroEstadoActual[1]),
        .O(\registroIndiceBitTransmitir[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4544000055555555)) 
    \registroIndiceBitTransmitir[3]_i_1 
       (.I0(registroEstadoActual[0]),
        .I1(\registroContadorCiclosReloj_reg_n_0_[12] ),
        .I2(\registroIndiceBitTransmitir[3]_i_3_n_0 ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[11] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[13] ),
        .I5(registroEstadoActual[1]),
        .O(\registroIndiceBitTransmitir[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \registroIndiceBitTransmitir[3]_i_2 
       (.I0(\registroIndiceBitTransmitir_reg_n_0_[3] ),
        .I1(\registroIndiceBitTransmitir_reg_n_0_[1] ),
        .I2(\registroIndiceBitTransmitir_reg_n_0_[0] ),
        .I3(\registroIndiceBitTransmitir_reg_n_0_[2] ),
        .I4(registroEstadoActual[1]),
        .O(\registroIndiceBitTransmitir[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000005D)) 
    \registroIndiceBitTransmitir[3]_i_3 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[7] ),
        .I1(\registroIndiceBitTransmitir[3]_i_4_n_0 ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[6] ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[9] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[10] ),
        .I5(\registroContadorCiclosReloj_reg_n_0_[8] ),
        .O(\registroIndiceBitTransmitir[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFFFFFFFFFF)) 
    \registroIndiceBitTransmitir[3]_i_4 
       (.I0(\registroContadorCiclosReloj_reg_n_0_[0] ),
        .I1(\registroContadorCiclosReloj_reg_n_0_[1] ),
        .I2(\registroContadorCiclosReloj_reg_n_0_[3] ),
        .I3(\registroContadorCiclosReloj_reg_n_0_[2] ),
        .I4(\registroContadorCiclosReloj_reg_n_0_[5] ),
        .I5(\registroContadorCiclosReloj_reg_n_0_[4] ),
        .O(\registroIndiceBitTransmitir[3]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registroIndiceBitTransmitir_reg[0] 
       (.C(CLK),
        .CE(\registroIndiceBitTransmitir[3]_i_1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroIndiceBitTransmitir[0]_i_1_n_0 ),
        .Q(\registroIndiceBitTransmitir_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroIndiceBitTransmitir_reg[1] 
       (.C(CLK),
        .CE(\registroIndiceBitTransmitir[3]_i_1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroIndiceBitTransmitir[1]_i_1_n_0 ),
        .Q(\registroIndiceBitTransmitir_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroIndiceBitTransmitir_reg[2] 
       (.C(CLK),
        .CE(\registroIndiceBitTransmitir[3]_i_1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroIndiceBitTransmitir[2]_i_1_n_0 ),
        .Q(\registroIndiceBitTransmitir_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \registroIndiceBitTransmitir_reg[3] 
       (.C(CLK),
        .CE(\registroIndiceBitTransmitir[3]_i_1_n_0 ),
        .CLR(reinicio_IBUF),
        .D(\registroIndiceBitTransmitir[3]_i_2_n_0 ),
        .Q(\registroIndiceBitTransmitir_reg_n_0_[3] ));
endmodule

module moduloUART
   (lineaTransmisionA_OBUF,
    reinicio,
    wireRecepcionAFinalizada,
    registroRecepcionFinalizada_reg,
    D,
    CLK,
    reinicio_IBUF,
    wireRecepcionCFinalizada,
    wireRecepcionBFinalizada,
    Q,
    \registroDatoConsumido_reg[3] ,
    wireIniciarTransmisionA,
    lineaRecepcionA_IBUF,
    \registroBitsTransmitir_reg[7] );
  output lineaTransmisionA_OBUF;
  output reinicio;
  output wireRecepcionAFinalizada;
  output [0:0]registroRecepcionFinalizada_reg;
  output [3:0]D;
  input CLK;
  input reinicio_IBUF;
  input wireRecepcionCFinalizada;
  input wireRecepcionBFinalizada;
  input [3:0]Q;
  input [3:0]\registroDatoConsumido_reg[3] ;
  input wireIniciarTransmisionA;
  input lineaRecepcionA_IBUF;
  input [7:0]\registroBitsTransmitir_reg[7] ;

  wire CLK;
  wire [3:0]D;
  wire [3:0]Q;
  wire lineaRecepcionA_IBUF;
  wire lineaTransmisionA_OBUF;
  wire [7:0]\registroBitsTransmitir_reg[7] ;
  wire [3:0]\registroDatoConsumido_reg[3] ;
  wire [0:0]registroRecepcionFinalizada_reg;
  wire reinicio;
  wire reinicio_IBUF;
  wire wireIniciarTransmisionA;
  wire wireRecepcionAFinalizada;
  wire wireRecepcionBFinalizada;
  wire wireRecepcionCFinalizada;

  moduloReceptorUART_4 moduloReceptorUARTInstancia
       (.CLK(CLK),
        .D(D),
        .Q(Q),
        .lineaRecepcionA_IBUF(lineaRecepcionA_IBUF),
        .\registroDatoConsumido_reg[3] (\registroDatoConsumido_reg[3] ),
        .registroRecepcionFinalizada_reg_0(wireRecepcionAFinalizada),
        .registroRecepcionFinalizada_reg_1(registroRecepcionFinalizada_reg),
        .reinicio_IBUF(reinicio_IBUF),
        .wireRecepcionBFinalizada(wireRecepcionBFinalizada),
        .wireRecepcionCFinalizada(wireRecepcionCFinalizada));
  moduloTransmisorUART_5 moduloTransmisorUARTInstancia
       (.CLK(CLK),
        .lineaTransmisionA_OBUF(lineaTransmisionA_OBUF),
        .\registroBitsTransmitir_reg[7]_0 (\registroBitsTransmitir_reg[7] ),
        .reinicio(reinicio),
        .reinicio_IBUF(reinicio_IBUF),
        .wireIniciarTransmisionA(wireIniciarTransmisionA));
endmodule

(* ORIG_REF_NAME = "moduloUART" *) 
module moduloUART_0
   (lineaTransmisionB_OBUF,
    wireRecepcionBFinalizada,
    Q,
    lineaTransmisionBits_reg,
    CLK,
    reinicio_IBUF,
    wireIniciarTransmisionB,
    lineaRecepcionB_IBUF,
    D);
  output lineaTransmisionB_OBUF;
  output wireRecepcionBFinalizada;
  output [3:0]Q;
  input lineaTransmisionBits_reg;
  input CLK;
  input reinicio_IBUF;
  input wireIniciarTransmisionB;
  input lineaRecepcionB_IBUF;
  input [7:0]D;

  wire CLK;
  wire [7:0]D;
  wire [3:0]Q;
  wire lineaRecepcionB_IBUF;
  wire lineaTransmisionB_OBUF;
  wire lineaTransmisionBits_reg;
  wire reinicio_IBUF;
  wire wireIniciarTransmisionB;
  wire wireRecepcionBFinalizada;

  moduloReceptorUART_2 moduloReceptorUARTInstancia
       (.CLK(CLK),
        .Q(Q),
        .lineaRecepcionB_IBUF(lineaRecepcionB_IBUF),
        .reinicio_IBUF(reinicio_IBUF),
        .wireRecepcionBFinalizada(wireRecepcionBFinalizada));
  moduloTransmisorUART_3 moduloTransmisorUARTInstancia
       (.CLK(CLK),
        .D(D),
        .lineaTransmisionB_OBUF(lineaTransmisionB_OBUF),
        .lineaTransmisionBits_reg_0(lineaTransmisionBits_reg),
        .reinicio_IBUF(reinicio_IBUF),
        .wireIniciarTransmisionB(wireIniciarTransmisionB));
endmodule

(* ORIG_REF_NAME = "moduloUART" *) 
module moduloUART_1
   (lineaTransmisionC_OBUF,
    wireRecepcionCFinalizada,
    iniciarTransmisionA_reg,
    E,
    Q,
    registroRecepcionFinalizada_reg,
    registroRecepcionFinalizada_reg_0,
    lineaTransmisionBits_reg,
    CLK,
    reinicio_IBUF,
    wireIniciarTransmisionA,
    wireRecepcionBFinalizada,
    wireRecepcionAFinalizada,
    identificadorFPGA_IBUF,
    wireIniciarTransmisionB,
    wireIniciarTransmisionC,
    lineaRecepcionC_IBUF,
    D);
  output lineaTransmisionC_OBUF;
  output wireRecepcionCFinalizada;
  output iniciarTransmisionA_reg;
  output [0:0]E;
  output [3:0]Q;
  output registroRecepcionFinalizada_reg;
  output registroRecepcionFinalizada_reg_0;
  input lineaTransmisionBits_reg;
  input CLK;
  input reinicio_IBUF;
  input wireIniciarTransmisionA;
  input wireRecepcionBFinalizada;
  input wireRecepcionAFinalizada;
  input [3:0]identificadorFPGA_IBUF;
  input wireIniciarTransmisionB;
  input wireIniciarTransmisionC;
  input lineaRecepcionC_IBUF;
  input [7:0]D;

  wire CLK;
  wire [7:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire [3:0]identificadorFPGA_IBUF;
  wire iniciarTransmisionA_reg;
  wire lineaRecepcionC_IBUF;
  wire lineaTransmisionBits_reg;
  wire lineaTransmisionC_OBUF;
  wire registroRecepcionFinalizada_reg;
  wire registroRecepcionFinalizada_reg_0;
  wire reinicio_IBUF;
  wire wireIniciarTransmisionA;
  wire wireIniciarTransmisionB;
  wire wireIniciarTransmisionC;
  wire wireRecepcionAFinalizada;
  wire wireRecepcionBFinalizada;
  wire wireRecepcionCFinalizada;

  moduloReceptorUART moduloReceptorUARTInstancia
       (.CLK(CLK),
        .E(E),
        .Q(Q),
        .identificadorFPGA_IBUF(identificadorFPGA_IBUF),
        .iniciarTransmisionA_reg(iniciarTransmisionA_reg),
        .lineaRecepcionC_IBUF(lineaRecepcionC_IBUF),
        .registroRecepcionFinalizada_reg_0(wireRecepcionCFinalizada),
        .registroRecepcionFinalizada_reg_1(registroRecepcionFinalizada_reg),
        .registroRecepcionFinalizada_reg_2(registroRecepcionFinalizada_reg_0),
        .reinicio_IBUF(reinicio_IBUF),
        .wireIniciarTransmisionA(wireIniciarTransmisionA),
        .wireIniciarTransmisionB(wireIniciarTransmisionB),
        .wireIniciarTransmisionC(wireIniciarTransmisionC),
        .wireRecepcionAFinalizada(wireRecepcionAFinalizada),
        .wireRecepcionBFinalizada(wireRecepcionBFinalizada));
  moduloTransmisorUART moduloTransmisorUARTInstancia
       (.CLK(CLK),
        .D(D),
        .lineaTransmisionBits_reg_0(lineaTransmisionBits_reg),
        .lineaTransmisionC_OBUF(lineaTransmisionC_OBUF),
        .reinicio_IBUF(reinicio_IBUF),
        .wireIniciarTransmisionC(wireIniciarTransmisionC));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
