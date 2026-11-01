-- exercise 9-b
/** b)Delmismod´ıa, consulte las entregas rechazadas, 
agregandouna columna calculadaconelpesopromedioporbulto(grossweightkg /bagcount)con elaliasavgkgperbag.**/
SELECT
    T1.analysis_id AS analysis,
    T1.delivery_id AS delivery,
    T1.moisture_pct AS moisture_pct,
    T1.analyst_name AS analyst_name,
    T1.observations AS observations
FROM buy.quality_analyses AS T1
WHERE T1.analyzed_at >= '2026-09-30'
AND T1.analyzed_at < '2026-10-01'
AND T1.moisture_pct NOT BETWEEN 10 AND 12;
/**
 analysis      |      delivery       | moisture_pct |    analyst_name    |                          observations   
--------------------+---------------------+--------------+--------------------+-----------------------------------------------------------------
 QA-20260930-000026 | DLV-20260930-000005 |        12.19 | Wilson Galvis      |
 QA-20260930-000018 | DLV-20260930-000006 |        17.24 | Nicolás Serrano    | Café con humedad alta, requiere más secado.
 QA-20260930-000017 | DLV-20260930-000012 |        12.15 | Natalia Trujillo   |
 QA-20260930-000033 | DLV-20260930-000027 |        12.41 | Sara Sánchez       |
 QA-20260930-000013 | DLV-20260930-000038 |        12.28 | Adriana Losada     |
 QA-20260930-000005 | DLV-20260930-000040 |        12.22 | Iván Castro        |
 QA-20260930-000027 | DLV-20260930-000043 |        12.07 | Germán González    | Caficultor solicita contramuestra.
 QA-20260930-000023 | DLV-20260930-000046 |        12.23 | Alejandra Torres   | Café de buena presentación, sin olores extraños.
 QA-20260930-000102 | DLV-20260930-000155 |        12.31 | Adriana Losada     |
 QA-20260930-000085 | DLV-20260930-000161 |        12.03 | Carlos Ospina      | Muestra limpia, color homogéneo.
 QA-20260930-000068 | DLV-20260930-000165 |        16.13 | Germán Peña        | Muestra tomada por duplicado.
 QA-20260930-000093 | DLV-20260930-000178 |        12.11 | Nicolás Serrano    | Humedad en el límite superior, se recomienda mejorar el secado.
 QA-20260930-000121 | DLV-20260930-000200 |        12.38 | Guillermo Acevedo  |
 QA-20260930-000104 | DLV-20260930-000214 |        17.68 | Carolina Rodríguez | Olor a fermento en la muestra.
 QA-20260930-000113 | DLV-20260930-000223 |         9.57 | Reinaldo Bermúdez  | Café sobresecado, grano quebradizo.
 QA-20260930-000094 | DLV-20260930-000227 |        12.43 | Ruth Polanía       |
 QA-20260930-000134 | DLV-20260930-000236 |        12.48 | Gloria Restrepo    |
 QA-20260930-000119 | DLV-20260930-000253 |         8.39 | Aníbal Pabón       | Exceso de impurezas y pasilla.
 QA-20260930-000105 | DLV-20260930-000260 |        12.01 | Daniel Betancur    |
 QA-20260930-000109 | DLV-20260930-000272 |        12.18 | Jaime Ortega       |
 QA-20260930-000145 | DLV-20260930-000277 |        12.27 | Reinaldo Bermúdez  | Muestra tomada por duplicado.
 QA-20260930-000149 | DLV-20260930-000286 |        12.28 | Germán Peña        |
-- Más  --
**/