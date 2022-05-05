C:\DCOM_20220127\02_DB\workspace>sqlplus scott/pcwk

11:11:18 SCOTT>conn / as SYSDBA

11:11:46 SYS>

--VIEW 생성 권한 할당
GRANT CREATE VIEW TO scott;
--권한이 부여되었습니다.

11:13:13 SYS>@VIEW05.SQL