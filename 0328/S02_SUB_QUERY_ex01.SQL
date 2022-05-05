col stud_name for a25
col dept_name for a25

SELECT t1.name as stud_name,
       t2.dname as dept_name
FROM student t1, department t2
WHERE t1.deptno1 = t2.deptno
AND t1.deptno1 = (SELECT deptno1
                  FROM student
                  WHERE NAME ='Anthony Hopkins');
                 
                 
STUD_NAME                 DEPT_NAME
------------------------- -------------------------
Anthony Hopkins           Software Engineering
Sandra Bullock            Software Engineering                 