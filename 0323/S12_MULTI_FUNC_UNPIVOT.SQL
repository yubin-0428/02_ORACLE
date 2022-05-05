SELECT deptno,
       MAX(DECODE(job,'CLERK',sal)    )  AS CLERK,
       MAX(DECODE(job,'SALESMAN',sal) )  AS SALESMAN,
       MAX(DECODE(job,'ANALYST',sal)  )  AS ANALYST,
       MAX(DECODE(job,'MANAGER',sal)  )  AS MANAGER,
       MAX(DECODE(job,'PRESIDENT',sal))  AS PRESIDENT
FROM emp
GROUP BY deptno
ORDER BY deptno
;
DEPTNO      CLERK   SALESMAN    ANALYST    MANAGER  PRESIDENT
------ ---------- ---------- ---------- ---------- ----------
    10       1300                             2450       5000
    20       1100                  3000       2975
    30        950       1600                  2850