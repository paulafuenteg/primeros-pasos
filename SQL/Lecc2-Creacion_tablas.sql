#Creamos la base de datos tienda_zapatillas
 CREATE SCHEMA `tienda_zapatillas`;
#Seleccionamos que queremos usar esta bas de datos
USE tienda_zapatillas;

#Creamos la tabla zapatilla con primary key id_zapatilla, int, auto incremental not null, la columna modelo varchar 45 no nula y color varchar 45 no nula.
CREATE TABLE zapatilla (
	id_zapatilla INT AUTO_INCREMENT NOT NULL,
    modelo VARCHAR(45) NOT NULL,
    color VARCHAR(45) NOT NULL,
PRIMARY KEY (id_zapatilla) );

#Creamos la tabla clientes con primary key id_cliente, int, auto incremental not null, la columna nombre varchar 45 no nula 
# numero _telefono int no nula, email varchar 45 no nula, direccion varchar 45 no nula,ciudad varchar 45 puede ser nula, provincia varchar 45 no nula
# pais varchar 45 no nula, y codigo_postal varchar 45 no nula.
CREATE TABLE clientes (
	id_cliente INT AUTO_INCREMENT NOT NULL,
	nombre VARCHAR (45) NOT NULL,
    numero_telefono INT (9) NOT NULL,
    email VARCHAR (45) NOT NULL,
    direccion VARCHAR (45) NOT NULL,
    ciudad VARCHAR (45) NOT NULL,
    provincia VARCHAR (45) NOT NULL,
    pais VARCHAR (45) NOT NULL,
    codigo_postal VARCHAR (45) NOT NULL,
PRIMARY KEY (id_cliente));

#Creamos la tabla empleados con primary key id_empleados, int, auto incremental not null, la columna nombre varchar 45 no nula 
# tienda int no nula, salario INT 45 no nula y fecha_incorporación fecha no nula.
CREATE TABLE empleados (
	id_empleados INT auto_increment NOT NULL,
    nombre VARCHAR (45) NOT NULL,
    tienda VARCHAR (45) NOT NULL,
    salario INT NULL,
    fecha_incorporacion DATE NOT NULL,
PRIMARY KEY (id_empleados));

#Creamos la tabla facturas con la columna id_factura como primary key auto incremental not nula,
#numero_factura Varchar 45 no nula y con las columnas id_zapatilla, id_empleados e id_clientes como 
#foreing key relacionadas con las otras tablas creadas
CREATE TABLE facturas (
	id_factura INT AUTO_INCREMENT NOT NULL,
    numero_factura VARCHAR (45) NOT NULL,
    fecha DATE NOT NULL,
    id_zapatilla INT NOT NULL,
    id_empleados INT NOT NULL,
    id_clientes INT NOT NULL,
PRIMARY KEY (id_factura),
CONSTRAINT fk_facturas_zapatilla
	FOREIGN KEY (id_zapatilla)
		REFERENCES zapatilla (id_zapatilla),
CONSTRAINT fk_facturas_clientes
	FOREIGN KEY (id_clientes)
		REFERENCES clientes (id_cliente),
CONSTRAINT fk_facturas_empleados
	FOREIGN KEY (id_empleados)
		REFERENCES empleados (id_empleados)
);