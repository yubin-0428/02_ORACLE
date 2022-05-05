--NOT LIKE
SELECT empno,
       ename,
	   job,
	   deptno
FROM emp
WHERE ename NOT LIKE '%AM%'
;
     EMPNO ENAME  JOB                    DEPTNO
---------- ------ ------------------ ----------
      7369 SMITH  CLERK                      20
      7499 ALLEN  SALESMAN                   30
      7521 WARD   SALESMAN                   30
      7566 JONES  MANAGER                    20
      7654 MARTIN SALESMAN                   30
      7698 BLAKE  MANAGER                    30
      7782 CLARK  MANAGER                    10
      7788 SCOTT  ANALYST                    20
      7839 KING   PRESIDENT                  10
      7844 TURNER SALESMAN                   30
      7902 FORD   ANALYST                    20
      7934 MILLER CLERK                      10
