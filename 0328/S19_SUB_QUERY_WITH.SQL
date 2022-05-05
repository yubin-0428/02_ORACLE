--물리적인 데이터 저장소 위치
SELECT t1.tablespace_name,
       t1.bytes/1024/1024 MB,
       t1.file_name
FROM dba_data_files t1
;

--필요한 만큼 자동으로 저장용량이 증가되도록 설정.
ALTER DATABASE DATAFILE 'C:\APP\ITSC\PRODUCT\18.0.0\ORADATA\XE\USERS01.DBF'
AUTOEXTEND ON;

--Database이(가) 변경되었습니다.