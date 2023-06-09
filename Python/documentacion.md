## Descripción de cada una de las unidades desarrolladas:
A continuación, se procederá a documentar cada una de las unidades desarrolladas, además de incluir la descripción de los puertos, constantes, parámetros, tipos de variables y descripción de bloques para cada una de ellas. Se hace de este modo con la finalidad de sintetizar en un mismo apartado todo lo referente a la codificación utilizada en el sistema desarrollado, buscando preservar la coherencia del documento y el orden del mismo.

### moduloAntirebote:
Comenzando desde el sistema de menor complejidad, fue necesario implementar un módulo de corrección de rebotes para la señal de entrada de los botones que se usaron en la FPGA. Como bien se sabe por la teoría, los botones que involucren contactos metálicos como mecanismos de activación, por regla general, cuentan con señales erróneas en su medición al ser pulsados, que afectan la correcta operación de los sistemas que dependen de pulsaciones específicas de dichos botones. Debido a esto, muchos de los sistemas digitales implementan métodos de corrección de las señales erróneas de pulsación.

#### Puertos:
* Señal de reloj.
* Señal de reinicio.
* entradaBoton: señal de entrada que representa la pulsación (o pulsaciones) del botón que se quiere corregir.
* salidaBoton: señal de salida que representa la pulsación corregida (solo una pulsación por cada vez que físicamente se presiona el botón) del botón a corregir.

#### Parámetros:
* cantidadCiclosRelojNecesarios: se utiliza como una constante que almacena cuántos ciclos de reloj deben transcurrir para que se corrija la señal de entrada del reloj. Nuevamente, según se sabe por la teoría, las señales de rebote pueden corregirse si se "omiten" las pulsaciones recibidas durante una cantidad prudente de ciclos de reloj. En este caso particular, se "espera" a que pasen treinta ciclos de reloj.

#### Código:
A continuación se muestra el código del módulo.
![imagen](/images/picture.jpg)


