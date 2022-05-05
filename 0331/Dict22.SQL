--SYS로 접속

SELECT *
FROM DBA_TABLES;

--DBA_USERS로 사용자 정보
SELECT *
FROM dba_users t1
WHERE t1.username = 'SCOTT';