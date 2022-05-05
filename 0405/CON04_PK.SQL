INSERT INTO table_pk (login_id,login_pwd,tel) 
VALUES (NULL,'PWD01','010-1234-5678');

INSERT INTO table_pk (login_pwd,tel) 
VALUES ('PWD01','010-1234-5678');

--2행에 오류:
--ORA-01400: NULL을 ("SCOTT"."TABLE_PK"."LOGIN_ID") 안에 삽입할 수 없습니다
