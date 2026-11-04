-- exercise 3-a 
/**a) Escribiendo buy.deliveries como T1 y buy.collection points como T2, use
RIGHT JOIN para listar el nombre de cada punto de compra con el c´odigo y el
peso bruto de las entregas que recibi´o ese d´ıa, con los alias collection point,
delivery y gross weight kg. Los puntos sin entregas ese d´ıa deben aparecer.
Pista: piense si la condici´on de la fecha debe ir en el ON o en el WHERE, y
compru´ebelo ejecutando las dos versiones.**/
-- Exercise 03 - a
-- All collection points with their deliveries of 2026-09-30
SELECT
    T2.point_name AS collection_point,
    T1.delivery_id           AS delivery,
    T1.gross_weight_kg       AS gross_weight_kg
FROM buy.deliveries AS T1
RIGHT JOIN buy.collection_points AS T2
    ON T1.collection_point_id = T2.collection_point_id
   AND T1.delivery_id LIKE 'DLV-20260930-%'
ORDER BY T2.point_name ASC;
/**
      collection_point               |      delivery       | gross_weight_kg
----------------------------------------------+---------------------+-----------------
 Punto de Compra Abriaquí 1                   | DLV-20260930-000164 |           48.18
 Punto de Compra Acevedo 1                    | DLV-20260930-000028 |          258.00
 Punto de Compra Acevedo 1                    | DLV-20260930-000292 |          122.13
 Punto de Compra Acevedo 1                    | DLV-20260930-000094 |          246.96
 Punto de Compra Agrado 1                     | DLV-20260930-000080 |          120.11
 Punto de Compra Agrado 1                     | DLV-20260930-000202 |          246.62
 Punto de Compra Aipe 1                       |                     |
 Punto de Compra Aipe 2                       |                     |
 Punto de Compra Alcalá 1                     | DLV-20260930-000075 |           61.99
 Punto de Compra Aldana 1                     | DLV-20260930-000137 |          209.02
 Punto de Compra Algeciras 1                  | DLV-20260930-000286 |          194.68
 Punto de Compra Algeciras 1                  | DLV-20260930-000087 |          116.95
 Punto de Compra Algeciras 1                  | DLV-20260930-000130 |          290.55
 Punto de Compra Algeciras 1                  | DLV-20260930-000246 |          247.42
 Punto de Compra Algeciras 1                  | DLV-20260930-000249 |          244.21
 Punto de Compra Altamira 1                   | DLV-20260930-000231 |          128.21
 Punto de Compra Altamira 1                   | DLV-20260930-000282 |          156.67
 Punto de Compra Andalucía 1                  |                     |
 Punto de Compra Andalucía 2                  | DLV-20260930-000203 |          166.57
 Punto de Compra Andalucía 2                  | DLV-20260930-000240 |          304.69
 Punto de Compra Anserma 1                    | DLV-20260930-000009 |           56.80
 Punto de Compra Anserma 1                    | DLV-20260930-000079 |          176.91
 Punto de Compra Anserma 2                    | DLV-20260930-000188 |           40.13
 Punto de Compra Anserma 2                    | DLV-20260930-000157 |          169.11
 Punto de Compra Ansermanuevo 1               | DLV-20260930-000166 |          245.94
 Punto de Compra Ansermanuevo 1               | DLV-20260930-000242 |           98.23
 Punto de Compra Apía 1                       |                     |
-- Más  --
**/