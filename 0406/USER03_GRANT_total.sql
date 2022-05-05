--tablespace 정보 확인 
col tablespace_name for a15
col file_name for a55

SELECT tablespace_name,
       file_name
FROM dba_data_files;


TABLESPACE_NAME FILE_NAME
--------------- -------------------------------------------------------
SYSTEM          C:\APP\JAMES\PRODUCT\18.0.0\ORADATA\XE\SYSTEM01.DBF
SYSAUX          C:\APP\JAMES\PRODUCT\18.0.0\ORADATA\XE\SYSAUX01.DBF
UNDOTBS1        C:\APP\JAMES\PRODUCT\18.0.0\ORADATA\XE\UNDOTBS01.DBF
USERS           C:\APP\JAMES\PRODUCT\18.0.0\ORADATA\XE\USERS01.DBF
SPRING_TS       C:\APP\JAMES\PRODUCT\18.0.0\ORADATA\XE\SPRING_TS.DBF

--* 테이블 스페이스 생성

CREATE TABLESPACE goodman_ts
DATAFILE 'C:\APP\JAMES\PRODUCT\18.0.0\ORADATA\XE\goodman01.DBF'
SIZE 300M AUTOEXTEND ON NEXT 30M;



--tablespace 생성 확인 
col tablespace_name for a15
col file_name for a55

SELECT tablespace_name,
       file_name
FROM dba_data_files;

--* 사용자 생성
--12C 이전 방법으로 계정 생성
ALTER SESSION SET "_oracle_script"=true;	

CREATE USER goodman                                                                                         						
IDENTIFIED BY pcwk                                                                            						
DEFAULT TABLESPACE goodman_ts                                                                      						
TEMPORARY TABLESPACE temp ;                                                                                               						
	
--*권한부여
GRANT DBA TO goodman;	
GRANT RESOURCE, CREATE SESSION, CREATE TABLE TO goodman;	
ALTER USER goodman DEFAULT TABLESPACE goodman_ts QUOTA UNLIMITED ON goodman_ts;

*goodman접속: TABLE,INSERT,SELECT

--*테이블 생성
CREATE TABLE dept(
  deptno NUMBER(4) CONSTRAINT PK_DEPT PRIMARY KEY,
  dname  VARCHAR2(30),
  loc    VARCHAR2(50)
);

desc dept;

INSERT INTO dept VALUES (10,'EDUCATION','SEOUL');

조회
SELECT * FROM dept;











