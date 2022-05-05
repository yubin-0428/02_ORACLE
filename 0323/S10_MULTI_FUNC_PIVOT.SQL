SELECT * FROM (SELECT deptno, job, sal FROM emp)
PIVOT( MAX(sal) FOR deptno IN ( 10,
                                20,
                                30                                 
                              )
)
;
JOB                        10         20         30
------------------ ---------- ---------- ----------
CLERK                    1300       1100        950
SALESMAN                                       1600
ANALYST                             3000
MANAGER                  2450       2975       2850
PRESIDENT                5000


--부서별 직책별 최고급여
--SELECT deptno,job,MAX(sal)
--FROM emp
--GROUP BY deptno,job
--ORDER BY deptno,job
--;
--DEPTNO JOB                  MAX(SAL)
-------- ------------------ ----------
--    10 CLERK                    1300
--    10 MANAGER                  2450
--    10 PRESIDENT                5000
--    20 ANALYST                  3000
--    20 CLERK                    1100
--    20 MANAGER                  2975
--    30 CLERK                     950
--    30 MANAGER                  2850
--    30 SALESMAN                 1600
--
--9 행이 선택되었습니다.