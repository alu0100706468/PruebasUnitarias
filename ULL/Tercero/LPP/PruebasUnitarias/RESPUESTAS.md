Práctica de Laboratorio #5. Pruebas Unitarias   
================

Respuestas
------------

1) ¿Cuál es el error en el código del método para calcular el máximo común divisor?
   Que en el bucle while, la expresión booleana correcta sería `v != 0`, ya que, si no, nunca se entraría en el bucle. 

2)¿Qué comandos del depurador utilizó para detectarlo? Describa la sesión de depuración.
  Primero usé los comandos `display u` y `display v` para ver los valores de estas variables a lo largo de la ejecución.
  Luego, mediante el comando `next` llegué a la llamada al método.
  A partir de aquí, solo tuve que utilizar `step` para ver la ejecución paso a paso y darme cuenta que nunca se entraba en el bucle while y, además,  	v nunca llegaba a valer 0.

