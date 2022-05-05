--1. 모든 컬럼(데이터) 모두 복사					
CREATE TABLE dept_ddl
AS
SELECT * FROM dept;

SELECT * FROM dept_ddl;

    DEPTNO DNAME                        LOC
---------- ---------------------------- --------------------------
        10 ACCOUNTING                   NEW YORK
        20 RESEARCH                     DALLAS
        30 SALES                        CHICAGO
        40 OPERATIONS                   BOSTON