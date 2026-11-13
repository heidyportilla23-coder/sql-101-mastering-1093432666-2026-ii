-- exercise 7-a
/** La seccional de Pamplona quiere un solo directorio telefónico. Consulte, en una sola lista, los asociados del municipio 54518
 y los puntos de compra de Norte de Santander que tienen teléfono registrado, con tres columnas: un texto 
 jo 'farmer' o 'collection_point',
  el nombre (para los asociados, nombres y apellidos unidos con CONCAT)
 y el teléfono, con los alias contact_type, contact_name y phone, ordenados por tipo y luego por nombre.**/
  SELECT
'farmer' AS contact_type,
CONCAT(T1.first_name, ' ', T1.last_name) AS contact_name,
T1.phone_number AS phone
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
UNION
SELECT
'collection_point',
T2.point_name,
T2.phone_number
FROM buy.collection_points AS T2
INNER JOIN geo.municipalities AS T3 ON T2.municipality_code = T3.municipality_code
WHERE T3.department_code = '54'
AND T2.phone_number IS NOT NULL
ORDER BY contact_type ASC, contact_name ;
/**
   contact_type   |           contact_name            |   phone
------------------+-----------------------------------+------------
 collection_point | Punto de Compra Chinácota 1       | 6018933221
 collection_point | Punto de Compra Convención 1      | 6013582031
 collection_point | Punto de Compra El Carmen 1       | 6026129845
 collection_point | Punto de Compra El Zulia 1        | 6014148127
 collection_point | Punto de Compra Herrán 1          | 6017529911
 collection_point | Punto de Compra Herrán 2          | 6079941701
 collection_point | Punto de Compra Ocaña 1           | 6032506284
 collection_point | Punto de Compra Sardinata 1       | 6039449180
 farmer           | Abelardo Pérez Castro             | 3245612074
 farmer           | Adriana Mosquera Ospina           | 3118036799
 farmer           | Alba Ríos Rodríguez               | 3179156514
 farmer           | Alba Vargas Losada                | 3242791385
 farmer           | Alba Vera Calderón                | 3055735681
 farmer           | Alberto Álvarez Villamizar        | 3025342853
 farmer           | Alberto Bastidas Rodríguez        | 3145736315
 farmer           | Alberto Ortiz Lasso               | 3228095091
 farmer           | Alejandra Andrea Mosquera Moreno  | 3115813829
 farmer           | Alejandra Molina Torres           | 3102358832
 farmer           | Alejandro Narváez Polanía         | 3189266165
 farmer           | Álvaro Bermúdez Marín             | 3109599129
 farmer           | Álvaro Correa Ríos                | 3125462491
 farmer           | Álvaro Valencia Rivera            | 3218112033
 farmer           | Amparo Bastidas Chamorro          | 3023807439
 farmer           | Amparo Duarte Duque               | 3059102841
 farmer           | Ancízar Arango Silva              | 3053453318
 farmer           | Ancízar Cristian Polanía Delgado  | 3028825809
 farmer           | Andrea Cardona Ruiz               | 3007467744
-- Más  --

**/