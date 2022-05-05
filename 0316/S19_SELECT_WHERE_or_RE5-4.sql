SELECT *
FROM emp
WHERE deptno =20
OR job = 'SALESMAN'
;

     EMPNO ENAME                JOB                       MGR HIREDATE        SAL       COMM     DEPTNO
---------- -------------------- ------------------ ---------- -------- ---------- ---------- ----------
      7369 SMITH                CLERK                    7902 80/12/17        800                    20
      7499 ALLEN                SALESMAN                 7698 81/02/20       1600        300         30
      7521 WARD                 SALESMAN                 7698 81/02/22       1250        500         30
      7566 JONES                MANAGER                  7839 81/04/02       2975                    20
      7654 MARTIN               SALESMAN                 7698 81/09/28       1250       1400         30
      7788 SCOTT                ANALYST                  7566 87/04/19       3000                    20
      7844 TURNER               SALESMAN                 7698 81/09/08       1500          0         30
      7876 ADAMS                CLERK                    7788 87/05/23       1100                    20
      7902 FORD                 ANALYST                  7566 81/12/03       3000                    20
