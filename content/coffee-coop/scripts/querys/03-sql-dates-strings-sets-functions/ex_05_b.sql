-- exercise 5-b 
/**
Consulte el municipio de Norte de Santander con el nombre más largo y su longitud,
 con los alias municipality y name_length. Si hay empate, debe salir el primero en orden alfabético**/
 SELECT
    T1.municipality_name AS municipality,
    LENGTH(T1.municipality_name) AS name_length
FROM geo.municipalities AS T1
INNER JOIN geo.departments AS T2 ON T1.department_code = T2.department_code
WHERE T2.department_name = 'Norte de Santander'
ORDER BY LENGTH(T1.municipality_name) DESC, T1.municipality_name ASC
LIMIT 1;
/**
municipality | name_length
--------------+-------------
(0 filas)
**/