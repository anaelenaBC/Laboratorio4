## Descripción de cada una de las unidades desarrolladas:
A continuación, se procederá a documentar cada una de las unidades desarrolladas, además de incluir la descripción de los puertos, constantes, parámetros, tipos de variables y descripción de bloques. Se hace de este modo con la finalidad de sintetizar en un mismo apartado todo lo referente a la codificación utilizada en el sistema desarrollado, buscando preservar la coherencia del documento y el orden del mismo.

<br/>


### moduloAntirebote:
Comenzando desde el sistema de menor complejidad, fue necesario implementar un módulo de corrección de rebotes para la señal de entrada de los botones que se usaron en la FPGA. Como bien se sabe por la teoría, los botones que involucren contactos metálicos como mecanismos de activación, por regla general, cuentan con señales erróneas en su medición al ser pulsados, que afectan la correcta operación de los sistemas que dependen de pulsaciones específicas de dichos botones. Debido a esto, muchos de los sistemas digitales implementan métodos de corrección de las señales erróneas de pulsación.

#### Puertos:
* Señal de reloj.
* Señal de reinicio.
* entradaBoton: señal de entrada que representa la pulsación (o pulsaciones) del botón que se quiere corregir.
* salidaBoton: señal de salida que representa la pulsación corregida (solo una pulsación por cada vez que físicamente se presiona el botón) del botón a corregir.

#### Constantes:
No se hace uso de constantes para este módulo.

#### Parámetros:
* cantidadCiclosRelojNecesarios: se utiliza como una constante que almacena cuántos ciclos de reloj deben transcurrir para que se corrija la señal de entrada del reloj. Nuevamente, según se sabe por la teoría, las señales de rebote pueden corregirse si se "omiten" las pulsaciones recibidas durante una cantidad prudente de ciclos de reloj. En este caso particular, se "espera" a que pasen treinta ciclos de reloj.

### Variables:
No se hace uso de variables para este módulo.

<br/>


### moduloHexadecimalDisplaySieteSegmentos:
Este módulo es utilizado para convertir de señales de cuatro bits a una representación de números hexadecimales por medio de un display de siete segmentos de ánodo común. El módulo desarrollado es estándar, útil para cualquier tipo de proyecto que requiera representar números hexadecimales en un display de este tipo.

#### Puertos:
* Señal de reloj.
* Señal de reinicio.
* entradaNumeroHexadecimal: señal de entrada que representa el número de cuatro bits a mostrar en el display.
* salidaDisplaySieteSegmentos: señal de salida que representa cada uno de los LEDS que conforman el display de siete segmentos de ánodo común.

#### Constantes:
No se hace uso de constantes para este módulo.

#### Parámetros:
No se hace uso de parámetros para este módulo.

### Variables:
No se hace uso de variables para este módulo.

<br/>


### moduloUART:
Al tratarse de un módulo de transmisión por medio del protocolo UART, se tienen los métodos de recepción y transmisión. Se modela como una máquina de estados y su funcionamiento se explica a continuación.

#### Recepción:
Uno de los dos posibles estados principales que puede tener la interfaz UART es la recepción de datos. Cuando se detecta un cambio en la línea de transmisión de información serial RX, en específico, cuando se lee un bit de inicio (también conocido como start bit), se puede afirmar que se ha comenzado con una recepción. Este módulo, al igual que el de transmisión, opera como una máquina de estados que resume su funcionamiento en lo siguiente.

1. Se tiene un estado de espera donde el módulo de recepción está a la espera de que su línea de recepción cambie, detectando un bit de inicio (en este caso un 1).
2. Cuando esto ocurre, se cambia al estado de recepción del bit de inicio. Despúes de que pasen una cantidad de ciclos de reloj específica (que será abordada más adelante en esta documentación), se cambia al siguiente estado.
3. El siguiente estado es el de la recepción de la información binaria como tal. Aquí, para cada bit esperado (que es especificado en el ancho de la información que se recibe), se cuenta que pasen la cantidad de ciclos de reloj específica (de ahora en más llamada ciclos de transición).
4. Cuando se terminan de recibir todos los bits de información, el receptor recibe un bit de finalización (en este caso un 0) por los ciclos de transición.

Al modelar este módulo como una máquina de estados, se simplifica enormemente el diseño y la implementación.
W
#### Transmisión:
Al igual que como ocurre con el módulo de recepción, se cuenta con 4 estados que componen a la máquina de estados, pero en esta ocasión es la FPGA la que envía los datos hacia el exterior (siguiendo la misma estructuración de espera, bit de inicio, bits de datos y bit de finalización), en este caso un computador personal.
Los ciclos de transición son propios de la tecnología a utilizar, y se calculan como la frecuencia de reloj del dispositivo que implementa la interfaz (la FPGA) entre los baudios.

Para este caso específico, son 100 MHz entre 9600 baudios.


### Complicaciones del diseño:
Al parecer, existe un error en la comunicación entre los puertos PMOD de las tarjetas FPGA. Se desconoce el motivo, y al buscar recursos en internet para solucionar el error encontrado, no se encuentra demasiada información. Supongo que puede tratarse de una mala conexión en las terminales a utilizar, o talvez que las resistencias de pull-up no están correctamente dimensionadas. El error no pudo ser solucionado por falta de tiempo.