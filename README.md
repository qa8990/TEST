# Robot RentaloMX
Este proyecto es una Suite de pruebas basadas en [Robotframewrok](http://www.robotframework.org/) para realizar pruebas automatizadas E2E a la pagina web [rentalo.com.mx](https://rentalo.com.mx)

## Tabla de Contenido
* [Informacion General](#informacion-general)
* [Prerequisitosl](#prerequisitos)
* [Instalacion](#instacion)
* [Datos de Pruebas](#datos-de-prueba)
* [Ejecutar Suite de Pruebas](#ejecutar-suite-de-pruebas)


## Informacion General
[Robot Framework](https://robotframework.org/) es un marco de automatización de pruebas genérico para pruebas de aceptación y desarrollo impulsado por pruebas de aceptación (ATDD). Es un marco de prueba basado en palabras clave que utiliza la sintaxis de datos de prueba tabular.

## Prerequisitos
Robot Framework esta soportado en Python (Python 2 y Python 3).El intérprete que desea utilizar debe instalarse antes de instalar el marco en sí.

Para mas informacion visite - [Python instalacion](https://www.python.org/)

**Instalación de PyPy**
PyPy es una implementación alternativa del lenguaje Python con versiones compatibles con Python 2 y Python 3 disponibles. Su principal ventaja sobre la implementación estándar de Python es que puede ser más rápida y usar menos memoria, pero esto depende del contexto donde y cómo se usa. Si la velocidad de ejecución es importante, al menos probar PyPY probablemente sea una buena idea.

La instalación de PyPy es un procedimiento sencillo y puede encontrar instaladores e instrucciones de instalación en http://pypy.org. Después de la instalación, probablemente aún desee configurar PATH para que PyPy, así como los scripts de ejecución de robot y rebot, sean ejecutables en la línea de comandos.

## Instalacion
Para instalar de manera local en Windows10 realice los siguientes pasos:
- Realice un fork del proyecto a su repositorio
- Clone el proyecto
- Ubiquese dentro de la carpeta del proyecto en su PC
```
$ cd ../RENTALOMX
```
- Instale Robotframework y las librerias necesarias para su funcionamiento
```
$ pip install robotframework
$ pip install robotframework-appiumlibrary
$	pip install --upgrade robotframework-appiumlibrary
$	pip install --upgrade robotframework-datadriver
$	pip install --upgrade robotframework-datadriver[XLS]
```
