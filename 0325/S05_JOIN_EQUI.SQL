--oracle join
--table 3°³ 

col stud_name for a32
col prof_name for a32
col dept_name for a32
SELECT t1.name as stud_name,
       t2.name as prof_name,
       t3.dname as dept_name
FROM student t1, professor t2, department t3
WHERE t1.profno = t2.profno
AND   t1.deptno1= t3.deptno
;