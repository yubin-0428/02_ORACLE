INSERT INTO table_unique VALUES ('TEST_ID_01','PWD01','010-1234-5678');

 INSERT INTO table_unique VALUES ('TEST_ID_01','PWD02','010-1234-5678');
 
 1행에 오류:
 ORA-00001: 무결성 제약 조건(SCOTT.SYS_C007419)에 위배됩니다


INSERT INTO table_unique VALUES ('TEST_ID_02','PWD02','010-1234-5678');

SELECT * FROM table_unique;

LOGIN_ID                                 LOGIN_PWD    TEL            
---------------------------------------- ----------- ----------------
TEST_ID_01                               PWD01        010-1234-5678



INSERT INTO table_unique VALUES (NULL,'PWD02','010-1234-5678');

SELECT * FROM table_unique;

LOGIN_ID               LOGIN_PWD    TEL             
---------------------- ------------ ----------------
TEST_ID_01             PWD01        010-1234-5678
TEST_ID_02             PWD02        010-1234-5678
                       PWD02        010-1234-5678

경   과: 00:00:00.00

--NULL -> TEST_ID_01

UPDATE table_unique
   SET LOGIN_ID = 'TEST_ID_01'
WHERE  LOGIN_ID IS NULL;  


1행에 오류:
ORA-00001: 무결성 제약 조건(SCOTT.SYS_C007419)에 위배됩니다

SELECT * FROM table_unique;