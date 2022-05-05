CREATE TABLE table_pk(
  LOGIN_ID VARCHAR2(20) PRIMARY KEY,
  LOGIN_PWD VARCHAR2(20) NOT NULL,
  TEL  VARCHAR2(20)
);

테이블이 생성되었습니다.

COL owner FOR A10
COL constraint_name FOR A30
COL constraint_type FOR A10
COL table_name FOR A10
SELECT t1.owner,
       t1.constraint_name,
	   t1.constraint_type,
	   t1.table_name
FROM user_constraints t1
WHERE t1.table_name = 'TABLE_PK'
;

OWNER      CONSTRAINT_NAME                CONSTRAINT TABLE_NAME
---------- ------------------------------ ---------- ----------
SCOTT      SYS_C0012547                   C          TABLE_PK
SCOTT      SYS_C0012548                   P          TABLE_PK

--USER_INDEXES 조회

COL index_name FOR A20
COL table_owner FOR A20
COL table_name FOR A20
SELECT t1.index_name,
       t1.table_owner,
	   t1.table_name
FROM user_indexes t1
WHERE t1.table_name LIKE 'TABLE_PK%'
;

INDEX_NAME           TABLE_OWNER          TABLE_NAME
-------------------- -------------------- --------------------
SYS_C0012548         SCOTT                TABLE_PK





















