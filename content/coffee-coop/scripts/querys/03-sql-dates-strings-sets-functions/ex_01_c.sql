-- exercise 1-c
--c) Consulte en una sola la, sin tabla, el resultado de NOW() y de CURRENT_DATE, con los alias now_ts y today.
SELECT
    NOW() AS now_ts,
    CURRENT_DATE AS today;
    /**
         now_ts             |   today
-------------------------------+------------
 2026-11-05 14:04:42.636712-05 | 2026-11-05
(1 fila)
**/