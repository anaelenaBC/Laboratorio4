/*
    NOTE: 0 is for FALSE and 1 is for TRUE

    x0: store immediate value of 0
    x1: store immediate value of 1
    x2: store if a package is received by the UART interfaces
    x3: store if a button is pressed
    x4: store the package ID
    x5: store the FPGA ID
    x6: store the package data
    x7: store the amount of received packages
    x8: store the ID of the port where the data came from
*/

/*
    li: stands for Load Immediate
    Used to load an immediate (constant) value into a register
*/
.global _start

.section .text
_start:
    j INICIO_PROGRAMA

INICIO_PROGRAMA:
    li x0, 0
    li x1, 1
    li x2, 0
    li x3, 0
    li x4, 0
    li x5, 1 // We have to change to the specific FPGA ID
    li x6, 0
    li x7, 0
    j MODO_REPOSO

MODO_REPOSO:
    beq x2, x1, MODO_PROCESAMIENTO
    beq x3, x1, MODO_GENERACION
    j MODO_REPOSO

MODO_PROCESAMIENTO:
    beq x4, x5, SUBMODO_CONSUMIR
    j SUBMODO_RETRANSMITIR

SUBMODO_CONSUMIR:
    add x7, x7, x1
    // Show x7 (package amount) on the display
    // Show x6 (package data) on the display
    j MODO_REPOSO

SUBMODO_RETRANSMITIR:
    add x7, x7, x1
    // Send to the other FPGAS
    j MODO_REPOSO

MODO_GENERACION:
    // Send to all the FPGAS
    j MODO_REPOSO