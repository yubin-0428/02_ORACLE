--비밀번호 DEFAULT 1234
--CREATE TABLE table_default (
--	LOGIN_ID  VARCHAR2(20) CONSTRAINT tbldefault_loginid_pk  PRIMARY KEY,
--	LOGID_PWD VARCHAR2(20) DEFAULT '1234',
--	TEL       VARCHAR2(20)
--);

--col owner for a10			
--col constraint_name for a35
--col constraint_type for a25
--col table_name for a25
--SELECT t1.owner,
--       t1.constraint_name,
--       t1.constraint_type,
--       t1.table_name
--FROM user_constraints t1
--WHERE t1.table_name IN ('TABLE_DEFAULT') 
--;
--
----제약조건으로 관리 되지 않음
--OWNER      CONSTRAINT_NAME                     CONSTRAINT_TYPE           TABLE_NAME
------------ ----------------------------------- ------------------------- -------------------------
--SCOTT      TBLDEFAULT_LOGINID_PK               P                         TABLE_DEFAULT

INSERT INTO table_default (login_id,tel
) VALUES ('TEST_ID','010-1234-5678');

SELECT *
FROM table_default;