COL TOTAL      FOR A13
COL SEOUL      FOR A13 
COL GYEONGGI   FOR A13
COL BUSAN      FOR A13
COL ULSAN      FOR A13
COL DAEGU      FOR A13
COL GYEONGNAM  FOR A13

--20EA (100%) 
SELECT COUNT(*)                      ||'EA (' || COUNT(*)                      /COUNT(*)*100 || '%)' AS TOTAL,
       COUNT(DECODE(t1.area,'02',1) )||'EA (' || COUNT(DECODE(t1.area,'02',1) )/COUNT(*)*100 || '%)' AS SEOUL,
       COUNT(DECODE(t1.area,'031',1))||'EA (' || COUNT(DECODE(t1.area,'031',1))/COUNT(*)*100 || '%)' AS GYEONGGI,
       COUNT(DECODE(t1.area,'051',1))||'EA (' || COUNT(DECODE(t1.area,'051',1))/COUNT(*)*100 || '%)' AS BUSAN,
       COUNT(DECODE(t1.area,'052',1))||'EA (' || COUNT(DECODE(t1.area,'052',1))/COUNT(*)*100 || '%)' AS ULSAN,
       COUNT(DECODE(t1.area,'053',1))||'EA (' || COUNT(DECODE(t1.area,'053',1))/COUNT(*)*100 || '%)' AS DAEGU,
       COUNT(DECODE(t1.area,'055',1))||'EA (' || COUNT(DECODE(t1.area,'055',1))/COUNT(*)*100 || '%)' AS GYEONGNAM
FROM (
    SELECT SUBSTR(tel,1, INSTR(tel,')') -1) as area
    FROM student
)t1
;

TOTAL         SEOUL         GYEONGGI      BUSAN         ULSAN         DAEGU         GYEONGNAM
------------- ------------- ------------- ------------- ------------- ------------- -------------
20EA (100%)   6EA (30%)     2EA (10%)     4EA (20%)     0EA (0%)      2EA (10%)     6EA (30%)