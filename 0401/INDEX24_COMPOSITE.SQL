--emp ename,job을 결합한 인덱스를 생성.

--CREATE INDEX idx_emp_comp
--ON emp( ename ASC, job DESC);


ALTER SESSION SET STATISTICS_LEVEL = ALL;

SELECT /*+ INDEX_DESC(t1 IDX_EMP_COMP)  */ *
FROM emp t1
WHERE t1.ename > '0';
--sql_id,child_number,출력하고자하는 포맷,
--NULL 해당 세션의 마지막 쿼리에 해당하는 sql_id,child_number
SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(NULL,NULL,'ALLSTATS LAST -ROWS +PREDICATE'));