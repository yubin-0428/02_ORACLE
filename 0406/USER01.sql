11:12:18 SCOTT>CONN / AS SYSDBA

USER_ID: ORCLSTUDY
비번: ORACLE

ALTER SESSION SET "_oracle_script"=true;

CREATE USER ORCLSTUDY
IDENTIFIED BY ORACLE;


12c이후 계정 생성
CREATE USER C##aaaa IDENTIFIED BY bbbb;
12c이전으로 계정 생성하도록 변경
alter session set "_oracle_script"=true;


ALTER SESSION SET "_oracle_script"=true;

접속이 않됨(아직 권한 할당 하지 않음)
11:38:12 SYS>CONN ORCLSTUDY/ORACLE
ERROR:
ORA-01045: 사용자 ORCLSTUDY는 CREATE SESSION 권한을 가지고있지 않음; 로그온이 거절되 었습니다

권한 할당
GRANT CREATE SESSION TO ORCLSTUDY;

11:45:13 SYS>CONN ORCLSTUDY/ORACLE

SELECT *
FROM ALL_USERS t1
WHERE t1.username = 'ORCLSTUDY'
;

SELECT *
FROM DBA_USERS t1
WHERE t1.username = 'ORCLSTUDY'
;


사용자 비번 변경: ORACLE-> ORCL
ALTER USER ORCLSTUDY
IDENTIFIED BY ORCL;

사용자 삭제하기
alter session set "_oracle_script"=true;

DROP USER ORCLSTUDY CASCADE   --CASCADE: 사용자와 객체 모두 삭제하기
;














