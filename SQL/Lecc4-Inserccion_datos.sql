USE tienda_zapatilla;
#Insertamos datos en tablas según los datos facilitados en el enunciado
INSERT INTO zapatilla (modelo, color, marca, talla)
	VALUES ('XQYUN', 'Negro', 'Nike', 42),
		('UOPMN', 'Rosas', 'Nike', 39),
        ('OPNYT', 'Verdes', 'Adidas', 35);

INSERT INTO empleados (nombre, tienda, salario, fecha_incorporacion)
	VALUES ('Laura', 'Alcobendas', 25987, '2010-09-03'),
		('Maria', 'Sevilla', NULL, '2001-04-11'),
        ('Esther', 'Oviedo', 30165.98, '2000-11-29');

INSERT INTO clientes (nombre, numero_telefono, email, direccion, ciudad, provincia, codigo_postal)
	VALUES ('Monica', 1234567289, 'monica@email.com', 'Calle Felicidad', 'Mostoles', 'Madrid', 28176),
		('Lorena', 289345678, 'lorena@email.com', 'Calle Alegria', 'Barcelona', 'Barcelona', 12346),
        ('Carmen', 298463426, 'carmen@email.com', 'Calle del Color', 'Vigo', 'Pontevedra', 23456);

INSERT INTO facturas (numero_factura, fecha, id_zapatilla, id_empleados, id_clientes, total)
	VALUES ('123', '2001-12-11', 1, 2, 1, 54.98),
		('1234', '2005-05-23', 1, 1, 3, 89.91),
        ('12345', '2015-09-18', 2, 3, 3, 76.23);

# Modificación de datos, cambiamos el color de la segunda zapatilla por amarillas en la tabla zapatillas
UPDATE zapatilla
SET color = 'Amarillas' 
WHERE id_zapatilla = 2;

#Cambiamos la tienda a la empleada 1 a 'A Coruña' en la tabla empleados
UPDATE empleados
SET tienda = 'A Coruña'
WHERE id_empleados = 1;

#Cambiamos el número de cliente al cliente 1 en la tabla clientes
UPDATE clientes
SET numero_telefono = '12345678'
WHERE id_cliente = 1;

#Cambiamos el total de la factura 2 en la tabla facturas
UPDATE facturas
SET total = 89.91
WHERE id_factura = 2;

