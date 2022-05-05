--TRUNC: 주어진 숫자를 버림 한 후 출력함
--문법)
--TRUNC(숫자, 원하는 자릿수)
SELECT TRUNC(1234.5678)    AS TRUNC01,
       TRUNC(1234.5678,1)  AS TRUNC02,
       TRUNC(1234.5678,2)  AS TRUNC03,
	   TRUNC(1234.5678,-1) AS TRUNC04,
	   TRUNC(1234.5678,-2) AS TRUNC05	   
FROM dual
;
   TRUNC01    TRUNC02    TRUNC03    TRUNC04    TRUNC05
---------- ---------- ---------- ---------- ----------
      1234     1234.5    1234.56       1230       1200
