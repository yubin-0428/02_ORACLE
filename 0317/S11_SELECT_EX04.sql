SELECT t1.empno,
       t1.ename,
       t1.job,
       t1.mgr,
       t1.hiredate,
       t1.sal,
       t1.comm,
       t1.deptno
FROM emp t1
WHERE sal < 2000
OR sal > 3000
;