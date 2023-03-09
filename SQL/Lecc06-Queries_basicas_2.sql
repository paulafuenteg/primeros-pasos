USE northwind;

# Mostrar nombre y precios de los primeros 10 productos ordenados por id de la tabla products
SELECT product_name, unit_price
FROM products 
ORDER BY product_id ASC
LIMIT 10;

# Misma consuta que la anterior con los últimos 10 productos id en descendente
SELECT product_name, unit_price
FROM products 
ORDER BY product_id DESC
LIMIT 10;

# Conocer qué pedidos distintos hemos tenido (eliminando entradas duplicadas según su ID en la tabla order_details).
SELECT DISTINCT order_id
FROM order_details;

# Conocer los dos primeros pedidos en detalle sin repetirse *****
SELECT distinct order_id
FROM order_details
ORDER BY order_id ASC
LIMIT 2;

# Ver los tres pedidos que hayan tenido un mayor coste para la empresa con el alias ImporteTotal
SELECT unit_price AS ImporteTotal, order_id
FROM order_details
ORDER BY unit_price DESC
LIMIT 3;

#Pedidos entre la 5 y la 10 mejor posición en cuanto al coste total
SELECT unit_price AS ImporteTotal, order_id
FROM order_details
ORDER BY unit_price DESC
LIMIT 5
OFFSET 5;

# Lista de categorías de bajo NombreDeCategorias
SELECT category_name AS NombreDeCategorias
FROM categories;

# cuál sería la fecha de envío (ShippedDate) de los pedidos almacenados en la base de datos, si estos sufrieran un retraso de 5 días. 
# Nos piden mostrar la nueva fecha renombrada como FechaRetrasada.
SELECT DATE_ADD(shipped_date, INTERVAL 5 DAY) AS FechaRetrasada
FROM orders;

#Selecciona los productos mas rentables con un precio mayor >15 <=50
SELECT product_id, product_name
FROM products
WHERE unit_price BETWEEN 15 AND 50;

#Selecciona los productos CON PRECIO DE 18, 19 y 20 dólares
SELECT product_id, product_name
FROM products
WHERE unit_price IN (18, 19, 20);