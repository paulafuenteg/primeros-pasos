# AÑADIR COLUMNA MARCA Y TALLA EN LA TABLA ZAPATILLA
	# Llamamos a la tabla que queremos editar con ALTER table, y para añadir una columna nueva
    # usamos ADD COLUMN, llamamos a la nueva columna 'marca' y la determinamos como un código
    # de texto de longitud variable, especificada en 45 caracteres, que no puede quedarse vacía.
    # Hacemos lo mismo para crear 'talla', que contendrá un integer y tampoco podrá quedarse vacía.

ALTER table zapatilla
ADD COLUMN
marca VARCHAR (45) NOT NULL;
ALTER table zapatilla
ADD COLUMN
talla INT NOT NULL;

# ALTERAR TIPO DE DATO EN LA COLUMNA SALARIO DE LA TABLA EMPLEADOS
	# Llamamos a la columna empleados y usamos MODIFY COLUMN para convertir los datos de salario
    # a elementos de tipo float.

ALTER table empleados
MODIFY COLUMN
salario FLOAT;

# ELIMINAR LA COLUMNA PAIS DE LA TABLA CLIENTES
	# Usamos DROP COLUMN.

ALTER table clientes
DROP COLUMN pais;

# MODIFICAR COLUMNA CODIGO_POSTAL A INTEGER DE 5 CARACTERES EN LA TABLA CLIENTES
	# Llamamos a la tabla clientes y usamos MODIFY COLUMN para convertir codigo_postal a un
    # integer de 5 caracteres.

ALTER table clientes
MODIFY COLUMN codigo_postal INT (5);

# INCLUIR COLUMNA EN LA TABLA FACTURAS
	# Añadimos con ADD column la columna 'total' en la tabla facturas, y la hacemos de tipo float.

ALTER table facturas
ADD COLUMN total FLOAT;