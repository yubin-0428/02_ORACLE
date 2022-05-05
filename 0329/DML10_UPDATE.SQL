전체 데이터 수정
loc를 모두 SEOUL변경
SELECT *
FROM dept_temp2;

UPDATE dept_temp2
   SET LOC = 'SEOUL'
;   

SELECT *
FROM dept_temp2;

    DEPTNO DNAME                        LOC
---------- ---------------------------- --------------------------
        10 ACCOUNTING                   SEOUL
        20 RESEARCH                     SEOUL
        30 SALES                        SEOUL
        40 OPERATIONS                   SEOUL
ROLLBACK;

SELECT *
FROM dept_temp2;

    DEPTNO DNAME                        LOC
---------- ---------------------------- --------------------------
        10 ACCOUNTING                   NEW YORK
        20 RESEARCH                     DALLAS
        30 SALES                        CHICAGO
        40 OPERATIONS                   BOSTON