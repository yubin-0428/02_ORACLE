--PAGE_SIZE = 10
--PAGE_NUM  = 1

ALTER SESSION SET STATISTICS_LEVEL = ALL;

SELECT A.*
FROM (SELECT ROWNUM AS rnum, TT1.*
      FROM (SELECT t1.empno,
                     t1.ename,
                     t1.sal
              FROM emp t1
              ORDER BY sal
      )tt1
      
)A
WHERE rnum  BETWEEN (:PAGE_SIZE * (:PAGE_NUM-1)+1) AND :PAGE_SIZE * (:PAGE_NUM-1)+:PAGE_SIZE
--WHERE rnum BETWEEN 1 AND 10
--WHERE rnum BETWEEN 11 AND 20
--WHERE rnum BETWEEN 21 AND 30
;



SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(NULL,NULL,'ALLSTATS LAST -ROWS +PREDICATE'));


Plan hash value: 3467366839
 
-----------------------------------------------------------------------------------------------------------
| Id  | Operation              | Name | Starts | A-Rows |   A-Time   | Buffers |  OMem |  1Mem | Used-Mem |
-----------------------------------------------------------------------------------------------------------
|   0 | SELECT STATEMENT       |      |      1 |      4 |00:00:00.01 |       7 |       |       |          |
|*  1 |  FILTER                |      |      1 |      4 |00:00:00.01 |       7 |       |       |          |
|*  2 |   VIEW                 |      |      1 |      4 |00:00:00.01 |       7 |       |       |          |
|   3 |    COUNT               |      |      1 |     14 |00:00:00.01 |       7 |       |       |          |
|   4 |     VIEW               |      |      1 |     14 |00:00:00.01 |       7 |       |       |          |
|   5 |      SORT ORDER BY     |      |      1 |     14 |00:00:00.01 |       7 |  2048 |  2048 | 2048  (0)|
|   6 |       TABLE ACCESS FULL| EMP  |      1 |     14 |00:00:00.01 |       7 |       |       |          |
-----------------------------------------------------------------------------------------------------------
 
Predicate Information (identified by operation id):
---------------------------------------------------
 
   1 - filter(TO_NUMBER(:PAGE_SIZE)*(TO_NUMBER(:PAGE_NUM)-1)+TO_NUMBER(:PAGE_SIZE)>=TO_NUMBER(:PAGE
              _SIZE)*(TO_NUMBER(:PAGE_NUM)-1)+1)
   2 - filter(("RNUM"<=TO_NUMBER(:PAGE_SIZE)*(TO_NUMBER(:PAGE_NUM)-1)+TO_NUMBER(:PAGE_SIZE) AND 
              "RNUM">=TO_NUMBER(:PAGE_SIZE)*(TO_NUMBER(:PAGE_NUM)-1)+1))