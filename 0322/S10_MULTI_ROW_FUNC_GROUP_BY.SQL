--부서별 급여 합계
--SELECT SUM(sal),'10' AS deptno FROM emp WHERE deptno =10
--UNION ALL
--SELECT SUM(sal),'20' FROM emp WHERE deptno =20
--UNION ALL
--SELECT SUM(sal),'30' FROM emp WHERE deptno =30
--;
--  SUM(SAL) DEPT
------------ ----
--      8750 10
--     10875 20
--      9400 30

SELECT deptno,SUM(sal)
FROM emp
GROUP BY deptno
;