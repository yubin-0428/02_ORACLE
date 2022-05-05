--ORACLE JOIN
col stud_name for a32
col prof_name for a32
col dept_name for a32
SELECT t1.name as stud_name,
       t2.name as prof_name
FROM student t1, professor t2
WHERE t1.profno = t2.profno
AND   t1.deptno1= 101
;


--ANSI JOIN
SELECT t1.name as stud_name,
       t2.name as prof_name
FROM student t1 JOIN professor t2
ON t1.profno = t2.profno
AND t1.deptno1= 101
;