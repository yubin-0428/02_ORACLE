--emp_trg_log 테이블 생성
--dml명령어가 실행될 경우, emp_trg_log테이블에 로그 생성
--dml사용자, dml명려어, 수행된 날짜,
--CREATE TABLE emp_trg_log
--(
--    TABLENAME VARCHAR2(30),
--    DML_TYPE  VARCHAR2(20),
--    EMPNO     NUMBER(4),
--    USER_NAME VARCHAR2(50),
--    CHANGE_DATE DATE 
--);

--SYS_CONTEXT('USERENV','SESSION_USER') : 현재 시스템에 접속 사용자
--:new.empno : 새로 추가된 EMPNO
CREATE OR REPLACE TRIGGER trg_emp_log
AFTER
INSERT OR UPDATE OR DELETE on emp_trg
FOR EACH ROW

BEGIN
    IF INSERTING THEN
        INSERT INTO emp_trg_log
        VALUES ('EMP_TRG','INSERT',:new.empno,
         SYS_CONTEXT('USERENV','SESSION_USER'),SYSDATE);
       
    ELSIF UPDATING THEN
        INSERT INTO emp_trg_log
        VALUES ('EMP_TRG','UPDATE',:old.empno,
         SYS_CONTEXT('USERENV','SESSION_USER'),SYSDATE);
    ELSIF DELETING THEN          
        INSERT INTO emp_trg_log
        VALUES ('EMP_TRG','DELETE',:old.empno,
         SYS_CONTEXT('USERENV','SESSION_USER'),SYSDATE);    
    END IF;

END;
/