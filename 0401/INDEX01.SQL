--step.1 사원테이블을 참조해 테이블 생성                               
--                                
--step.2 name 컬럼에 인덱스 생성                             
--                                
--step.3 인덱스를 사용하지 않는 상태로 조회                             
--                                
--step.4 인덱스를 사용해 조회                               

--step.1
--CREATE TABLE new_emp4 (
--    no NUMBER,
--    name VARCHAR2(10),
--    sal  NUMBER
--);

--INSERT INTO new_emp4 VALUES ( 1000,   'SMITH'     ,300  );
--INSERT INTO new_emp4 VALUES ( 1001,   'ALLEN'     ,250  );
--INSERT INTO new_emp4 VALUES ( 1002,   'KING'      ,430  );
--INSERT INTO new_emp4 VALUES ( 1003,   'BLACK'     ,220  );
--INSERT INTO new_emp4 VALUES ( 1004,   'JAMES'     ,620  );
--INSERT INTO new_emp4 VALUES ( 1005,   'MILLER'    ,2000 );
--
--COMMIT;
----
--SELECT * FROM new_emp4;
--
--        NO NAME                        SAL
------------ -------------------- ----------
--      1000 SMITH                       300
--      1001 ALLEN                       250
--      1002 KING                        430
--      1003 BLACK                       220
--      1004 JAMES                       620
--      1005 MILLER                     2000

--step.2
--CREATE INDEX idx_newemp4_name
--ON new_emp4( name ASC);

--step.3
--SELECT no,name,sal
--FROM new_emp4
--;
--        NO NAME                        SAL
------------ -------------------- ----------
--      1000 SMITH                       300
--      1001 ALLEN                       250
--      1002 KING                        430
--      1003 BLACK                       220
--      1004 JAMES                       620
--      1005 MILLER                     2000

ALTER SESSION SET STATISTICS_LEVEL = ALL;
SELECT no,name,sal
FROM new_emp4
--WHERE name > '0'
;

SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(NULL,NULL,'ALLSTATS LAST -ROWS +PREDICATE'));

Plan hash value: 574968521
 
-------------------------------------------------------------------------------
| Id  | Operation         | Name     | Starts | A-Rows |   A-Time   | Buffers |
-------------------------------------------------------------------------------
|   0 | SELECT STATEMENT  |          |      1 |      6 |00:00:00.01 |       7 |
|   1 |  TABLE ACCESS FULL| NEW_EMP4 |      1 |      6 |00:00:00.01 |       7 |
-------------------------------------------------------------------------------
 
Note
-----
   - dynamic statistics used: dynamic sampling (level=2)

--step.4
SELECT no,name,sal
FROM new_emp4
WHERE name > '0'
;

Plan hash value: 392115011
 
---------------------------------------------------------------------------------------------------------
| Id  | Operation                           | Name             | Starts | A-Rows |   A-Time   | Buffers |
---------------------------------------------------------------------------------------------------------
|   0 | SELECT STATEMENT                    |                  |      1 |      6 |00:00:00.01 |       2 |
|   1 |  TABLE ACCESS BY INDEX ROWID BATCHED| NEW_EMP4         |      1 |      6 |00:00:00.01 |       2 |
|*  2 |   INDEX RANGE SCAN                  | IDX_NEWEMP4_NAME |      1 |      6 |00:00:00.01 |       1 |
---------------------------------------------------------------------------------------------------------
 
Predicate Information (identified by operation id):
---------------------------------------------------
 
   2 - access("NAME">'0')