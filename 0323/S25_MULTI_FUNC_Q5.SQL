SELECT deptno,
       TO_CHAR( hiredate,'YYYY' ) hire_year,
       COUNT(*) cnt,
       MAX(sal) max_sal,
       SUM(sal) SUM_sal,
       AVG(NVL(sal,0)) avg_sal
FROM emp
GROUP BY deptno,TO_CHAR( hiredate,'YYYY' )
UNION ALL
SELECT deptno,
       NULL hire_year,
       COUNT(*) cnt,
       MAX(sal) max_sal,
       SUM(sal) SUM_sal,
       AVG(NVL(sal,0)) avg_sal
FROM emp
GROUP BY deptno
UNION ALL
SELECT NULL deptno,
       NULL hire_year,
       COUNT(*) cnt,
       MAX(sal) max_sal,
       SUM(sal) SUM_sal,
       AVG(NVL(sal,0)) avg_sal
FROM emp
ORDER BY 1,2
;

--SELECT deptno,
--       TO_CHAR(hiredate,'yyyy') hire_year,
--       COUNT(*) cnt,
--       MAX(sal) max_sal,
--       SUM(sal) sum_sal,
--       AVG(sal) avg_sal
--FROM emp
--GROUP BY ROLLUP(deptno,TO_CHAR(hiredate,'yyyy'))
--;
--
--DEPTNO HIRE_YEA        CNT    MAX_SAL    SUM_SAL    AVG_SAL
-------- -------- ---------- ---------- ---------- ----------
--    10 1981              2       5000       7450       3725
--    10 1982              1       1300       1300       1300
--    10                   3       5000       8750 2916.66667
--    20 1980              1        800        800        800
--    20 1981              2       3000       5975     2987.5
--    20 1987              2       3000       4100       2050
--    20                   5       3000      10875       2175
--    30 1981              6       2850       9400 1566.66667
--    30                   6       2850       9400 1566.66667
--                        14       5000      29025 2073.21429
--
10 행이 선택되었습니다.