CREATE TABLE dept_const (
   deptno NUMBER(2)    CONSTRAINT deptconst_deptno_pk PRIMARY KEY,
   dname  VARCHAR2(14) CONSTRAINT deptconst_dname_unq UNIQUE,
   loc    VARCHAR2(13) CONSTRAINT deptconst_loc_nn   NOT NULL
);


col owner for a10			
col constraint_name for a35
col constraint_type for a25
col table_name for a25
SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1
WHERE t1.table_name IN ('DEPT_CONST') 
;

OWNER      CONSTRAINT_NAME                     CONSTRAINT_TYPE           TABLE_NAME
---------- ----------------------------------- ------------------------- -------------------------
SCOTT      DEPTCONST_LOC_NN                    C                         DEPT_CONST
SCOTT      DEPTCONST_DEPTNO_PK                 P                         DEPT_CONST
SCOTT      DEPTCONST_DNAME_UNQ                 U                         DEPT_CONST


CREATE TABLE emp_const (
   empno    NUMBER(4)    CONSTRAINT empconst_empno_pk PRIMARY KEY,
   ename    VARCHAR2(10) CONSTRAINT empconst_ename_nn NOT NULL,
   job      VARCHAR2(9),
   tel      VARCHAR2(20) CONSTRAINT empconst_tel_unk UNIQUE,
   hiredate DATE,
   sal      NUMBER(7,2)  CONSTRAINT empconst_sal_chk CHECK(sal BETWEEN 1000 AND 9999),
   comm     NUMBER(7,2),
   deptno   NUMBER(2)    CONSTRAINT empconst_deptno_fk REFERENCES dept_const(deptno)
);


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
WHERE t1.table_name IN ('DEPT_CONST','EMP_CONST') 
;

OWNER      CONSTRAINT_NAME                     CONSTRAINT_TYPE           TABLE_NAME                R_OWNER         R_CONSTRAINT_NAME
---------- ----------------------------------- ------------------------- ------------------------- --------------- -------------------------
SCOTT      DEPTCONST_LOC_NN                    C                         DEPT_CONST
SCOTT      DEPTCONST_DEPTNO_PK                 P                         DEPT_CONST
SCOTT      DEPTCONST_DNAME_UNQ                 U                         DEPT_CONST
SCOTT      EMPCONST_ENAME_NN                   C                         EMP_CONST
SCOTT      EMPCONST_SAL_CHK                    C                         EMP_CONST
SCOTT      EMPCONST_EMPNO_PK                   P                         EMP_CONST
SCOTT      EMPCONST_TEL_UNK                    U                         EMP_CONST
SCOTT      EMPCONST_DEPTNO_FK                  R                         EMP_CONST                 SCOTT           DEPTCONST_DEPTNO_PK

8 행이 선택되었습니다.