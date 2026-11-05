-- exercise 1-a
/** Consulte el documento, los nombres, los apellidos, la fecha de a liación y la antigüedad en días a la fecha de hoy
 (CURRENT_DATE- membership_date) de los asociados del municipio 54518, con los alias document, first_name, last_name,
  membership_date y membership_days, ordenados de mayor a menor antigüedad.
**/
SELECT
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T1.membership_date AS membership_date,
    CURRENT_DATE - T1.membership_date AS membership_days
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
ORDER BY T1.membership_date ASC;
/**
  document  |    first_name     |     last_name      | membership_date | membership_days
------------+-------------------+--------------------+-----------------+-----------------
 402745033  | Juli�n Guillermo  | Valencia Narv�ez   | 1995-01-27      |           11605
 361839624  | Roc�o Alba        | Ortega Serrano     | 1995-07-10      |           11441
 546579335  | Wilson            | Parra Prada        | 1995-07-28      |           11423
 939635303  | Marleny           | �lvarez Correa     | 1996-03-20      |           11187
 748380481  | Teresa Adriana    | Valencia Moreno    | 1996-07-23      |           11062
 1012324420 | Martha Carolina   | P�rez Jaimes       | 1996-11-22      |           10940
 230971064  | Manuel            | Agudelo Jim�nez    | 1997-03-29      |           10813
 483692716  | Ramiro            | Barrera Villamizar | 1997-04-08      |           10803
 677772599  | Guillermo         | P�rez P�rez        | 1997-05-17      |           10764
 59388780   | Juan              | Ortega Zapata      | 1997-07-13      |           10707
 789425487  | Efra�n Ricardo    | Contreras Ospina   | 1997-07-21      |           10699
 172555225  | Edilma Gabriela   | Arias �lvarez      | 1998-03-24      |           10453
 659942505  | Mariana           | Barrera Correa     | 1998-03-27      |           10450
 914235490  | �scar             | Ospina Gonz�lez    | 1998-05-02      |           10414
 963176673  | Luis              | Mosquera Perdomo   | 1998-07-29      |           10326
 142439635  | Yeison            | Medina Londo�o     | 1998-09-29      |           10264
 534023693  | Myriam            | Valencia Moreno    | 1998-11-03      |           10229
 446019320  | Fernando          | Rojas C�rdenas     | 1998-12-16      |           10186
 33787285   | Rub�n             | Ramos Chamorro     | 1999-03-02      |           10110
 866702579  | alvaro            | Berm�dez Mar�n     | 1999-06-21      |            9999
 155695928  | Martha            | Giraldo Arango     | 1999-09-14      |            9914
 1138270357 | Gustavo Heriberto | Torres Guerrero    | 1999-12-30      |            9807
 14046794   | Alberto           | �lvarez Villamizar | 2000-04-14      |            9701
 1185360305 | Iv�n              | Berm�dez Fl�rez    | 2000-09-03      |            9559
 1145130870 | Elsa              | Mar�n Henao        | 2001-03-17      |            9364
 622024549  | Viviana           | Gonz�lez Molina    | 2001-04-18      |            9332
 824422301  | Hernando          | Montoya Agudelo    | 2001-07-22      |            9237
-- Más  --
**/