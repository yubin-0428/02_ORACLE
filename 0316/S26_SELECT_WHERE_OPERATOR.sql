--OR연산자를 사용하여 여러 개 조건을 만족하는 데이터 출력
--SELECT empno,
--       ename,
--	   deptno,
--	   job
--FROM emp
--WHERE job = 'MANAGER'
--   OR job = 'SALESMAN'
--   OR job = 'CLERK'
--;

SELECT empno,
       ename,
	   deptno,
	   job
FROM emp
WHERE job IN ( 'MANAGER','SALESMAN','CLERK' )
;
     EMPNO ENAME                    DEPTNO JOB
---------- -------------------- ---------- ------------------
      7369 SMITH                        20 CLERK
      7499 ALLEN                        30 SALESMAN
      7521 WARD                         30 SALESMAN
      7566 JONES                        20 MANAGER
      7654 MARTIN                       30 SALESMAN
      7698 BLAKE                        30 MANAGER
      7782 CLARK                        10 MANAGER
      7844 TURNER                       30 SALESMAN
      7876 ADAMS                        20 CLERK
      7900 JAMES                        30 CLERK
      7934 MILLER                       10 CLERK
