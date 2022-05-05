-- ACCOUNTING IT 'S DEPTNO 	10
--SELECT dname,
--       'IT ''s deptno',
--       deptno
--FROM dept
--;
--DNAME                        'IT''SDEPTNO'                DEPTNO
------------------------------ ------------------------ ----------
--ACCOUNTING                   IT 's deptno                     10
--RESEARCH                     IT 's deptno                     20
--SALES                        IT 's deptno                     30
--OPERATIONS                   IT 's deptno                     40

SELECT dname,
       q'[IT 's deptno]',
       deptno
FROM dept
;
--DNAME                        Q'[IT'SDEPTNO]'              DEPTNO
------------------------------ ------------------------ ----------
--ACCOUNTING                   IT 's deptno                     10
--RESEARCH                     IT 's deptno                     20
--SALES                        IT 's deptno                     30
--OPERATIONS                   IT 's deptno                     40











