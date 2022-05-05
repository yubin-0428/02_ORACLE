--SYS로 작업
--ALTER SESSION SET "_oracle_script"=true;												
--CREATE USER ORCLSTUDY												
--IDENTIFIED BY ORCL;												
--
----RESOURCE: 사용자가 테이블, 시퀀스를 비롯한 여러 객체를 생성할 수 있는 기본 시스템 권한을 묶어 놓은 롤
----CREATE SESSION : 오라클 접속권한

ALTER SESSION SET "_oracle_script"=true;	
GRANT RESOURCE, CREATE SESSION, CREATE TABLE TO ORCLSTUDY;												
ALTER USER ORCLSTUDY DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;


--12:26:10 SYS>CONN ORCLSTUDY/ORCL
--ORCLSTUDY 계정
--테이블 생성
--CREATE TABLE temp2(
--   COL1 VARCHAR2(20),
--   COL2 VARCHAR2(20)
--);

--데이터 입력
INSERT INTO temp2 VALUES ('USER','GRANT_TEST');











