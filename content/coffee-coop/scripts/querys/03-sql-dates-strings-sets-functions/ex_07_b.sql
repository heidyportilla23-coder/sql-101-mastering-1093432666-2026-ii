-- exercise 7-b 
/** Consulte los códigos de municipio de Norte de Santander donde vive algún asociado unidos con los códigos 
de municipio donde hay alguna nca, con el alias municipality_code, ordenados por código. Escriba la consulta
 dos veces: una con UNION y otra con UNION ALL.**/
SELECT
T1.municipality_code AS municipality_code
FROM farm.farmers AS T1
INNER JOIN geo.municipalities AS T2 ON T1.municipality_code = T2.municipality_code
WHERE T2.department_code = '54'
UNION
SELECT
T3.municipality_code
FROM farm.farms AS T3
INNER JOIN geo.municipalities AS T4 ON T3.municipality_code = T4.municipality_code
WHERE T4.department_code = '54'
ORDER BY municipality_code;
/** 
municipality_code
-------------------
 54001
 54003
 54051
 54099
 54109
 54125
 54128
 54172
 54174
 54206
 54223
 54239
 54245
 54250
 54261
 54313
 54344
 54347
 54377
 54385
 54398
 54405
 54418
 54480
 54498
 54518
 54520
-- Más  --
**/
-- Version 2: UNION ALL
SELECT
T1.municipality_code AS municipality_code
FROM farm.farmers AS T1
INNER JOIN geo.municipalities AS T2 ON T1.municipality_code = T2.municipality_code
WHERE T2.department_code = '54'
UNION ALL
SELECT
T3.municipality_code
FROM farm.farms AS T3
INNER JOIN geo.municipalities AS T4 ON T3.municipality_code = T4.municipality_code
WHERE T4.department_code = '54'
ORDER BY municipality_code;
/**
 municipality_code
-------------------
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
-- Más  --
**/