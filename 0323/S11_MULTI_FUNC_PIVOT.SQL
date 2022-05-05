--for절의 가로줄에 표기할 열
--in절에 출력하려는 열데이터를 지정
SELECT * FROM (SELECT deptno, job, sal FROM emp)
PIVOT( MAX(sal) FOR job IN ( 'CLERK'     as CLERK,
                             'SALESMAN'  as SALESMAN,
                             'ANALYST'   as ANALYST,
                             'MANAGER'   as MANAGER,
                             'PRESIDENT' as PRESIDENT
                              )
)
;

DEPTNO      CLERK   SALESMAN    ANALYST    MANAGER  PRESIDENT
------ ---------- ---------- ---------- ---------- ----------
    30        950       1600                  2850
    10       1300                             2450       5000
    20       1100                  3000       2975    
 
  
  
