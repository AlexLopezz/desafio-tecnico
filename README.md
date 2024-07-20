# DESAFIO-TECNICO

## Descripcion
Este repositorio contiene todo lo necesario para resolver el desafio tecnico brindado por el NBCH.


### Se divide en cuatro directorios:
* [inputs](/inputs/): Se encuentra todos los archivos helpers o de ayuda para el desarrollo del desafio. EJ: *Feriados.xls*
* [outputs](/outputs/): Se encuentran aquellos archivos que se pretende por parte del desafio. EJ: *reporte.xlsx*
* [jobs](/jobs/): Se encuentran todos los trabajos realizados para el cumplimiento de las consignas presentadas en el desafio.
* [transformations](/transformations/): Se encuentran todas las transformaciones de datos que se realizaron y que son utilizados en los jobs para  el desafio.



# IMPORTANTE: BASE DE DATOS.
Como se especifica en la consigna: *"...y persistirla en una base de datos (Tecnología y estructura de tabla a libre elección)."*

Decidi utilizar Docker para correr un [contenedor MySQL](https://hub.docker.com/_/mysql) y asi poder realizar el trabajo mas facil y rapido, a continuacion dejare una pequeña guia para hacerlo funcionar en su maquina local:

* Instale Docker.
    * Windows: [https://docs.docker.com/get-docker/](https://docs.docker.com/desktop/install/windows-install/)
    * Linux: https://docs.docker.com/engine/install/
  
* Abre una consola en su Sistema Operativo (CMD, bash, etc...) y ejecute los siguientes comandos: 

```
$ docker pull mysql
$ docker run -d --name mysql-docker -e MYSQL_DATABASE=db-desafio -e MYSQL_ROOT_PASSWORD=desafio -p 3306:3306 mysql
```

Listo! Ahora puede probar conectar la base de datos MySQL a traves de cualquier herramienta de administracion de base de datos como [Dbeaver](https://dbeaver.io/), [phpMyAdmin](https://www.phpmyadmin.net/) o cualquiera que soporte MySQL. Tambien puede utilizarlo mediante [CLI](https://dev.mysql.com/doc/refman/8.4/en/mysql.html).


# CREDENCIALES y RUTAS DEL PROYECTO:
Toda la informacion acerca de Credenciales para conectarse a la base de datos y rutas del proyecto se encuentra en el archivo [**kettle.properties**](/kettle.properties). 

* Es importante que usted **especifique la ruta raiz del proyecto para poder utilizar PROJECT_DIR** que es una variable de entorno el cual mapea la ubicacion del proyecto en su maquina local para que no haya ningun inconveniente a la hora de probar en la Suite de Pentaho.
* Luego debe reemplazar este archivo, por el que se encuentra en el directorio *C:\Users\<user-name>\.kettle\kettle.properties*

https://github.com/user-attachments/assets/da90538f-5d00-4487-8f3e-3ac0ca6efcb4

# COMO PROBAR EL DESAFIO
Todas las tareas que presenta el desafio estan resueltas y se pueden verificar en el directorio [**/outputs**](/outputs), pero para que los resultados esperados se muestren, usted debe ejecutar los **JOBS** correspondientes que se encuentran en [**/jobs**](/jobs).

Estos son los JOBS que resuelven las siguientes tareas:

*2.  Obtener la información de la planilla “Feriado Local” y persistirla en una base de datos (Tecnología y estructura de tabla a libre elección). Por cada fila leída deben aplicarse las validaciones incluyentes (indicadas más adelante), y cargar en la tabla las filas que superen todas las validaciones.*
        
* [Carga de datos a Base de Datos](/jobs/JOB_Carga%20de%20datos%20a%20Base%20de%20Datos.kjb)

*3.	Generar como salida, un archivo Excel denominado “reporte.xlsx” con los mismos datos y formato que el original, pero agregando una columna que contenga el resultado de la carga de cada feriado. Indicando si la misma fue cargada con éxito o fue rechazada por no superar las validaciones (especificando cual o cuales en cada caso).* 

* [Excel con Resultado de Validaciones](/jobs/JOB_Excel%20con%20Resultado%20de%20Validaciones.kjb)

*4.	Generar otro archivo de salida en formato CSV (Utilizando codificación UTF-8) llamada “total_provincias.csv” que contenga la sumatoria de feriados cargados para cada provincia. Ordenado de mayor a menor por la cantidad de feriados.*

*5.	Generar un tercer archivo de salida (con extensión *.txt, con registro del tipo FIXED y codificación ANSI) denominado “total_localidad.txt” que contenga la sumatoria de los feriados cargados por localidad. Ordenado por Provincia y Localidad*

* [Carga de datos a csv y txt](/jobs/JOB_Carga%20de%20datos%20a%20.csv%20y%20.txt.kjb)


https://github.com/user-attachments/assets/9fc59bba-b0d7-4493-9829-a1cfb5d5fb54








