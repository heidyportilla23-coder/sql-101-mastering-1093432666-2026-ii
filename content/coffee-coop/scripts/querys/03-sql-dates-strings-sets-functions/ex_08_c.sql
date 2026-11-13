-- exercise  8-c
/** Consulte el nombre y la vereda de las ncas del municipio 54518 que entregaron café en 2025 pero no en 2026 
(use EXTRACT(year ...)), son los alias farm y rural_district, ordenadas por nca y vereda.**/
SELECT
T1.farm_name AS farm,
T1.rural_district AS rural_district
FROM farm.farms AS T1
INNER JOIN buy.deliveries AS T2 ON T1.farm_id = T2.farm_id
WHERE T1.municipality_code = '54518'
AND EXTRACT(year FROM T2.delivered_at) = 2025
EXCEPT
SELECT
T3.farm_name,
T3.rural_district
FROM farm.farms AS T3
INNER JOIN buy.deliveries AS T4 ON T3.farm_id = T4.farm_id
WHERE T3.municipality_code = '54518'
AND EXTRACT(year FROM T4.delivered_at) = 2026
ORDER BY farm ASC, rural_district ;
/**
 farm      |    rural_district
---------------+----------------------
 Agua Bonita   | GarcÃ­a
 Altamira      | El Alizal
 Bellavista    | Cunuba
 Cafetal Viejo | Caima
 Cafetal Viejo | Cunuba
 Cafetal Viejo | San JosÃ© De Tonchala
 El ArrayÃ¡n    | Iscaligua
 El Brillante  | PeÃ±as
 El Diamante   | San JosÃ© De Tonchala
 El Encanto    | Cunuba
 El Guamo      | FontibÃ³n
 El Guayabo    | Caima
 El Guayabo    | El Rosal
 El HiguerÃ³n   | Caima
 El HiguerÃ³n   | La â”ŒPa
 El Horizonte  | El Totumo
 El Horizonte  | Tampanqueba
 El JardÃ­n     | Cabecera Municipal
 El JardÃ­n     | El Escorial
 El JardÃ­n     | La Legua
 El Manantial  | Santa Matilde
 El Mango      | La Legua
 El Mirador    | El Palchal
 El Porvenir   | Iscaligua
 El Porvenir   | La â”ŒPa
 El Recreo     | La Legua
 El Recuerdo   | El Escorial
-- Más  --
**/
