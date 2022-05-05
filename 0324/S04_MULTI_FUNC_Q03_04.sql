SELECT deptno,
       SUM(DECODE(job,'CLERK',sal)    ) as CLERK,
       SUM(DECODE(job,'MANAGER',sal)  ) as MANAGER,
       SUM(DECODE(job,'PRESIDENT',sal)) as PRESIDENT,
       SUM(DECODE(job,'ANALYST',sal)  ) as ANALYST,
       SUM(DECODE(job,'SALESMAN',sal) ) as SALESMAN,
       SUM(sal) as TOTAL
FROM emp
GROUP BY ROLLUP(deptno)
ORDER BY deptno
;
--    DEPTNO      CLERK    MANAGER  PRESIDENT    ANALYST   SALESMAN   TOTAL                                                             
------------ ---------- ---------- ---------- ---------- ---------- -------                                                             
--        10       1300       2450       5000          0          0    8750                                                             
--        20       1900       2975          0       6000          0   10875                                                             
--        30        950       2850          0          0       5600    9400                                                             
--

    DEPTNO      CLERK    MANAGER  PRESIDENT    ANALYST   SALESMAN   TOTAL
---------- ---------- ---------- ---------- ---------- ---------- -------
        10       1300       2450       5000                          8750
        20       1900       2975                  6000              10875
        30        950       2850                             5600    9400
                 4150       8275       5000       6000       5600   29025

°æ   °ú: 00:00:00.00