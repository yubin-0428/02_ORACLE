--BEFORE Ʈ����
--STEP 1. CTAS�� EMP;
--CREATE TABLE emp_trg
--AS
--SELECT * FROM emp;    

--SELECT * FROM emp_trg;

--STEP 2. TRIGGER����
--SELECT TO_CHAR(SYSDATE,'DY') FROM DUAL;
--
--TO_CHAR(
----------
--ȭ


CREATE OR REPLACE TRIGGER trg_emp_nodm_weekend
BEFORE
INSERT OR UPDATE OR DELETE ON emp_trg

DECLARE
    
BEGIN
        IF  TO_CHAR(SYSDATE,'DY') IN ('��','��') THEN
            IF INSERTING THEN
                RAISE_APPLICATION_ERROR(-20000,'�ָ� ������� �߰� �Ұ�');
            ELSIF UPDATING THEN
                RAISE_APPLICATION_ERROR(-20001,'�ָ� ������� ���� �Ұ�');
            ELSIF DELETING THEN
                RAISE_APPLICATION_ERROR(-20002,'�ָ� ������� ���� �Ұ�');
            ELSE 
                RAISE_APPLICATION_ERROR(-20003,'�ָ� ������� ���� �Ұ�');            
            END IF;
            
            
        END IF;
END;
/














