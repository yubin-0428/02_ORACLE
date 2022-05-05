SELECT empno,
       ename,
       sal,
       deptno,
       RANK() OVER(PARTITION BY deptno ORDER BY sal DESC) "RANK_DESC"
FROM emp
;