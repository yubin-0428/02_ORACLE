--scott사용자에 emp 테이블의 동의어로 e로 생성 private SYNONYM
--CREATE SYNONYM e FOR emp;


--동의어 E 를 통해서 select, dml작업 가능
--SELECT *
--FROM e;


--scott사용자에 dept 테이블의 동의어로 d2로 생성 public SYNONYM
-- CREATE PUBLIC SYNONYM d2 FOR dept;
--
--SELECT *
--FROM d2;


--private SYNONYM 조회
COL synonym_name FOR A20
COL table_owner FOR A20
COL table_name FOR A20
SELECT t1.synonym_name,
       t1.table_owner,
       t1.table_name
FROM user_synonyms t1
WHERE t1.table_name = 'EMP'
;

SYNONYM_NAME         TABLE_OWNER          TABLE_NAME
-------------------- -------------------- --------------------
E                    SCOTT                EMP