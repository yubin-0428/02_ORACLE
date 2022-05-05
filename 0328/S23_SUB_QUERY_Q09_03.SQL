COL empno FOR 9999
COL ename FOR A15
COL job FOR A15
COL deptno FOR 9999
SELECT t1.empno,
       t1.ename,
       t1.job,
       t1.deptno,
       t2.dname,
       t2.loc
FROM emp t1, dept t2
WHERE t1.deptno = t2.deptno
AND t1.deptno = 10
AND t1.job NOT IN (SELECT job
                   FROM emp
                   WHERE deptno = 30)
;
EMPNO ENAME  JOB             DEPTNO DNAME       LOC      
----- ------ --------------- ------ ----------- ---------
 7839 KING   PRESIDENT           10 ACCOUNTING  NEW YORK
