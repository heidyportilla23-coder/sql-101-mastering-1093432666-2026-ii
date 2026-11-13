-- exercise 8-b 
/**
Consulte el código y el nombre de los municipios de Norte de Santander que tienen ncas pero no tienen punto de compra,
 con los mismos alias. Son los candidatos para abrir nuevos puntos.**/
SELECT
T2.municipality_code AS municipality_code,
T2.municipality_name AS municipality
FROM farm.farms AS T1
INNER JOIN geo.municipalities AS T2 ON T1.municipality_code = T2.municipality_code
WHERE T2.department_code = '54'
EXCEPT
SELECT
T4.municipality_code,
T4.municipality_name
FROM buy.collection_points AS T3
INNER JOIN geo.municipalities AS T4 ON T3.municipality_code = T4.municipality_code
WHERE T4.department_code = '54'
ORDER BY municipality;
/**
 municipality_code |   municipality
-------------------+-------------------
 54003             | Ábrego
 54051             | Arboledas
 54109             | Bucarasica
 54128             | Cáchira
 54125             | Cácota
 54174             | Chitagá
 54001             | Cúcuta
 54223             | Cucutilla
 54239             | Durania
 54250             | El Tarra
 54313             | Gramalote
 54344             | Hacarí
 54385             | La Esperanza
 54398             | La Playa
 54377             | Labateca
 54405             | Los Patios
 54418             | Lourdes
 54480             | Mutiscua
 54518             | Pamplona
 54520             | Pamplonita
 54553             | Puerto Santander
 54599             | Ragonvalia
 54660             | Salazar
 54670             | San Calixto
 54673             | San Cayetano
 54680             | Santiago
 54743             | Silos
-- Más  --
**/