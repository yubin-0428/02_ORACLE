col owner for a10			
col constraint_name for a35
col constraint_type for a25
--col table_name for a25
--col r_owner for a15
--col r_constraint_name for a25
--SELECT t1.owner,
--       t1.constraint_name,
--       t1.constraint_type,
--       t1.table_name,
--       t1.r_owner,
--       t1.r_constraint_name
--FROM user_constraints t1
--WHERE t1.table_name IN ('EMP_FK') 
--;
--OWNER      CONSTRAINT_NAME                     CONSTRAINT_TYPE           TABLE_NAME                R_OWNER         R_CONSTRAINT_NAME
------------ ----------------------------------- ------------------------- ------------------------- --------------- -------------------------
--SCOTT      EMPFK_DEPTNO_FK                     R                         EMP_FK                    SCOTT           DEPTFK_DEPTNO_PK
--SCOTT      EMPFK_EMPNO_PK                      P                         EMP_FK


--EMP_FK ename UNIQUE 생성  empfk_ename_uk

ALTER TABLE emp_fk
ADD CONSTRAINT  empfk_ename_uk UNIQUE(ename);


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
WHERE t1.table_name IN ('EMP_FK') 
;

OWNER      CONSTRAINT_NAME                     CONSTRAINT_TYPE           TABLE_NAME                R_OWNER         R_CONSTRAINT_NAME
---------- ----------------------------------- ------------------------- ------------------------- --------------- -------------------------
SCOTT      EMPFK_DEPTNO_FK                     R                         EMP_FK                    SCOTT           DEPTFK_DEPTNO_PK
SCOTT      EMPFK_EMPNO_PK                      P                         EMP_FK
SCOTT      EMPFK_ENAME_UK                      U                         EMP_FK

경   과: 00:00:00.16