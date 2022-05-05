--CTAS
CREATE TABLE dept_temp2
AS 
SELECT * FROM dept;

SELECT * FROM dept_temp2;

    DEPTNO DNAME                        LOC
---------- ---------------------------- --------------------------
        10 ACCOUNTING                   NEW YORK
        20 RESEARCH                     DALLAS
        30 SALES                        CHICAGO
        40 OPERATIONS                   BOSTON