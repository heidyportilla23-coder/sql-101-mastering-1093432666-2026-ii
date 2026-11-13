-- exercise 10-c
/** Usando la función dentro de un SUM, consulte por cada punto de compra (mostrando su nombre)
 el número de liquidaciones no anuladas de las entregas de ese día y el saldo total pendiente, mostrando solo los puntos 
 con saldo mayor que 0, con los alias collection_point, settlements_count y total_balance_cop, ordenados por saldo de mayor
  a menor. (Tres tablas.)**/
SELECT 
    T3.point_name AS collection_point,
    COUNT(T1.settlement_id) AS settlements_count,
    SUM(pay.fn_settlement_balance(T1.settlement_id)) AS total_balance_cop
FROM pay.settlements AS T1
INNER JOIN buy.deliveries AS T2
    ON T1.delivery_id = T2.delivery_id
INNER JOIN buy.collection_points AS T3
    ON T2.collection_point_id = T3.collection_point_id
WHERE DATE(T2.delivered_at) = '2026-09-30'  
  AND T1.status <> 'cancelled'
GROUP BY T3.point_name
HAVING SUM(pay.fn_settlement_balance(T1.settlement_id)) > 0
ORDER BY total_balance_cop DESC;
/**
       collection_point            | settlements_count | total_balance_cop
----------------------------------------+-------------------+-------------------
 Punto de Compra San Francisco 1        |                 2 |        8483555.66
 Punto de Compra El Banco 1             |                 3 |        7874484.05
 Punto de Compra San AndrÃ©s De Tumaco 1 |                 2 |        7376967.21
 Punto de Compra CajibÃ­o 3              |                 3 |        6400728.72
 Punto de Compra Manzanares 1           |                 2 |        6094824.45
 Punto de Compra Puerto Tejada 1        |                 2 |        6051013.94
 Punto de Compra El Bagre 1             |                 3 |        5013706.66
 Punto de Compra SÃ¡chica 1              |                 1 |        4965142.70
 Punto de Compra Algeciras 1            |                 2 |        4135855.75
 Punto de Compra Turbo 1                |                 1 |        4023811.68
 Punto de Compra Bochalema 1            |                 2 |        3835395.90
 Punto de Compra Carmen De ApicalÃ¡ 3    |                 1 |        3558394.56
 Punto de Compra Teruel 1               |                 2 |        3226895.19
 Punto de Compra Rioblanco 2            |                 1 |        3062643.10
 Punto de Compra Altamira 1             |                 1 |        2840302.58
 Punto de Compra Balboa 2               |                 1 |        2650830.73
 Punto de Compra Tello 1                |                 1 |        2432254.55
 Punto de Compra HerrÃ¡n 2               |                 1 |        2212055.30
 Punto de Compra PopayÃ¡n 1              |                 2 |        2000117.88
 Punto de Compra TibanÃ¡ 1               |                 1 |        1897343.72
 Punto de Compra GarzÃ³n 1               |                 1 |        1780119.24
 Punto de Compra Pacho 1                |                 1 |        1646071.75
 Punto de Compra El PlayÃ³n 1            |                 1 |        1398228.24
 Punto de Compra OcaÃ±a 1                |                 1 |        1313820.34
 Punto de Compra Armero Guayabal 2      |                 1 |        1296093.12
 Punto de Compra Bosconia 1             |                 1 |        1247639.70
 Punto de Compra JambalÃ³ 1              |                 1 |        1200195.81
-- Más  --
**/