--DESC dept_temp;

--부서번호:50
--부서명: 'DATABASE'
--지역:'SEOUL'

INSERT INTO dept_temp (deptno,dname,loc)
VALUES (50,'DATABASE','SEOUL');

--확정
COMMIT;

SELECT *
FROM dept_temp;
 
    DEPTNO DNAME                        LOC
---------- ---------------------------- --------------------------
        10 ACCOUNTING                   NEW YORK
        20 RESEARCH                     DALLAS
        30 SALES                        CHICAGO
        40 OPERATIONS                   BOSTON
        50 DATABASE                     SEOUL

--ROLLBACK; 

 