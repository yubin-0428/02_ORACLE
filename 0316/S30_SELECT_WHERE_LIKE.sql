--사원 이름의 두 번째 글자가 L인 사원 출력
SELECT empno,
       ename,
	   job,
	   deptno
FROM emp
WHERE ename LIKE '_L%'
;

     EMPNO ENAME                JOB                    DEPTNO
---------- -------------------- ------------------ ----------
      7499 ALLEN                SALESMAN                   30
      7698 BLAKE                MANAGER                    30
      7782 CLARK                MANAGER                    10
