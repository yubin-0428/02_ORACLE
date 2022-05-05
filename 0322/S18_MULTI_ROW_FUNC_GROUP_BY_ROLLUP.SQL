--EPTNO별로 그룹화 한후 ROLLUP() 함수에 JOB지정                                            
--                                           
--           GROUP BY deptno, ROLLUP(job)                                
--SELECT deptno,job,COUNT(*)
--FROM emp
--GROUP BY deptno,ROLLUP(job)
--;
--    DEPTNO JOB                  COUNT(*)
------------ ------------------ ----------
--        10 CLERK                       1
--        10 MANAGER                     1
--        10 PRESIDENT                   1
--        10                             3
--        20 CLERK                       2
--        20 ANALYST                     2
--        20 MANAGER                     1
--        20                             5
--        30 CLERK                       1
--        30 MANAGER                     1
--        30 SALESMAN                    4
--        30                             6


SELECT deptno,job,COUNT(*)
FROM emp
GROUP BY job ,ROLLUP(deptno)
;

--    DEPTNO JOB                  COUNT(*)
------------ ------------------ ----------
--        10 CLERK                       1
--        20 CLERK                       2
--        30 CLERK                       1
--           CLERK                       4
--        20 ANALYST                     2
--           ANALYST                     2
--        10 MANAGER                     1
--        20 MANAGER                     1
--        30 MANAGER                     1
--           MANAGER                     3
--        30 SALESMAN                    4
--           SALESMAN                    4
--        10 PRESIDENT                   1
--           PRESIDENT                   1
--
--14 행이 선택되었습니다.