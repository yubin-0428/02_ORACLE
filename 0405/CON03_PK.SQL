INSERT INTO table_pk (login_id,login_pwd,tel) 
VALUES ('TEST_ID_01','PWD01','010-1234-5678');


INSERT INTO table_pk (login_id,login_pwd,tel) 
VALUES ('TEST_ID_01','PWD02','010-1234-5678');


*
1행에 오류:
ORA-00001: 무결성 제약 조건(SCOTT.SYS_C0012548)에 위배됩니다

COL login_id FOR A20
COL login_pwd FOR A20
COL tel FOR A20
SELECT login_id,login_pwd,tel
FROM table_pk;

LOGIN_ID             LOGIN_PWD            TEL
-------------------- -------------------- --------------------
TEST_ID_01           PWD01                010-1234-5678