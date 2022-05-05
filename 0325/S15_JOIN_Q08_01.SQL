--ORACLE JOIN
SELECT t1.deptno,
       t2.dname,
       t1.empno,
       t1.ename,
       t1.sal
FROM emp t1, dept t2
WHERE t1.deptno = t2.deptno
AND t1.sal > 2000
;


--ansi
SELECT t1.deptno,
       t2.dname,
       t1.empno,
       t1.ename,
       t1.sal
FROM emp t1 INNER JOIN dept t2
ON t1.deptno = t2.deptno
AND t1.sal > 2000
;
DEPTNO DNAME           EMPNO ENAME              SAL
------ --------------- ----- --------------- ------
    10 ACCOUNTING       7782 CLARK             2450
    10 ACCOUNTING       7839 KING              5000
    20 RESEARCH         7902 FORD              3000
    20 RESEARCH         7788 SCOTT             3000
    20 RESEARCH         7566 JONES             2975
    30 SALES            7698 BLAKE             2850

6 행이 선택되었습니다.