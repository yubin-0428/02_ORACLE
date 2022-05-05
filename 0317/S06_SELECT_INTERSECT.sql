SELECT studno, name
FROM student
WHERE deptno1 = 101
INTERSECT
SELECT studno, name
FROM student
WHERE deptno2 = 201
;

STUDNO NAME
------ -----------------
  9411 James Seo