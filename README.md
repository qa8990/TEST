# Robot RentaloMX
Este proyecto es una Suite de pruebas basadas en [Robotframework](http://www.robotframework.org/) para realizar pruebas automatizadas E2E a la pagina web [rentalo.com.mx](https://rentalo.com.mx)

## Tabla de Contenido
* [Informacion General](#informacion-general)
* [Prerequisitos](#prerequisitos)
* [Instalacion](#instalacion)
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
$ pip install --upgrade robotframework-appiumlibrary
$ pip install --upgrade robotframework-datadriver
$ pip install --upgrade robotframework-datadriver[XLS]
```
## Datos de Prueba
La Suite de Pruebas esta configurada para que pueda agregar los valores necesarios en los casos de pruebas y escenarios ya definidos en una hoja de calculo. El archivo debe denominarse **RENTALOMX.XLSX**
Edite la hoja de Calculo ( Excel MS o Google spreadsheet )
Ubique la hoja denominada **DATOSPRUEBA**, asegurese de no cambiar el nombre del archivo o de la hoja de calculo
Ubicacion del archivo XLSX, ese debe encontrarse en la carpeta raiz del Proyecto - .**./RENTALOMX/RENTALOMX.XLSX**

La hoja de calculo contiene la siguiente informacion relacionada a la Suite de Pruebas
1. La primera fila tiene informacion de los argumentos y documentacion de los casos de pruebas
2. Argumentos o parametros identificados con **{$}**
- **${scenario}** : Identifica el escenario de pruebas a realizar y si corresponde al Flujo Basico o alternativo
- **${searchKey}**: Palabra clave de busqueda la cual representa una maquinaria, marca, modelo, grupo o tipo
- **${searchKey2}**: Palabra clave de busqueda la cual representa una maquinaria, marca, modelo, grupo o tipo, es usada para buscar dentro del catalogo ya filtrado 
- **${link}**: es el URL que identifica el valor a buscar en los link provistos en las listas desplegables o links relacionados
- **${itemInfo}**: Es la informacion a buscar que identifica que el valor a encontrar es correcto tal como Titulos, Marcas, Modelos, Maquinaria, Tipo, Grupos, Categorias
- **${itemInfo2}**: Es la informacion complementaria dentro de la busqueda para garantizar la busqueda del item
3. Documentacion
- *** Test Cases ***: Hace referencia al caso de prueba que se esta realizando
- **[tags]**: Identifica por medio de un label los casos de pruebas para su verificacion en el reporte del log de ejecucion
- **[Documentation]**: Informacion adicional al caso de prueba

#### NOTA : No realice ningun cambio en los nombres que identifican Argumentos, Etiquetas o Documentacion que se encuentran en la primera fila del archivo, asi como tampoco elimine la primera fila, cambiar el orden de esta file o eliminar algunos de las columnas ya definidas. 👍 

## Ejecutar Suite de Pruebas
Para la ejecucion de la Suite de Pruebas desde la linea de comando ubicando dentro de la carpeta del Proyecto, ejecute el siguiente comando

```
$ robot -T -d reports tests/RENTALO.robot
```
Al culminar la ejecucion de la Suite de Pruebas se estara generando un log de ejecucion que podra visualizarlo accediendo a la carpeta & archivo **../RENTALOMX/Reports/reports.html**
