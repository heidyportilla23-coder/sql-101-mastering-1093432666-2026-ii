-- exercise 5-a
/**
Consulte el nombre de cada variedad en mayúscula sostenida, la especie en minúscula y la longitud del nombre de la variedad,
 con los alias variety_upper, species y name_length, ordenadas por longitud de mayor a menor y luego por nombre.**/
SELECT
    UPPER(T1.variety_name) AS variety_upper,
    LOWER(T1.species) AS species,
    LENGTH(T1.variety_name) AS name_length
FROM farm.coffee_varieties AS T1
ORDER BY LENGTH(T1.variety_name) DESC, T1.variety_name ASC;
/**
variety_upper | species | name_length
---------------+---------+-------------
 BORB�N ROSADO | arabica |          13
 CENICAF� 1    | arabica |          10
 MARAGOGIPE    | arabica |          10
 CASTILLO      | arabica |           8
 COLOMBIA      | arabica |           8
 PACAMARA      | arabica |           8
 CATURRA       | arabica |           7
 ROBUSTA       | robusta |           7
 BORB�N        | arabica |           6
 GEISHA        | arabica |           6
 T�PICA        | arabica |           6
 TABI          | arabica |           4
(12 filas)
**/