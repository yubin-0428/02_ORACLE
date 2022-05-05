--dept_trG
CREATE TABLE DEPT_TRG
AS
SELECT * FROM dept;


CREATE TABLE DEPT_TRG_LOG
(
  TABLENAME VARCHAR2(10),
  DML_TYPE  VARCHAR2(10),
  DEPTNO    NUMBER(2),
  USER_NAME VARCHAR2(20),
  CHANGE_DATE DATE
);

SELECT * FROM DEPT_TRG;
SELECT * FROM DEPT_TRG_LOG;

SET SERVEROUTPUT ON
CREATE OR REPLACE TRIGGER trg_dept_log                                  
AFTER                                   
INSERT OR UPDATE OR DELETE on DEPT_TRG                                  
FOR EACH ROW                                    

BEGIN
    IF INSERTING THEN                                               
        INSERT INTO DEPT_TRG_LOG                                                
        VALUES ('DEPT_TRG','INSERT',:new.deptno,                                              
         SYS_CONTEXT('USERENV','SESSION_USER'),SYSDATE);                                                
                                                    
    ELSIF UPDATING THEN                                             
        INSERT INTO DEPT_TRG_LOG                                                
        VALUES ('DEPT_TRG','UPDATE',:old.deptno,                                              
         SYS_CONTEXT('USERENV','SESSION_USER'),SYSDATE);                                                
    ELSIF DELETING THEN                                                         
        INSERT INTO DEPT_TRG_LOG                                                
        VALUES ('DEPT_TRG','DELETE',:old.deptno,                                              
         SYS_CONTEXT('USERENV','SESSION_USER'),SYSDATE);                                                    
    END IF;

END;
/