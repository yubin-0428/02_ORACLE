--1. ctas로 dept_hw 테이블 생성

CREATE TABLE dept_hw
AS
SELECT * FROM dept;

SELECT * FROM dept_hw;
    DEPTNO DNAME                        LOC
---------- ---------------------------- --------------------------
        10 ACCOUNTING                   NEW YORK
        20 RESEARCH                     DALLAS
        30 SALES                        CHICAGO
        40 OPERATIONS                   BOSTON

UPDATE dept_hw
   SET DNAME='DATABASE',
       LOC  ='SEOUL'
WHERE  DEPTNO = 30;      

SELECT * FROM dept_hw;

30 DATABASE                     SEOUL

ROLLBACK;

SELECT * FROM dept_hw;

    DEPTNO DNAME                        LOC
---------- ---------------------------- --------------------------
        10 ACCOUNTING                   NEW YORK
        20 RESEARCH                     DALLAS
        30 DATABASE                     SEOUL
        40 OPERATIONS                   BOSTON