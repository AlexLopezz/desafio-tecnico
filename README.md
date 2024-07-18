# desafio-tecnico
    Aqui estara todo lo relacionado a lo realizado para el desarrollo del desafio.

El proyecto se divide en cuatro directorios:
    * inputs: Aqui ira todos los inputs o archivos helpers para el desarrollo del desafio.
    * outputs: Se encuentran aquellos archivos que se pretende por parte del desafio.
    * jobs: Se encuentran todos los trabajos realizados para el cumplimiento de las consignas presentadas en el desafio.
    * transformations: Se encuentran todas las transformaciones de datos que se realizaron para  el desafio.


# IMPORTANTE: BASE DE DATOS.
    Como se especifica en la consigna: "...y persistirla en una base de datos (Tecnología y estructura de tabla a libre elección)."

    Decidi utilizar Docker, para montar un contenedor MySQL y asi poder realizar el trabajo mas facil y rapido.

    Debe instalar Docker en su ordenador. Link hacia su pagina web aqui: https://docs.docker.com/get-docker/

    Una vez instalado, abra una consola en su Sistema Operativo (CMD, bash, etc...) y escriba los siguientes comandos: 
    $ docker pull mysql
    $ docker run -d --name mysql-docker -e MYSQL_DATABASE=db-desafio -e MYSQL_ROOT_PASSWORD=desafio -p 3306:3306 mysql

    y listo! Puede probar la base de datos a traves de cualquier herramienta de administracion de base de datos como Dbeaver, PhpMyAdmin o el que soporte MySQL.


# CREDENCIALES y RUTAS DEL PROYECTO:
    Toda la informacion acerca de Credenciales y rutas del proyecto se encuentra en el archivo kettle.properties. Es importante que usted especifique la ruta raiz del proyecto para poder utilizar PROJECT_DIR de manera correcta y que no haya ningun inconveniente a la hora de probar en la Suite de Pentaho.

    Aqui una demostracion de lo que explico: 
https://github.com/user-attachments/assets/92bfaa82-d399-452d-ae7e-ae78f0ff849b

# COMO PROBAR EL DESAFIO?
        Todas las tareas que presenta el desafio estan resueltas y se pueden verificar en el directorio /outputs, pero para que 
    los resultados esperados se muestren, usted debe ejecutar los JOBS correspondientes que se encuentran en /jobs.

    Estos son los JOBS que resuelven las siguientes tareas:
        2.  Obtener la información de la planilla “Feriado Local” y persistirla en una base de datos (Tecnología y estructura de tabla a libre elección). Por cada fila leída deben aplicarse las validaciones incluyentes (indicadas más adelante), y cargar en la tabla las filas que superen todas las validaciones.
        
        * JOB: JOB_Carga de datos a Base de Datos.kjb 

        3.	Generar como salida, un archivo Excel denominado “reporte.xlsx” con los mismos datos y formato que el original, pero agregando una columna que contenga el resultado de la carga de cada feriado. Indicando si la misma fue cargada con éxito o fue rechazada por no superar las validaciones (especificando cual o cuales en cada caso). 

        * JOB: JOB_Excel con Resultado de Validaciones.kjb

        4.	Generar otro archivo de salida en formato CSV (Utilizando codificación UTF-8) llamada “total_provincias.csv” que contenga la sumatoria de feriados cargados para cada provincia. Ordenado de mayor a menor por la cantidad de feriados.

        5.	Generar un tercer archivo de salida (con extensión *.txt, con registro del tipo FIXED y codificación ANSI) denominado “total_localidad.txt” que contenga la sumatoria de los feriados cargados por localidad. Ordenado por Provincia y Localidad

        * JOB: JOB_Carga de datos a .csv y .txt.kjb

Breve demostracion de como abrir y ejecutar el JOB: 

https://github.com/user-attachments/assets/ae5ba158-ebc2-4242-b316-26843111b0c4










