SELECT grade,deptno1,count(*)
FROM student
GROUP BY GROUPING SETS( grade, deptno1)
;
-- 하나의 테이블에 대해 여러 그룹 함수가 사용된다면 GROUPING SETS()함수를 활용하는 것이 더우 좋다.


     GRADE    DEPTNO1   COUNT(*)
---------- ---------- ----------
         1                     5
         2                     5
         4                     5
         3                     5
                  102          4
                  201          6
                  301          2
                  202          2
                  101          4
                  103          2
                  
     GRADE   COUNT(*)
---------- ----------
         1          5
         2          5
         3          5
         4          5
       101          4
       102          4
       103          2
       201          6
       202          2
       301          2                  