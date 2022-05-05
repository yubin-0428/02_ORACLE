--SYS
--테이블 스페이스 : PREV_HW_TS
--계정: PREV_HW
--비번: ORCL
--
--10:05:17 SCOTT>CONN / AS SYSDBA
--연결되었습니다.
--10:07:48 SYS>

--col tablespace_name for a15						
--col file_name for a55
--						
--SELECT tablespace_name,						
--       file_name						
--FROM dba_data_files;						
--
--TABLESPACE_NAME FILE_NAME
----------------- -------------------------------------------------------
--SYSTEM          C:\APP\JAMES\PRODUCT\18.0.0\ORADATA\XE\SYSTEM01.DBF
--SYSAUX          C:\APP\JAMES\PRODUCT\18.0.0\ORADATA\XE\SYSAUX01.DBF
--USERS           C:\APP\JAMES\PRODUCT\18.0.0\ORADATA\XE\USERS01.DBF
--UNDOTBS1        C:\APP\JAMES\PRODUCT\18.0.0\ORADATA\XE\UNDOTBS01.DBF
--SPRING_TS       C:\APP\JAMES\PRODUCT\18.0.0\ORADATA\XE\SPRING_TS.DBF
--GOODMAN_TS      C:\APP\JAMES\PRODUCT\18.0.0\ORADATA\XE\GOODMAN01.DBF
--
--6 행이 선택되었습니다.

--1.테이블 스페이스 생성: PREV_HW_TS
CREATE TABLESPACE PREV_HW_TS												
DATAFILE 'C:\APP\JAMES\PRODUCT\18.0.0\ORADATA\XE\PREV_HW_TS01.DBF'												
SIZE 300M AUTOEXTEND ON NEXT 30M;												


--2. 사용자 생성     								
ALTER SESSION SET "_oracle_script"=true;   

CREATE USER PREV_HW                                                                                                                                     								
IDENTIFIED BY ORCL                                                                                                                      								
DEFAULT TABLESPACE PREV_HW_TS                                                                                                                   								
TEMPORARY TABLESPACE temp                                                                                                                                             								
QUOTA UNLIMITED ON PREV_HW_TS; 

--3. 권한부여
GRANT RESOURCE, CREATE SESSION, CREATE TABLE,DBA TO PREV_HW;        													
--ALTER USER goodman DEFAULT TABLESPACE PREV_HW_TS QUOTA UNLIMITED ON PREV_HW_TS;													

--PREV_HW접속
10:18:38 SYS>CONN PREV_HW/ORCL



--*테이블 생성											
CREATE TABLE dept(											
  deptno NUMBER(4) CONSTRAINT PK_DEPT PRIMARY KEY,											
  dname  VARCHAR2(30),											
  loc    VARCHAR2(50)											
);											
desc dept;	
--*INSERT											
INSERT INTO dept VALUES (10,'EDUCATION','SEOUL');											
--조회											
SELECT * FROM dept;											











