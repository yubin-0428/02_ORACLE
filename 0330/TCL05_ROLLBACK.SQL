--CTAS로 DEPT_TCL생성
CREATE TABLE DEPT_TCL
AS
 SELECT * FROM dept;

SELECT * FROM DEPT_TCL;

    DEPTNO DNAME                        LOC
---------- ---------------------------- --------------------------
        10 ACCOUNTING                   NEW YORK
        20 RESEARCH                     DALLAS
        30 SALES                        CHICAGO
        40 OPERATIONS                   BOSTON

--DEPT_TCL DML작업
--INSERT
--UPDATE
--DELETE
--SELECT확인

INSERT INTO DEPT_TCL VALUES (50,'DATABASE','SEOUL');
UPDATE DEPT_TCL SET LOC ='BUSAN'
WHERE DEPTNO = 40;
DELETE FROM DEPT_TCL WHERE DNAME ='RESEARCH';

--트랜잭션을 취소
ROLLBACK;
--ROLLBACK : DML작업들이 취소 되었는지 확인
SELECT * FROM DEPT_TCL;

    DEPTNO DNAME                        LOC
---------- ---------------------------- --------------------------
        10 ACCOUNTING                   NEW YORK
        20 RESEARCH                     DALLAS
        30 SALES                        CHICAGO
        40 OPERATIONS                   BOSTON