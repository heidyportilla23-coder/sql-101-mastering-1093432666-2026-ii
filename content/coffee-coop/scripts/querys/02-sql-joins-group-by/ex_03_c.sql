-- exercise 3-c
/**
c) Escribiendo farm.plot varieties como T1 y farm.coffee varieties como
T2, use RIGHT JOIN para listar las variedades que no est´an sembradas en
ning´un lote, con los alias variety y species
**/
SELECT
    T2.variety_name AS variety,
    T2.species      AS species
FROM farm.plot_varieties AS T1
RIGHT JOIN farm.coffee_varieties AS T2
    ON T1.variety_id = T2.variety_id
WHERE T1.variety_id IS NULL;
-- variety | species
---------+---------
--(0 filas)