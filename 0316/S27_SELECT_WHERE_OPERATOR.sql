--IN과 논리 부정 연산자
--SELECT empno,
--       ename,
--	   deptno,
--	   job
--FROM emp
--WHERE job !=  'MANAGER'
--AND   job !=  'SALESMAN'
--AND   job !=  'CLERK' 
--;

SELECT empno,
       ename,
	   deptno,
	   job
FROM emp
WHERE job NOT IN ( 'MANAGER','SALESMAN','CLERK' )
;

     EMPNO ENAME                    DEPTNO JOB
---------- -------------------- ---------- ------------------
      7788 SCOTT                        20 ANALYST
      7839 KING                         10 PRESIDENT
      7902 FORD                         20 ANALYST