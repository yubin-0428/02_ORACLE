--BEFORE 트리거
--STEP 1. CTAS로 EMP;
--CREATE TABLE emp_trg
--AS
--SELECT * FROM emp;    

--SELECT * FROM emp_trg;

--STEP 2. TRIGGER생성
--SELECT TO_CHAR(SYSDATE,'DY') FROM DUAL;
--
--TO_CHAR(
----------
--화


CREATE OR REPLACE TRIGGER trg_emp_nodm_weekend
BEFORE
INSERT OR UPDATE OR DELETE ON emp_trg

DECLARE
    
BEGIN
        IF  TO_CHAR(SYSDATE,'DY') IN ('토','일') THEN
            IF INSERTING THEN
                RAISE_APPLICATION_ERROR(-20000,'주말 사원정보 추가 불가');
            ELSIF UPDATING THEN
                RAISE_APPLICATION_ERROR(-20001,'주말 사원정보 수정 불가');
            ELSIF DELETING THEN
                RAISE_APPLICATION_ERROR(-20002,'주말 사원정보 삭제 불가');
            ELSE 
                RAISE_APPLICATION_ERROR(-20003,'주말 사원정보 변경 불가');            
            END IF;
            
            
        END IF;
END;
/














