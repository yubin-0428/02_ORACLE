--EXISTS				SUB QUERY의 값이 있을 경우 메인 쿼리 수행										

--SUB QUERY의 내용을 먼저 수행해서 그 결과가 1건이라도 나오면 메인 쿼리를 수행해서
--SUB QUERY의 내용이 한건도 나오지 않으면 메인 쿼리를 수행하지 않는다.

SELECT empno,
       ename,
       job,
       sal,
       deptno
FROM emp
WHERE EXISTS ( SELECT deptno
               FROM emp
               WHERE deptno = &dno);

     EMPNO ENAME                JOB                       SAL     DEPTNO
---------- -------------------- ------------------ ---------- ----------
      7369 SMITH                CLERK                     800         20
      7499 ALLEN                SALESMAN                 1600         30
      7521 WARD                 SALESMAN                 1250         30
      7566 JONES                MANAGER                  2975         20
      7654 MARTIN               SALESMAN                 1250         30
      7698 BLAKE                MANAGER                  2850         30
      7782 CLARK                MANAGER                  2450         10
      7788 SCOTT                ANALYST                  3000         20
      7839 KING                 PRESIDENT                5000         10
      7844 TURNER               SALESMAN                 1500         30
      7876 ADAMS                CLERK                    1100         20
      7900 JAMES                CLERK                     950         30
      7902 FORD                 ANALYST                  3000         20
      7934 MILLER               CLERK                    1300         10

14 행이 선택되었습니다.               