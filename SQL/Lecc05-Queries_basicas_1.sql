# Conocer a las empleadas: Diseñar una consulta para obtener una lista con los datos de las
# empleadas y empleados de la empresa Northwind, consultando los campos employee_id, last_name,
# first_name.
	# Usamos SELECT para seleccionar la columnas de la tabla employees, a la que llamamos con FROM.

SELECT employee_id, last_name, first_name
FROM employees;

# Ver qué productos de la tabla products cuyos precios por unidad se encuentran entre 0 y 5
# dólares, es decir, los productos más baratos.
	# Usamos SELECT para llamar a las columnas de la tabla products, que llamamos con FROM,
    # y WHERE para determinar el valor de la consulta que buscamos usando el comparador menor
    # o igual.

SELECT product_id, product_name
FROM products
WHERE unit_price <= 5;

# Queremos conocer los productos que tengan un precio de 18, 19 o 20 dólares.
	# Similar al ejercicio anterior, usando or como operador.

SELECT product_id, product_name
FROM products
WHERE unit_price = 18 or 19 or 20;

# Conocer los productos mayor o igual que 15 y menor o igual que 50.
	# Similar que los ejercicios anteriores, usando los comparadores mayor o igual y menor o igual
    # y el operador and.

SELECT product_id, product_name
FROM products
WHERE unit_price >= 15 and unit_price <= 50;

# Conocer los productos cuyo precio sea NULL.
	# Similar al ejercicio anterior pero aludiendo a la condición NULL de la columna.

SELECT product_id, product_name
FROM products
WHERE unit_price IS NULL;

# Comparando productos: obtener los datos de aquellos productos con un precio menor a quince dólares
# pero solo aquellos que tengan un id menor que 10.
	# Similar a los ejercicios anteriores pero usando los comparadores menor que y el operador and.

SELECT product_id, product_name
FROM products
WHERE unit_price <15 and product_id <10;

# La misma consulta que en el ejercicio anterior pero haciendo uso del operador NOT.

SELECT product_id, product_name
FROM products
WHERE NOT unit_price >15 and not product_id >10;

# A Northwind le interesa conocer los datos de los países que hacen pedidos para focalizar el
# negocio en esas regiones, obtén los países a los que se envían los productos.
	# Usamos select para acudir a la columna en la que se especifica el país de envío
    # y FROM para llamar a la tabla orders.
    
SELECT ship_country
FROM orders;