--문법)
--ROUND(숫자, 출력을 원한는 자리수)
COL ROUND01 FOR 999999
SELECT ROUND(1234.5678)    AS ROUND01,
       ROUND(1234.5678,1)  AS ROUND02,
       ROUND(1234.5678,2)  AS ROUND03,
       ROUND(1234.5678,-1) AS ROUND04,
	   ROUND(1234.5678,-2) AS ROUND05
FROM dual
;

ROUND01    ROUND02    ROUND03    ROUND04    ROUND05
------- ---------- ---------- ---------- ----------
   1235     1234.6    1234.57       1230       1200