-- exercise 6-b
/**b) Consulte los pares de asociados del municipio 54518 que tienen el mismo
primer apellido, mostrando el apellido y los dos nombres completos, con los
alias last name, farmer a y farmer b. Cada par una sola vez.**/
SELECT
    T1.last_name                         AS last_name,
    T1.first_name || ' ' || T1.last_name AS farmer_a,
    T2.first_name || ' ' || T2.last_name AS farmer_b
FROM farm.farmers AS T1
INNER JOIN farm.farmers AS T2
    ON T1.last_name = T2.last_name
   AND T1.farmer_id < T2.farmer_id
WHERE T1.municipality_code = '54518'
  AND T2.municipality_code = '54518'
ORDER BY T1.last_name ASC;
/**  last_name      |            farmer_a            |          farmer_b
--------------------+--------------------------------+----------------------------
 Bastidas RodrÃ­guez | Alberto Bastidas RodrÃ­guez     | Antonio Bastidas RodrÃ­guez
 DÃ­az CuÃ©llar       | InÃ©s LucÃ­a DÃ­az CuÃ©llar        | Fabio DÃ­az CuÃ©llar
 FlÃ³rez GonzÃ¡lez    | MÃ³nica Claudia FlÃ³rez GonzÃ¡lez | Myriam FlÃ³rez GonzÃ¡lez
 MejÃ­a Vera         | Nelson Samuel MejÃ­a Vera       | Elsa MejÃ­a Vera
 Valencia Moreno    | Teresa Adriana Valencia Moreno | Myriam Valencia Moreno
(5 filas)
**/