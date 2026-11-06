-- exercise 6-a
/*
Para el directorio de la seccional, consulte las asociadas (gender = 'F')
 del municipio 54518 con su nombre corto: la inicial del primer nombre, un punto, un espacio y los apellidos 
 (por ejemplo M. Agudelo Sandoval), junto con su teléfono, con los alias short_name y phone, ordenadas por apellido y nombre.*/
 SELECT
    CONCAT(SUBSTRING(T1.first_name FROM 1 FOR 1), '. ', T1.last_name) AS short_name,
    T1.phone_number AS phone
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
  AND T1.gender = 'F'
ORDER BY T1.last_name ASC, T1.first_name ASC;
/*
   short_name      |   phone
----------------------+------------
 M. Agudelo Sandoval  | 3242280898
 E. �lvarez Bonilla   | 3236902029
 R. �lvarez C�rdenas  | 3047898372
 M. �lvarez Carrillo  | 3059237130
 M. �lvarez Correa    | 3232410671
 M. Arango Narv�ez    | 3178267449
 E. Arias �lvarez     | 3213658326
 V. Arias Ram�rez     | 3204850778
 I. Barrera Cabrera   | 3041744702
 M. Barrera Correa    | 3126485460
 A. Bastidas Chamorro | 3023807439
 M. Bastidas Medina   | 3508652479
 R. Bastidas Su�rez   | 3015208796
 M. Benavides Delgado | 3229418470
 Y. Berm�dez Henao    | 3141005257
 M. Burbano Duarte    | 3183590387
 J. Burbano Jaimes    | 3202058604
 N. Caicedo Medina    | 3183905612
 L. Caicedo Restrepo  | 3232775188
 C. C�rdenas Moreno   | 3149324862
 A. Cardona Ruiz      | 3007467744
 A. Castillo Henao    | 3136723568
 L. Chamorro V�lez    | 3002682380
 I. D�az Cu�llar      | 3507141858
 C. D�az Garc�a       | 3207660684
 D. D�az Medina       | 3023178503
 A. Duarte Duque      | 3059102841
-- Más  --
*/