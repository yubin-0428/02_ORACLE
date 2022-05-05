--이미 생성한 테이블에 제약 조건 지정                                         
--    TABLE_UNIQUE2 테이블 TEL 컬럼에 UNIQUE추가          


                           
ALTER TABLE TABLE_UNIQUE
MODIFY (tel UNIQUE);

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

OWNER      CONSTRAINT_NAME           CONSTRAINT TABLE_NAME
---------- ------------------------- ---------- -------------------
SCOTT      TBLUNQ02_LOGINPWD_NN      C          TABLE_UNIQUE2
SCOTT      TBLUNQ02_LOGINID_UNQ      U          TABLE_UNIQUE2
SCOTT      SYS_C007424               U          TABLE_UNIQUE2


LOGIN_ID                                 LOGIN_PWD                                TEL
---------------------------------------- ---------------------------------------- ----------------------------------------
TEST_ID_01                               PWD01                                    010-1234-5678
TEST_ID_02                               PWD02                                    010-1234-5678
                                         PWD02                                    010-1234-5678