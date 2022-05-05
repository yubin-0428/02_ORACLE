SELECT grade,count(*)
FROM student
GROUP BY grade
UNION
SELECT deptno1,count(*)
FROM student
GROUP BY deptno1
;
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