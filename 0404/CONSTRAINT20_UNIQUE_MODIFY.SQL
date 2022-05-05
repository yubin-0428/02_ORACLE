--COL  owner FOR A10
--COL  constraint_name FOR A25
--COL  constraint_type FOR A10
--COL  table_name FOR A19
--SELECT t1.owner,
--       t1.constraint_name,
--       t1.constraint_type,
--       t1.table_name
--FROM user_constraints t1
--WHERE t1.table_name IN ( 'TABLE_UNIQUE2')
--;
--
--OWNER      CONSTRAINT_NAME           CONSTRAINT TABLE_NAME
------------ ------------------------- ---------- -------------------
--SCOTT      TBLUNQ02_LOGINPWD_NN      C          TABLE_UNIQUE2
--SCOTT      TBLUNQ02_LOGINID_UNQ      U          TABLE_UNIQUE2
--SCOTT      SYS_C007424               U          TABLE_UNIQUE2

--RENAME 
--ALTER TABLE TABLE_UNIQUE2
--RENAME CONSTRAINT SYS_C007424 TO  TBLUNQ02_TEL_UNQ;
--
--COL  owner FOR A10
--COL  constraint_name FOR A25
--COL  constraint_type FOR A10
--COL  table_name FOR A19
--SELECT t1.owner,
--       t1.constraint_name,
--       t1.constraint_type,
--       t1.table_name
--FROM user_constraints t1
--WHERE t1.table_name IN ( 'TABLE_UNIQUE2')
--;
--
--OWNER      CONSTRAINT_NAME           CONSTRAINT TABLE_NAME
------------ ------------------------- ---------- -------------------
--SCOTT      TBLUNQ02_LOGINPWD_NN      C          TABLE_UNIQUE2
--SCOTT      TBLUNQ02_LOGINID_UNQ      U          TABLE_UNIQUE2
--SCOTT      TBLUNQ02_TEL_UNQ          U          TABLE_UNIQUE2

--MODIFY : DROP, MODIFY
ALTER TABLE TABLE_UNIQUE2
DROP CONSTRAINT TBLUNQ02_TEL_UNQ99;

ALTER TABLE TABLE_UNIQUE2
MODIFY (TEL CONSTRAINT TBLUNQ02_TEL_UNQ99 UNIQUE);


COL  owner FOR A10
COL  constraint_name FOR A25
COL  constraint_type FOR A10
COL  table_name FOR A19
SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1
WHERE t1.table_name IN ( 'TABLE_UNIQUE2')
;

--OWNER      CONSTRAINT_NAME           CONSTRAINT TABLE_NAME
------------ ------------------------- ---------- -------------------
--SCOTT      TBLUNQ02_LOGINPWD_NN      C          TABLE_UNIQUE2
--SCOTT      TBLUNQ02_LOGINID_UNQ      U          TABLE_UNIQUE2
--SCOTT      TBLUNQ02_TEL_UNQ99        U          TABLE_UNIQUE2