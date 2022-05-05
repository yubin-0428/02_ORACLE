--ansi join
SELECT t2.deptno,
       t2.dname,
       t1.empno,
       t1.ename,
       t1.job,
       t1.sal
FROM emp t1 RIGHT OUTER JOIN dept t2
ON t1.deptno = t2.deptno
;

--oracle join
SELECT t2.deptno,
       t2.dname,
       t1.empno,
       t1.ename,
       t1.job,
       t1.sal
FROM emp t1, dept t2
WHERE t1.deptno(+) = t2.deptno
;