--CREATE TABLE CHAP10HW_EMP      AS  SELECT * FROM emp       ;
--CREATE TABLE CHAP10HW_DEPT     AS  SELECT * FROM dept      ;
--CREATE TABLE CHAP10HW_SALGRADE AS  SELECT * FROM salgrade  ;

INSERT INTO CHAP10HW_DEPT VALUES (50,'ORACLE','BUSAN'   );
INSERT INTO CHAP10HW_DEPT VALUES (60,'SQL'   ,'ILSAN'   );
INSERT INTO CHAP10HW_DEPT VALUES (70,'SELECT','INCHEON' );
INSERT INTO CHAP10HW_DEPT VALUES (80,'DML'   ,'BUNDANG' );

SELECT *
FROM CHAP10HW_DEPT;

    DEPTNO DNAME                        LOC
---------- ---------------------------- --------------------------
        10 ACCOUNTING                   NEW YORK
        20 RESEARCH                     DALLAS
        30 SALES                        CHICAGO
        40 OPERATIONS                   BOSTON
        50 ORACLE                       BUSAN
        60 SQL                          ILSAN
        70 SELECT                       INCHEON
        80 DML                          BUNDANG

8 행이 선택되었습니다.