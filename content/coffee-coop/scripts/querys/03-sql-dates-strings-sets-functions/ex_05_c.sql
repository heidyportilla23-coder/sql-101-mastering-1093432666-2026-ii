-- exercise 5-c 
/**
Consulte el código y el nombre del departamento escribiendo en el WHERE exactamente 
'Norte de Santander'. Luego repita la consulta comparando UPPER(T1.department_name)
 con UPPER('Norte de Santander'). Use los alias code y department.**/
 -- Consulta 1: comparación exacta
SELECT
    T1.department_code AS code,
    T1.department_name AS department
FROM geo.departments AS T1
WHERE T1.department_name = 'Norte de Santander';

/*
code | department
------+------------
(0 filas)
*/

SELECT
    T1.department_code AS code,
    T1.department_name AS department
FROM geo.departments AS T1
WHERE UPPER(T1.department_name) = UPPER('Norte de Santander');
/*
code |     department
------+--------------------
 54   | Norte De Santander
(1 fila)
*/