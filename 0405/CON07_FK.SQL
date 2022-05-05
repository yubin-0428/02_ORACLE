--DEPT_FK

--CREATE TABLE dept_fk (
--  deptno NUMBER(2) CONSTRAINT deptfk_deptno_pk PRIMARY KEY,
--  dname VARCHAR2(14),
--  loc  VARCHAR2(13)
--);

--emp_fk
--CREATE TABLE emp_fk(
--empno        NUMBER(4)     CONSTRAINT  empfk_empno_pk PRIMARY KEY       
--,ename       VARCHAR2(10)               
--,job         VARCHAR2(9)                
--,mgr         NUMBER(4)              
--,hiredate    DATE               
--,sal         NUMBER(7,2)                
--,comm        NUMBER(7,2)                
--,deptno      NUMBER(2)  CONSTRAINT empfk_deptno_fk references dept_fk(deptno)
--);          
            
col owner for a10			
col constraint_name for a35
col constraint_type for a25
col table_name for a25
col r_owner for a15
col r_constraint_name for a25
SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name,
       t1.r_owner,
       t1.r_constraint_name
FROM user_constraints t1
WHERE t1.table_name IN ('DEPT_FK','EMP_FK') 
;
       

OWNER      CONSTRAINT_NAME                     CONSTRAINT_TYPE           TABLE_NAME                 R_OWNER         R_CONSTRAINT_NAME
---------- ----------------------------------- ------------------------- ------------------------- --------------- -------------------------
SCOTT      DEPTFK_DEPTNO_PK                    P                         DEPT_FK
SCOTT      EMPFK_EMPNO_PK                      P                         EMP_FK
SCOTT      EMPFK_DEPTNO_FK                     R                         EMP_FK             SCOTT           DEPTFK_DEPTNO_PK
	   
