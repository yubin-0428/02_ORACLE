--문법)
--RPAD('문자열' 또는 컬럼, 자리수, 채울문자)
SELECT 'Oracle',
       RPAD('Oracle',10,'*'),
       RPAD('Oracle',10)
FROM dual
;

--'ORACLE'     RPAD('ORACLE',10,'*' RPAD('ORACLE',10)
-------------- -------------------- --------------------
--Oracle       Oracle****           Oracle
