-- exercise 10-b
/**b) A partir del literal a), muestre solo los caficultores con un valor neto total
mayor a 5.000.000 COP.**/
SELECT
    T1.document_number             AS document,
    T1.first_name           AS first_name,
    T1.last_name            AS last_name,
    COUNT(T4.settlement_id) AS settlements_count,
    SUM(T4.net_amount)  AS total_net_cop
FROM farm.farmers AS T1
INNER JOIN farm.farms AS T2
    ON T1.farmer_id = T2.farmer_id
INNER JOIN buy.deliveries AS T3
    ON T2.farm_id = T3.farm_id
INNER JOIN pay.settlements AS T4
    ON T3.delivery_id = T4.delivery_id
WHERE T3.delivery_id LIKE 'DLV-202609%'
GROUP BY T1.farmer_id, T1.document_number, T1.first_name, T1.last_name
HAVING SUM(T4.net_amount) > 5000000
ORDER BY total_net_cop DESC;
/**
  document  |     first_name      |       last_name       | settlements_count | total_net_cop
------------+---------------------+-----------------------+-------------------+---------------
 30933664   | Cristian            | García Contreras      |                 3 |   15493357.77
 1071161211 | Alba                | Muñoz Ramírez         |                 2 |   14576631.94
 526195285  | Jairo               | Valencia Zapata       |                 2 |   14528146.87
 337551898  | Alejandro Mateo     | Flórez Uribe          |                 2 |   14460246.30
 854161034  | Luisa Martha        | Caicedo Romero        |                 1 |   13335230.83
 782091682  | Luisa               | Duque Torres          |                 2 |   12843595.73
 549378351  | Dora                | Galvis Ospina         |                 3 |   12821153.68
 182907696  | Jorge               | Duarte Zapata         |                 2 |   12777306.01
 446732017  | Reinaldo            | Ruiz Cuéllar          |                 2 |   12310076.05
 628772920  | Aura                | Osorio Medina         |                 2 |   12133626.08
 860889225  | Wilmer              | Barrera Vera          |                 2 |   12078718.23
 610231611  | Orlando             | Peña Vera             |                 1 |   12005420.07
 329350370  | Rubén               | Quintero Chamorro     |                 3 |   11967062.39
 894974935  | Alejandro           | Niño Flórez           |                 2 |   11914996.69
 1105751836 | Antonio             | Moreno Rojas          |                 3 |   11712814.76
 967037103  | Natalia             | Correa Jaimes         |                 2 |   11531226.36
 695945885  | Carolina            | Correa Pinzón         |                 2 |   11381891.73
 420092042  | Samuel              | Caicedo Mora          |                 2 |   11204499.77
 1119357624 | Yesenia Nubia       | Montoya Giraldo       |                 1 |   11114680.80
 372230229  | Sandra              | Rojas Calderón        |                 2 |   11080803.26
 917466527  | Guillermo Gustavo   | Delgado Acevedo       |                 1 |   11032091.12
 331235063  | Samuel Óscar        | Arias Jiménez         |                 2 |   10994005.87
 732259866  | Gustavo             | Marín Burbano         |                 1 |   10976260.61
 639041437  | Alberto             | Rincón Herrera        |                 1 |   10959451.38
 986072029  | Manuel              | Carrillo Betancur     |                 2 |   10910912.91
 872941046  | Inés                | Cabrera Díaz          |                 1 |   10800176.84
 841195935  | Santiago            | Galvis Guerrero       |                 1 |   10763485.08
-- Más  --
**/