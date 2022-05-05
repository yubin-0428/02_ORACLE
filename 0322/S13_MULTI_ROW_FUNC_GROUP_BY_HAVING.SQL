/*
SELECT deptno,
       job, 
       AVG( NVL(sal,0) ) as "avg"
FROM emp
GROUP BY deptno,job
ORDER BY 1,2
;
--    DEPTNO JOB                       avg
------------ ------------------ ----------
--        10 CLERK                    1300
--        10 MANAGER                  2450
--        10 PRESIDENT                5000
--        20 ANALYST                  3000
--        20 CLERK                     950
--        20 MANAGER                  2975
--        30 CLERK                     950
--        30 MANAGER                  2850
--        30 SALESMAN                 1400
--
--9 행이 선택되었습니다.

SELECT deptno,
       job, 
       AVG( NVL(sal,0) ) as "avg"
FROM emp
GROUP BY deptno,job
HAVING AVG( NVL(sal,0) ) >=2000
ORDER BY 1,2
;
    DEPTNO JOB                       avg
---------- ------------------ ----------
        10 MANAGER                  2450
        10 PRESIDENT                5000
        20 ANALYST                  3000
        20 MANAGER                  2975
        30 MANAGER                  2850
        
*/
        
SELECT deptno,
       job, 
       AVG( NVL(sal,0) ) as "avg"
FROM emp
WHERE sal <= 3000
GROUP BY deptno,job
HAVING AVG( NVL(sal,0) ) >=2000
ORDER BY 1,2
;


    DEPTNO JOB                       avg
---------- ------------------ ----------
        10 MANAGER                  2450
        20 ANALYST                  3000
        20 MANAGER                  2975
        30 MANAGER                  2850