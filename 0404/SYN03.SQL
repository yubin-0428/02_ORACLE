--PUBLIC SYNONYM 조회 : dba_xxx에 있다.

COL synonym_name FOR A20
COL table_owner FOR A20
COL table_name FOR A20
SELECT t1.synonym_name,
       t1.table_owner,
       t1.table_name
FROM dba_synonyms t1
WHERE t1.table_name = 'DEPT'
;

SYNONYM_NAME         TABLE_OWNER          TABLE_NAME
-------------------- -------------------- --------------------
D2                   SCOTT                DEPT

경   과: 00:00:00.02