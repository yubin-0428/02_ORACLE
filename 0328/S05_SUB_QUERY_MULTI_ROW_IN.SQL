--IN                서브 쿼리 결과와 같은 값을 찾습니다.                                      
SELECT empno,
       ename,
       job,
       sal,
       deptno
FROM emp
WHERE deptno IN (20,30)
;
--     EMPNO ENAME                JOB                       SAL     DEPTNO
------------ -------------------- ------------------ ---------- ----------
--      7369 SMITH                CLERK                     800         20
--      7499 ALLEN                SALESMAN                 1600         30
--      7521 WARD                 SALESMAN                 1250         30
--      7566 JONES                MANAGER                  2975         20
--      7654 MARTIN               SALESMAN                 1250         30
--      7698 BLAKE                MANAGER                  2850         30
--      7788 SCOTT                ANALYST                  3000         20
--      7844 TURNER               SALESMAN                 1500         30
--      7876 ADAMS                CLERK                    1100         20
--      7900 JAMES                CLERK                     950         30
--      7902 FORD                 ANALYST                  3000         20
--
--11 행이 선택되었습니다.