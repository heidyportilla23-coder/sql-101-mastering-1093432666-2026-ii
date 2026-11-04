-- exercise 2-a
/** a) Consulte el documento, nombres y apellidos de todos los asociados del municipio 54518 junto con el nombre de su finca, incluyendo a quienes no tienen
finca registrada, con los alias document, first name, last name y farm**/
SELECT
    T1.document_number   AS document,
    T1.first_name AS first_name,
    T1.last_name  AS last_name,
    T2.farm_name  AS farm
FROM farm.farmers AS T1
LEFT JOIN farm.farms AS T2
    ON T1.farmer_id = T2.farmer_id
WHERE T1.municipality_code = '54518';
/**
  document  |    first_name     |     last_name      |       farm
------------+-------------------+--------------------+------------------
 1061690671 | Guillermo Pedro   | Arias Rodríguez    | La Selva
 712758473  | Wilson            | López Villamizar   | El Silencio
 134410171  | Orlando           | Salazar Bermúdez   | El Diamante
 870240973  | Jairo             | Molina Pabón       | El Recuerdo
 727945493  | Gloria            | Marín Rivera       | La Esperanza
 549054771  | María             | Burbano Duarte     | El Nogal
 549054771  | María             | Burbano Duarte     | La Divisa
 622105662  | Alejandra         | Molina Torres      | La Carolina
 622105662  | Alejandra         | Molina Torres      | La Cristalina
 622105662  | Alejandra         | Molina Torres      | Villa Rosa
 437443011  | Julián            | Peña Betancur      | Los Arrayanes
 356207226  | Luisa             | Caicedo Restrepo   | El Brillante
 356207226  | Luisa             | Caicedo Restrepo   | La Cascada
 578947645  | Mario             | Uribe Cuéllar      | El Porvenir
 578947645  | Mario             | Uribe Cuéllar      | La Primavera
 24999630   | Esperanza         | Romero Betancur    | El Oasis
 24999630   | Esperanza         | Romero Betancur    | La Florida
 914044314  | Ancízar Cristian  | Polanía Delgado    | Los Arrayanes
 358946393  | Carmen            | Cárdenas Moreno    | El Horizonte
 358946393  | Carmen            | Cárdenas Moreno    | El Porvenir
 358946393  | Carmen            | Cárdenas Moreno    | La Esperanza
 358946393  | Carmen            | Cárdenas Moreno    | La Primavera
 811782754  | Nicolás           | González Rodríguez | El Guayabo
 463842401  | Rocío             | Álvarez Cárdenas   | Bellavista
 463842401  | Rocío             | Álvarez Cárdenas   | El Encanto
 463842401  | Rocío             | Álvarez Cárdenas   | La Cumbre
 343256743  | Dora              | Hernández Correa   | Cafetal Viejo
-- Más  --
**/