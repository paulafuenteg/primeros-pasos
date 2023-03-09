# Operadoras MIN(), MAX(), AVG() Y COUNT().alter
# Productos más caros de nuestra base de datos y los más baratos. Dales el alias lowest_price
# y highest_price
	# Seleccionamos el precio mínimo de la columa unit_price con la función MIN() para que 
    # aparezca en una nueva columna llamada unit price, y hacemos lo mismo con el precio más alto
    # y la función MAX().

SELECT MIN(unit_price) AS lowest_price, MAX(unit_price) AS highest_price
FROM products;

# Nos piden que añadamos otra consulta para calcular el número de productos y el precio medio
# de todos ellos
	# USAMOS la funcion COUNT() para conocer el número de columnas y AVG para calcular el
    # precio medio de la columna unit_price.

SELECT COUNT(product_id), AVG(unit_price)
FROM products;

	# Nos da como resultado que el AVG de unit_price es: 28.86

# Sacad la máxima y la mínima carga de los pedidos de EEUU. Mínima y máxima cantidad de carga para
# un pedido freight enviado a RU.
	# Usamos la funciones MAX() y MIN() en la columna freight, llamando con el FROM a la tabla orders,
    # especificando un WHERE para ubicar la consulta en la columna ship_country.

SELECT MAX(freight), MIN(freight)
FROM orders
WHERE ship_country = 'UK';

	# Nos da como resultado que MAX(freight) 288.43
	# Nos da como resultado que MIN(freight) 0.9

# ¿Qué productos se venden por encima del precio medio? Ordenar los resultados por su precio de mayor
# a menor.
	# Sabemos que el precio medio es 28.86, así que llamamos a la columna product_name con SELECT
    # de la tabla products y especificamos un WHERE para decir que el valor que buscamos es
    # mayor que el AVG. Usamos la orden ORDER BY en orden descendente.

SELECT product_name
FROM products
WHERE unit_price > 28.86
ORDER BY (unit_price) DESC;

# ¿Qué productos se han descontinuado? El atributo discontinued es un booleano, si es =1, el
# producto ha sido descontinuado.
	# Consultamos en la columna discontinued si hay algún valor de 1 que nos indique un true.
	# (Sin embargo, el valor de la columna no es un booleano, sino un TINYINT).

SELECT COUNT(discontinued)
FROM products
WHERE discontinued = 1;

	# Concluimos que no hay productos descontinuados.

# Detalles de los productos de la query entry. Nos piden product_id y product_name de aquellos
# productos no discontinuados, limitándonos a los 10 con el id más elevado.alter
	# Llamamos a las columnas product_id y product_name de la tabla products, especificando un
    # WHERE que señale a todos los elementos de la columna discontinued que sean iguales a 0
    # con una orden ORDER BY que las ordene descendentemente, pero con un limit le pedimos que nos
	# devuelva sólo 10 filas de la columna.

SELECT product_id, product_name
FROM products
WHERE discontinued = 0
ORDER BY product_id DESC limit 10;