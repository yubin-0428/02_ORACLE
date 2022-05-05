--테이블을 생성하면서 제약 조건 이름 직접 지정하기											

CREATE TABLE table_pk2(
  LOGIN_ID VARCHAR2(20) CONSTRAINT tablepk2_loginid_pk   PRIMARY KEY,
  LOGIN_PWD VARCHAR2(20) CONSTRAINT  tablepk2_loginpwd_nn  NOT NULL,
  TEL  VARCHAR2(20)
);



COL owner FOR A10
COL constraint_name FOR A30
COL constraint_type FOR A10
COL table_name FOR A10
SELECT t1.owner,
       t1.constraint_name,
	   t1.constraint_type,
	   t1.table_name
FROM user_constraints t1
WHERE t1.table_name = 'TABLE_PK2'
;

OWNER      CONSTRAINT_NAME                CONSTRAINT TABLE_NAME
---------- ------------------------------ ---------- ----------
SCOTT      TABLEPK2_LOGINPWD_NN           C          TABLE_PK2
SCOTT      TABLEPK2_LOGINID_PK            P          TABLE_PK2


--USER_INDEXES 조회

COL index_name FOR A20
COL table_owner FOR A20
COL table_name FOR A20
SELECT t1.index_name,
       t1.table_owner,
	   t1.table_name
FROM user_indexes t1
WHERE t1.table_name LIKE 'TABLE_PK2%'