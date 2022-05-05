--SELECT *
--FROM department
--;

col stu_name  FOR a35
col deptno1   FOR 9999
col dept_name FOR a35
SELECT t1.name AS stu_name,
       t1.deptno1,
       t2.dname AS dept_name
FROM student t1 JOIN department t2
ON t1.deptno1 = t2.deptno
;


SELECT t1.name AS stu_name,
       t1.deptno1,
       t2.dname AS dept_name
FROM student t1, department t2
WHERE t1.deptno1 = t2.deptno
;

STU_NAME                            DEPTNO1 DEPT_NAME
----------------------------------- ------- -----------------------------------
James Seo                               101 Computer Engineering
Danny Devito                            101 Computer Engineering
Richard Dreyfus                         101 Computer Engineering
Billy Crystal                           101 Computer Engineering
Rene Russo                              102 Multimedia Engineering
Charlie Sheen                           102 Multimedia Engineering
Tim Robbins                             102 Multimedia Engineering
Nicholas Cage                           102 Multimedia Engineering
Sandra Bullock                          103 Software Engineering
Anthony Hopkins                         103 Software Engineering
Wesley Snipes                           201 Electronic Engineering
Christian Slater                        201 Electronic Engineering
Macaulay Culkin                         201 Electronic Engineering
Steve Martin                            201 Electronic Engineering
Demi Moore                              201 Electronic Engineering
Sean Connery                            201 Electronic Engineering
Micheal Keaton                          202 Mechanical Engineering
Danny Glover                            202 Mechanical Engineering
Bill Murray                             301 Library and Information science
Daniel Day-Lewis                        301 Library and Information science

20 행이 선택되었습니다.