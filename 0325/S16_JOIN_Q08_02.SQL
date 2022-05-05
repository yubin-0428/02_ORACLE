--ORACLE JOIN
SELECT t1.*,
       t2.dname
FROM (
    SELECT deptno,
           TRUNC(AVG( NVL(sal,0) ),0) avg_sal,
           MAX(NVL(sal,0)) max_sal,
           MIN(NVL(sal,0)) mIN_sal,
           COUNT(*) cnt
    FROM emp
    GROUP BY deptno
) t1, dept t2
WHERE t1.deptno = t2.deptno
;


--ANSI JOIN
SELECT t1.*,
       t2.dname
FROM (
    SELECT deptno,
           TRUNC(AVG( NVL(sal,0) ),0) avg_sal,
           MAX(NVL(sal,0)) max_sal,
           MIN(NVL(sal,0)) mIN_sal,
           COUNT(*) cnt
    FROM emp
    GROUP BY deptno
) t1 INNER JOIN dept t2
ON t1.deptno = t2.deptno
;



DEPTNO    AVG_SAL    MAX_SAL    MIN_SAL        CNT DNAME
------ ---------- ---------- ---------- ---------- ---------------
    10       2916       5000       1300          3 ACCOUNTING
    20       2175       3000        800          5 RESEARCH
    30       1566       2850        950          6 SALES