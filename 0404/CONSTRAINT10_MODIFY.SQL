ALTER TABLE TABLE_NOTNULL2
MODIFY( TEL CONSTRAINT TBL_NM2_TEL_NN  NOT NULL);

COL  owner FOR A10
COL  constraint_name FOR A25
COL  constraint_type FOR A10
COL  table_name FOR A19
SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1
WHERE t1.table_name = 'TABLE_NOTNULL2'
;

OWNER      CONSTRAINT_NAME           CONSTRAINT TABLE_NAME
---------- ------------------------- ---------- -------------------
SCOTT      TBL_NM2_LOGIN_ID_NN       C          TABLE_NOTNULL2
SCOTT      TBL_NM2_LOGIN_PWD_NN      C          TABLE_NOTNULL2
SCOTT      TBL_NM2_TEL_NN            C          TABLE_NOTNULL2