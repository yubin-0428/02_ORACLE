--1. 두 집합의 SELECT절에 오는 컬럼의 개수가 동일해야 한다.                                             
--2. 두 집합의 SELECT절에 오는 컬럼의 데이터 형이 동일해야 한다.                                             
SELECT  deptno,job,AVG(NVL(sal,0)) avg_sal, COUNT(*) cnt_emp
FROM emp
GROUP BY deptno,job
UNION ALL
SELECT  deptno,null as job,AVG(NVL(sal,0)) avg_sal, COUNT(*) cnt_emp
FROM emp
GROUP BY deptno
UNION ALL
SELECT  null as deptno,null as job,AVG(NVL(sal,0)) avg_sal, COUNT(*) cnt_emp
FROM emp
ORDER BY deptno,job
;

--1 DEPTNO 그룹 집계
--2 DEPTNO, JOB 그룹 집계
--3 전체 그룹 집계


    DEPTNO JOB                   AVG_SAL    CNT_EMP
---------- ------------------ ---------- ----------
        10 CLERK                    1300          1
        10 MANAGER                  2450          1
        10 PRESIDENT                5000          1
        10                    2916.66667          3
        20 ANALYST                  3000          2
        20 CLERK                     950          2
        20 MANAGER                  2975          1
        20                          2175          5
        30 CLERK                     950          1
        30 MANAGER                  2850          1
        30 SALESMAN                 1400          4
        30                    1566.66667          6
                              2073.21429         14