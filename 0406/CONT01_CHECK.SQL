비밀번호 길이를 3자 이상 입력하도록 테이블에서 설정
CREATE TABLE table_check (
	LOGIN_ID  VARCHAR2(20) CONSTRAINT tblch_loginid_pk  PRIMARY KEY,
	LOGID_PWD VARCHAR2(20) CONSTRAINT tblch_logidpwd_ck CHECK( LENGTH(LOGID_PWD)>3),
	TEL       VARCHAR2(20)
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
WHERE t1.table_name IN ('TABLE_CHECK') 
;

OWNER      CONSTRAINT_NAME                     CONSTRAINT_TYPE           TABLE_NAME
---------- ----------------------------------- ------------------------- -------------------------
SCOTT      TBLCH_LOGIDPWD_CK                   C                         TABLE_CHECK
SCOTT      TBLCH_LOGINID_PK                    P                         TABLE_CHECK

INSERT INTO table_check (login_id,logid_pwd,tel
) VALUES ('TEST_ID','123','010-1234-5678');

1행에 오류:
ORA-02290: 체크 제약조건(SCOTT.TBLCH_LOGIDPWD_CK)이 위배되었습니다

INSERT INTO table_check (login_id,logid_pwd,tel
) VALUES ('TEST_ID','1234','010-1234-5678');