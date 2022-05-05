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
SELECT  null deptno,job,AVG(NVL(sal,0)) avg_sal, COUNT(*) cnt_emp
FROM emp
GROUP BY job
UNION ALL
SELECT  null deptno,null as job,AVG(NVL(sal,0)) avg_sal, COUNT(*) cnt_emp
FROM emp
ORDER BY deptno,job
;

--1 DEPTNO 그룹 집계
--2 JOB 그룹 집계
--3 DEPTNO, JOB 그룹 집계
--4 전체 그룹 집계