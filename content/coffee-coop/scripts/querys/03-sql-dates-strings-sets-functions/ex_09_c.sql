-- exercise 9-c
/** ) Cree la función farm.fn_short_name(p_first_name VARCHAR, p_last_name VARCHAR) que devuelva (RETURNS VARCHAR) 
la inicial del nombre en mayúscula, un punto, un espacio y los apellidos. Úsela para listar los asociados (gender = 'M')
 del municipio 54518 con su teléfono, con los alias short_name y phone, ordenados por apellido y nombre.**/

CREATE OR REPLACE FUNCTION farm.fn_short_name(p_first_name VARCHAR, p_last_name VARCHAR)
RETURNS VARCHAR
LANGUAGE plpgsql
AS $$
DECLARE
v_short VARCHAR;
BEGIN
SELECT CONCAT(UPPER(SUBSTRING(p_first_name FROM 1 FOR 1)), '. ', p_last_name) INTO v_short;
RETURN v_short;
END;
$$;

SELECT
farm.fn_short_name(T1.first_name, T1.last_name) AS short_name,
T1.phone_number AS phone
FROM farm.farmers AS T1
WHERE T1.gender = 'M'
AND T1.municipality_code = '54518'
ORDER BY T1.last_name ASC, T1.first_name ;
/**
     short_name       |   phone
-----------------------+------------
 M. Agudelo JimÃ©nez    | 3219718862
 A. Ãlvarez Villamizar | 3025342853
 A. Arango Silva       | 3053453318
 C. Arias Mora         | 3045535545
 G. Arias RodrÃ­guez    | 3131845672
 R. Barrera Villamizar | 3056539829
 A. Bastidas RodrÃ­guez | 3145736315
 A. Bastidas RodrÃ­guez | 3508682050
 N. Bedoya VÃ©lez       | 3194564518
 I. BermÃºdez FlÃ³rez    | 3139698870
 R. BermÃºdez MuÃ±oz     | 3051351571
 E. BermÃºdez Rojas     | 3142064892
 S. BermÃºdez Ruiz      | 3003993000
 D. Bonilla Duarte     | 3234592947
 Ã‰. Burbano Arango     | 3203780826
 F. Burbano FlÃ³rez     | 3028675754
 J. Burbano Molina     | 3158636721
 R. Cabrera Villamizar | 3502554241
 I. CÃ¡ceres Galvis     | 3047673614
 C. CalderÃ³n Trujillo  | 3167509635
 E. Carrillo Perdomo   | 3135267851
 C. Castillo Torres    | 3197585250
 R. Castro Contreras   | 3197205687
 N. Chamorro Vera      | 3001185317
 E. Contreras Ospina   | 3147500823
 A. Contreras PeÃ±a     | 3116255536
 Ã. Correa RÃ­os        | 3125462491
-- Más  --
/**