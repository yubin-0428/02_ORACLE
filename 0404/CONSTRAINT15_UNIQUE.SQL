CREATE TABLE table_unique2(
   LOGIN_ID  VARCHAR2(20 BYTE) CONSTRAINT TBLUNQ02_LOGINID_UNQ  UNIQUE,
   LOGIN_PWD VARCHAR2(20 )     CONSTRAINT TBLUNQ02_LOGINPWD_NN  NOT NULL,
   tel       VARCHAR2(20)
);


COL  owner FOR A10
COL  constraint_name FOR A25
COL  constraint_type FOR A10
COL  table_name FOR A19
SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1
WHERE t1.table_name = 'TABLE_UNIQUE2'
;


OWNER      CONSTRAINT_NAME           CONSTRAINT TABLE_NAME
---------- ------------------------- ---------- -------------------
SCOTT      TBLUNQ02_LOGINPWD_NN      C          TABLE_UNIQUE2
SCOTT      TBLUNQ02_LOGINID_UNQ      U          TABLE_UNIQUE2