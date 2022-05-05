--SINGLE 컬럼에서 DISTINCT
--SELECT DISTINCT deptno
--FROM emp
--;
--    DEPTNO
------------
--        30
--        10
--        20

--컬럼이 2개인 경우: 컬럼 조합에서 유일한 데이터 출력
--SELECT DISTINCT job,
--       deptno
--FROM emp
--;

--JOB                    DEPTNO
-------------------- ----------
--CLERK                      20
--MANAGER                    20
--MANAGER                    30
--MANAGER                    10
--SALESMAN                   30
--PRESIDENT                  10
--ANALYST                    20
--CLERK                      30
--CLERK                      10
SELECT DISTINCT job,
       deptno
FROM emp
ORDER BY 1,2
;
--JOB                    DEPTNO
-------------------- ----------
--ANALYST                    20
--CLERK                      10
--CLERK                      20
--CLERK                      30
--MANAGER                    10
--MANAGER                    20
--MANAGER                    30
--PRESIDENT                  10
--SALESMAN                   30
