--인덱스를 활용해서 최소값(min) 최대값 (max) 구하기                                                                  
--    MIN/MAX함수는 모든 데이터를 기준 컬럼으로 정렬을 한 후 최대/최소값을 구하는 함수.                                                                
--SELECT MIN(name)
--FROM new_emp4;
--
--
--MIN(NAME)
----------------------
--ALLEN

--INDEX를 사용해서 최소값 구하기
--SQL DEVELOPER
--ALTER SESSION SET STATISTICS_LEVEL = ALL;
--
--SELECT name
--FROM new_emp4
--WHERE name > '0'
--AND ROWNUM = 1;
--
--
--SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(NULL,NULL,'ALLSTATS LAST -ROWS +PREDICATE'));
--
--Plan hash value: 3046363463
-- 
-----------------------------------------------------------------------------------------
--| Id  | Operation         | Name             | Starts | A-Rows |   A-Time   | Buffers |
-----------------------------------------------------------------------------------------
--|   0 | SELECT STATEMENT  |                  |      1 |      1 |00:00:00.01 |       1 |
--|*  1 |  COUNT STOPKEY    |                  |      1 |      1 |00:00:00.01 |       1 |
--|*  2 |   INDEX RANGE SCAN| IDX_NEWEMP4_NAME |      1 |      1 |00:00:00.01 |       1 |
-----------------------------------------------------------------------------------------
-- 
--Predicate Information (identified by operation id):
-----------------------------------------------------
-- 
--   1 - filter(ROWNUM=1)
--   2 - access("NAME">'0')

--최대값
--SELECT MAX(name)
--FROM new_emp4;

--MAX(NAME)
----------------------
--SMITH


--INDEX를 사용해서 최대값 구하기 
--ORACLE HINT : /*+ INDEX_DESC (테이블 ALIAS 인덱스명 ) */ name

SELECT /*+  INDEX_DESC( NEW_EMP4 IDX_NEWEMP4_NAME ) */ name
FROM new_emp4
WHERE name > '0'
AND ROWNUM = 1;

--NAME
----------------------
--SMITH

Plan hash value: 1191345377
 
--------------------------------------------------------------------------------------------------
| Id  | Operation                    | Name             | Starts | A-Rows |   A-Time   | Buffers |
--------------------------------------------------------------------------------------------------
|   0 | SELECT STATEMENT             |                  |      1 |      1 |00:00:00.01 |       1 |
|*  1 |  COUNT STOPKEY               |                  |      1 |      1 |00:00:00.01 |       1 |
|*  2 |   INDEX RANGE SCAN DESCENDING| IDX_NEWEMP4_NAME |      1 |      1 |00:00:00.01 |       1 |
--------------------------------------------------------------------------------------------------
 
Predicate Information (identified by operation id):
---------------------------------------------------
 
   1 - filter(ROWNUM=1)
   2 - access("NAME">'0')
       filter("NAME">'0')