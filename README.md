# desafio-tecnico
 
Requerimientos:
* Docker
* Pentaho

## Para crear la base de datos, decidi optar por montar una a traves de un contenedor docker, la cual montara una imagen de MySQL en donde Podemos hacer las ETL sin problemas.

Descarga Docker, si no lo tienes aqui: 

Luego de ello, abri una terminal y ejecuta los siguientes commandos: 

$ docker pull MySQL
$ docker run --d --name docker-MySQL -e MYSQL_DATABASE=db-desafio -e MYSQL_ROOT_PASSWORD=desafio -p 3306:3306

y Listo! :D


