--exercise 8-a
/**
a) Consulte el nombre de cada departamento y su n´umero de municipios, con
los alias department y municipalities count, ordenados de mayor a menor
n´umero de municipios.
**/
SELECT
    T1.department_name AS department,
    COUNT(T2.municipality_code) AS municipalities_count
FROM geo.departments AS T1
INNER JOIN geo.municipalities AS T2
    ON T1.department_code = T2.department_code
GROUP BY T1.department_code, T1.department_name
ORDER BY municipalities_count DESC;
/**
                        department                        | municipalities_count
----------------------------------------------------------+----------------------
 Antioquia                                                |                  125
 BoyacÃ¡                                                   |                  123
 Cundinamarca                                             |                  116
 Santander                                                |                   87
 NariÃ±o                                                   |                   64
 Tolima                                                   |                   47
 BolÃ­var                                                  |                   46
 Valle Del Cauca                                          |                   42
 Cauca                                                    |                   42
 Norte De Santander                                       |                   40
 Huila                                                    |                   37
 CÃ³rdoba                                                  |                   30
 ChocÃ³                                                    |                   30
 Magdalena                                                |                   30
 Meta                                                     |                   29
 Caldas                                                   |                   27
 Sucre                                                    |                   26
 Cesar                                                    |                   25
 AtlÃ¡ntico                                                |                   23
 Casanare                                                 |                   19
 CaquetÃ¡                                                  |                   16
 La Guajira                                               |                   15
 Risaralda                                                |                   14
 Putumayo                                                 |                   13
 Quindio                                                  |                   12
 Arauca                                                   |                    7
 Guaviare                                                 |                    4
-- Más  --
**/