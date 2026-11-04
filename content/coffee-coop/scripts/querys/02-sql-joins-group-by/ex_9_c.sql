-- exercise 9-c
/**
c) Considerando todos los an´alisis registrados, consulte las fincas (por nombre)
con al menos 3 an´alisis y un puntaje en taza promedio mayor o igual a
84, con los alias farm, analyses count y avg cup score (redondeado a 2
decimales), ordenadas por promedio de mayor a menor. **/
SELECT
    T1.farm_name                      AS farm,
    COUNT(T3.analysis_id)             AS analyses_count,
    ROUND(AVG(T3.cup_score), 2)       AS avg_cup_score
FROM farm.farms AS T1
INNER JOIN buy.deliveries AS T2
    ON T1.farm_id = T2.farm_id
INNER JOIN buy.quality_analyses AS T3
    ON T2.delivery_id = T3.delivery_id
GROUP BY T1.farm_id, T1.farm_name
HAVING COUNT(T3.analysis_id) >= 3
   AND AVG(T3.cup_score) >= 84
ORDER BY avg_cup_score DESC;
/**
      farm       | analyses_count | avg_cup_score
------------------+----------------+---------------
 El Caney         |              3 |         90.00
 Monteverde       |              4 |         90.00
 El Tesoro        |              3 |         90.00
 Los Pinos        |              5 |         90.00
 Las Delicias     |              5 |         90.00
 La Cristalina    |              3 |         90.00
 Santa Clara      |              3 |         90.00
 La UniÃ³n         |              3 |         90.00
 El ArrayÃ¡n       |              3 |         90.00
 El ParaÃ­so       |              3 |         90.00
 El Refugio       |              3 |         90.00
 El Triunfo       |              4 |         90.00
 El Porvenir      |              3 |         90.00
 El Recuerdo      |              3 |         90.00
 Los Pinos        |              7 |         90.00
 El Mango         |              7 |         90.00
 Las Palmas       |              5 |         90.00
 El HiguerÃ³n      |              6 |         90.00
 Altamira         |              3 |         90.00
 El Tesoro        |              3 |         90.00
 La CabaÃ±a        |              5 |         90.00
 El Triunfo       |              6 |         90.00
 El HiguerÃ³n      |              3 |         90.00
 La Selva         |              4 |         90.00
 La CabaÃ±a        |              6 |         90.00
 La Floresta      |              6 |         90.00
 La Reserva       |              3 |         90.00
-- Más  --
**/