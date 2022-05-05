--emp_trg_log ���̺� ����
--dml��ɾ ����� ���, emp_trg_log���̺� �α� ����
--dml�����, dml�����, ����� ��¥,
--CREATE TABLE emp_trg_log
--(
--    TABLENAME VARCHAR2(30),
--    DML_TYPE  VARCHAR2(20),
--    EMPNO     NUMBER(4),
--    USER_NAME VARCHAR2(50),
--    CHANGE_DATE DATE 
--);

--SYS_CONTEXT('USERENV','SESSION_USER') : ���� �ý��ۿ� ���� �����
--:new.empno : ���� �߰��� EMPNO
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