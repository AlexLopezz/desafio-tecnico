CREATE TABLE Feriado(
	cod_postal INT(15),
	fecha Date,
	PRIMARY KEY( cod_postal, fecha )
);

CREATE TABLE Provincia( nombre VARCHAR(60) PRIMARY KEY );

CREATE TABLE Localidad(
id INT PRIMARY KEY AUTO_INCREMENT,
p_i INT(5),
nombre varchar(60),
provincia_FK VARCHAR(60),
cod_postal_FK INT(15),
fecha_FK Date,

FOREIGN KEY( provincia_FK ) REFERENCES Provincia( nombre ),
FOREIGN KEY( cod_postal_FK, fecha_FK ) REFERENCES Feriado( cod_postal, fecha )
);
