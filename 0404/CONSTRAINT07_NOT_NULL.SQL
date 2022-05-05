--1. 테이블 생성

CREATE TABLE table_notnull(
   LOGIN_ID  VARCHAR2(20 BYTE) not null,
   LOGIN_PWD VARCHAR2(20 ) not null,
   tel       VARCHAR2(20)
);

--DESC table_notnull;

--2. NOT NULL 컬럼에 NULL입력
--INSERT INTO table_notnull (login_id,login_pwd,tel) VALUES ('TEST_01',NULL,'010-1234-5678');
--
--1행에 오류:
--ORA-01400: NULL을 ("SCOTT"."TABLE_NOTNULL"."LOGIN_PWD") 안에 삽입할 수 없습니다.

--3. NULL입력

--INSERT INTO table_notnull (login_id,login_pwd) VALUES ('TEST_01','1234');

--4.UPDATE  NOT NULL ->  NULL
--UPDATE table_notnull
--   SET login_pwd = NULL
--WHERE   login_id = 'TEST_01' ;
--
--2행에 오류:
--ORA-01407: NULL로 ("SCOTT"."TABLE_NOTNULL"."LOGIN_PWD")을 업데이트할 수 없습니다.


--5. NOT NULL제약 조건 조회
-- USER_CONSTRAINTS
COL  owner FOR A10
COL  constraint_name FOR A19
COL  constraint_type FOR A19
COL  table_name FOR A19
SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1
WHERE t1.table_name = 'EMP'
;

--CONSTRAINT_NAME : SYS_XXXXX  시스템이 이름 부여
--OWNER      CONSTRAINT_NAME     CONSTRAINT_TYPE     TABLE_NAME
------------ ------------------- ------------------- -------------------
--SCOTT      SYS_C007412         C                   TABLE_NOTNULL
--SCOTT      SYS_C007413         C                   TABLE_NOTNULL