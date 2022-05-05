COL TOTAL      FOR 99
COL SEOUL      FOR 99 
COL GYEONGGI   FOR 99
COL BUSAN      FOR 99
COL ULSAN      FOR 99
COL DAEGU      FOR 99
COL GYEONGNAM  FOR 99


SELECT * FROM ( SELECT COUNT(*) OVER() TOTAL, SUBSTR(tel,1, INSTR(tel,')') -1) as area FROM student )
PIVOT( COUNT(area) FOR area IN (
                                  '02'  AS SEOUL,
                                  '031' AS GYEONGGI,
                                  '051' AS BUSAN,
                                  '052' AS ULSAN,
                                  '053' AS DAEGU,
                                  '055' AS GYEONGNAM
                                )
)
;
--TOTAL SEOUL GYEONGGI BUSAN ULSAN DAEGU GYEONGNAM
------- ----- -------- ----- ----- ----- ---------
--   20     6        2     4     0     2         6