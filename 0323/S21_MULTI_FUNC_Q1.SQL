SELECT deptno,
       TRUNC( AVG(NVL(sal,0)) ) AS AVG_SAL,
       MAX(sal) AS MAX_SAL,
       MIN(sal) AS MIN_SAL,
       COUNT(*) AS CNT
FROM emp
GROUP BY deptno
ORDER BY deptno DESC
;


--DEPTNO    AVG_SAL    MAX_SAL    MIN_SAL        CNT
-------- ---------- ---------- ---------- ----------
--    30       1566       2850        950          6
--    20       2175       3000        800          5
--    10       2916       5000       1300          3