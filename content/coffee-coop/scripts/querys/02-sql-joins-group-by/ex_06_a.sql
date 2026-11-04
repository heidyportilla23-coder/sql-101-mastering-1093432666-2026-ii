-- exercise 6-a
/**a) Consulte los pares de fincas del municipio 54518 que est´an en la misma
vereda, con los alias rural district, farm a y farm b, ordenados por vereda.
Cada par debe aparecer una sola vez y una finca no puede emparejarse consigo
misma (use T1.farm id < T2.farm id).**/
SELECT
    T1.rural_district AS rural_district,
    T1.farm_name      AS farm_a,
    T2.farm_name      AS farm_b
FROM farm.farms AS T1
INNER JOIN farm.farms AS T2
    ON T1.rural_district = T2.rural_district
   AND T1.farm_id < T2.farm_id
WHERE T1.municipality_code = '54518'
  AND T2.municipality_code = '54518'
ORDER BY T1.rural_district ASC;
/**   rural_district    |      farm_a      |      farm_b
----------------------+------------------+------------------
 Alcaparral           | Monte Alto       | La Granja
 Alcaparral           | San JosÃ©         | La Granja
 Alcaparral           | La Floresta      | La Granja
 Alcaparral           | La Floresta      | Monte Alto
 Alcaparral           | La Floresta      | Miraflores
 Alcaparral           | La Floresta      | Los Pinos
 Alcaparral           | La Floresta      | San JosÃ©
 Alcaparral           | La Floresta      | Buenavista
 Alcaparral           | San JosÃ©         | Monte Alto
 Alcaparral           | San JosÃ©         | Miraflores
 Alcaparral           | San JosÃ©         | Los Pinos
 Alcaparral           | Buenavista       | La Granja
 Alcaparral           | Buenavista       | Monte Alto
 Alcaparral           | Los Pinos        | Miraflores
 Alcaparral           | Miraflores       | Monte Alto
 Alcaparral           | Miraflores       | La Granja
 Alcaparral           | Los Pinos        | Monte Alto
 Alcaparral           | Los Pinos        | La Granja
 Alcaparral           | Buenavista       | Miraflores
 Alcaparral           | Buenavista       | Los Pinos
 Alcaparral           | Buenavista       | San JosÃ©
 Alto Grande          | El Guayabo       | Monteverde
 Alto Grande          | El Guayabo       | La Loma
 Alto Grande          | El Guayabo       | El Nogal
 Alto Grande          | El Guayabo       | El Caney
 Alto Grande          | El Guayabo       | Las Brisas
 Alto Grande          | El Guayabo       | El Refugio
-- Más  --
**/