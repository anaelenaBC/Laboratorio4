#### Cuestionario Previo
### 1. Investigue sobre la arquitectura RISC-V. Preste especial atención a las instrucciones que forman parte del conjunto básico de instrucciones para números enteros de 32 bits, RV32I. 
La arquitectura RISC-V es una arquitectura de un conjunto de instrucciones reducido de código abierto. Fue diseñada con el objetivo de ser una arquitectura simple y que se adaptase a una amplia gama de aplicaciones.
El conjunto básico de instrucciones para números enteros de 32 bits (RV32I) en RISC-V consta de un conjunto de instrucciones fundamentales que son comunes en la mayoría de las implementaciones de esta arquitectura. Algunas de las instrucciones clave son: 

Carga y almacenamiento de datos:
* LW: Cargar una palabra de 32 bits desde la memoria.
* SW: Almacenar una palabra de 32 bits en la memoria.

Operaciones aritméticas: 

* ADD: Suma dos registros y almacena el resultado.
* SUB: Resta dos registros y almacena el resultado.
* ADDI: Suma un registro con un valor inmediato y almacena el resultado.

Operaciones lógicas y de bits:

* AND: Realiza una operación AND lógica bit a bit entre dos registros y almacena el resultado.
* OR: Realiza una operación OR lógica bit a bit entre dos registros y almacena el resultado.
* XOR: Realiza una operación XOR lógica bit a bit entre dos registros y almacena el resultado.
* ANDI: Realiza una operación AND lógica bit a bit entre un registro y un valor inmediato y almacena el resultado.
* ORI: Realiza una operación OR lógica bit a bit entre un registro y un valor inmediato y almacena el resultado.
* XORI: Realiza una operación XOR lógica bit a bit entre un registro y un valor inmediato y almacena el resultado.


Desplazamiento de bits:
* SLL: Desplaza un registro a la izquierda (shift left logical) en función de un valor inmediato.
* SRL: Desplaza un registro a la derecha (shift right logical) en función de un valor inmediato.


Condicionales:

* BEQ: Realiza un salto condicional si dos registros son iguales.
* BNE: Realiza un salto condicional si dos registros no son iguales.

### 2. Investigue sobre el uso de los IP-Cores en Vivado para memorias RAM y ROM.
En el entorno de desarrollo Vivado, los IP-Cores (Intellectual Property Cores) son bloques de diseño predefinidos y reutilizables que contienen lógica específica y funcionalidad. Permiten a los diseñadores acelerar el proceso de diseño al proporcionar componentes listos para usar. 
En Vivado, se pueden usar los IP-Cores para implementar memorias RAM (Random Access Memory) y ROM (Read-Only Memory) en el diseño. 

* IP-Core de memoria RAM: La memoria RAM es una memoria volátil que permite leer y escribir datos. Los IP-Cores de memoria RAM se pueden usar utilizando el generador de bloques de memoria (Memory IP Generator), el cual permite especificar el tamaño de la memoria, el ancho de palabra, la configuración de puertos,etc.
* IP-Core de memoria ROM: La memoria ROM es una memoria no volátil que solo permite leer datos. En Vivado, también es posible generar IP-Cores de memoria ROM utilizando el generador de bloques de memoria, el cual permite cargar datos en la memoria ROM desde un archivo o mediante la especificación directa en una tabla.
