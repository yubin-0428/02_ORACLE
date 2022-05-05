--SELECT COUNT(comm),
--       SUM(comm),
--       AVG(comm)
--FROM emp
--;

--NULL에 데이터 누락: 평균오류
--AVG(NVL(COMM,0))
--COUNT(COMM)  SUM(COMM)  AVG(COMM)
------------- ---------- ----------
--          4       2200        550

SELECT COUNT(*),
       SUM(comm),
       AVG(NVL(comm,0))
FROM emp
;

  COUNT(*)  SUM(COMM) AVG(NVL(COMM,0))
---------- ---------- ----------------
        14       2200       157.142857