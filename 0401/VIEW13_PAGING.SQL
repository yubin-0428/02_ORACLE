SELECT A.*
FROM (SELECT ROWNUM AS rnum, TT1.*
      FROM (SELECT t1.empno,
                     t1.ename,
                     t1.sal
              FROM emp t1
              ORDER BY sal
      )tt1
      WHERE ROWNUM <= 10
)A
WHERE rnum >=1
--WHERE rnum  BETWEEN (:PAGE_SIZE * (:PAGE_NUM-1)+1) AND :PAGE_SIZE * (:PAGE_NUM-1)+:PAGE_SIZE
--WHERE rnum BETWEEN 1 AND 10
--WHERE rnum BETWEEN 11 AND 20
--WHERE rnum BETWEEN 21 AND 30
;

Plan hash value: 2603316617
 
-------------------------------------------------------------------------------------------------------------
| Id  | Operation                | Name | Starts | A-Rows |   A-Time   | Buffers |  OMem |  1Mem | Used-Mem |
-------------------------------------------------------------------------------------------------------------
|   0 | SELECT STATEMENT         |      |      1 |     10 |00:00:00.01 |       6 |       |       |          |
|*  1 |  VIEW                    |      |      1 |     10 |00:00:00.01 |       6 |       |       |          |
|*  2 |   COUNT STOPKEY          |      |      1 |     10 |00:00:00.01 |       6 |       |       |          |
|   3 |    VIEW                  |      |      1 |     10 |00:00:00.01 |       6 |       |       |          |
|*  4 |     SORT ORDER BY STOPKEY|      |      1 |     10 |00:00:00.01 |       6 |  2048 |  2048 | 2048  (0)|
|   5 |      TABLE ACCESS FULL   | EMP  |      1 |     14 |00:00:00.01 |       6 |       |       |          |
-------------------------------------------------------------------------------------------------------------
 
Predicate Information (identified by operation id):
---------------------------------------------------
 
   1 - filter("RNUM">=1)
   2 - filter(ROWNUM<=10)
   4 - filter(ROWNUM<=10)