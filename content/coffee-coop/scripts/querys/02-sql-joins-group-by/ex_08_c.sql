-- exercise 8-c
/**
c) De las entregas de ese mismo d´ıa, consulte por cada punto de compra
(mostrando su nombre) el n´umero de entregas, el peso bruto total y el peso
bruto promedio redondeado a 2 decimales, con los alias collection point,
deliveries count, total gross kg y avg gross kg.
**/
SELECT
    T2.point_name          AS collection_point,
    COUNT(*)                          AS deliveries_count,
    SUM(T1.gross_weight_kg)           AS total_gross_kg,
    ROUND(AVG(T1.gross_weight_kg), 2) AS avg_gross_kg
FROM buy.deliveries AS T1
INNER JOIN buy.collection_points AS T2
    ON T1.collection_point_id = T2.collection_point_id
WHERE T1.delivery_id LIKE 'DLV-20260930-%'
GROUP BY T2.collection_point_id, T2.point_name
ORDER BY T2.point_name ASC;
/**
   collection_point               | deliveries_count | total_gross_kg | avg_gross_kg
----------------------------------------------+------------------+----------------+--------------
 Punto de Compra AbriaquÃ­ 1                   |                1 |          48.18 |        48.18
 Punto de Compra Acevedo 1                    |                3 |         627.09 |       209.03
 Punto de Compra Agrado 1                     |                2 |         366.73 |       183.37
 Punto de Compra AlcalÃ¡ 1                     |                1 |          61.99 |        61.99
 Punto de Compra Aldana 1                     |                1 |         209.02 |       209.02
 Punto de Compra Algeciras 1                  |                5 |        1093.81 |       218.76
 Punto de Compra Altamira 1                   |                2 |         284.88 |       142.44
 Punto de Compra AndalucÃ­a 2                  |                2 |         471.26 |       235.63
 Punto de Compra Anserma 1                    |                2 |         233.71 |       116.86
 Punto de Compra Anserma 2                    |                2 |         209.24 |       104.62
 Punto de Compra Ansermanuevo 1               |                2 |         344.17 |       172.09
 Punto de Compra ApÃ­a 2                       |                1 |         404.97 |       404.97
 Punto de Compra Aranzazu 1                   |                1 |         143.29 |       143.29
 Punto de Compra Armero Guayabal 2            |                3 |         489.34 |       163.11
 Punto de Compra Ataco 1                      |                1 |         193.97 |       193.97
 Punto de Compra Balboa 1                     |                2 |         467.18 |       233.59
 Punto de Compra Balboa 2                     |                1 |         121.69 |       121.69
 Punto de Compra Baraya 1                     |                1 |         348.59 |       348.59
 Punto de Compra BelalcÃ¡zar 1                 |                2 |         314.60 |       157.30
 Punto de Compra Bochalema 1                  |                4 |         849.99 |       212.50
 Punto de Compra Bosconia 1                   |                3 |         687.42 |       229.14
 Punto de Compra CajibÃ­o 1                    |                1 |         264.45 |       264.45
 Punto de Compra CajibÃ­o 2                    |                2 |         291.56 |       145.78
 Punto de Compra CajibÃ­o 3                    |                3 |         517.94 |       172.65
 Punto de Compra Caldas 1                     |                1 |          47.40 |        47.40
 Punto de Compra Carmen De ApicalÃ¡ 1          |                2 |         248.05 |       124.03
 Punto de Compra Carmen De ApicalÃ¡ 3          |                1 |         164.55 |       164.55
-- Más  --
**/