SELECT studno, name
FROM student
WHERE deptno1 = 101
MINUS
SELECT studno, name
FROM student
WHERE deptno2 = 201
;

STUDNO NAME
------ -----------------
  9411 James Seo
  9511 Billy Crystal
  9611 Richard Dreyfus
  9711 Danny Devito

경   과: 00:00:00.00

STUDNO NAME
------ -----------------
  9411 James Seo
  9512 Nicholas Cage

경   과: 00:00:00.00
10:31:09 SCOTT>@S07_SELECT_MINUS.sql

STUDNO NAME
------ -----------------
  9511 Billy Crystal
  9611 Richard Dreyfus
  9711 Danny Devito