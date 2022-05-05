--Q2
SELECT  empno,
        ename,
        job,
        sal,
        deptno
  FROM emp
 WHERE deptno = 30
   AND job = 'SALESMAN'
;

     EMPNO ENAME                JOB                       SAL     DEPTNO
---------- -------------------- ------------------ ---------- ----------
      7499 ALLEN                SALESMAN                 1600         30
      7521 WARD                 SALESMAN                 1250         30
      7654 MARTIN               SALESMAN                 1250         30
      7844 TURNER               SALESMAN                 1500         30