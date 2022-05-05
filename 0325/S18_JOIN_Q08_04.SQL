--outer join 조건이 누락되면 일반 조인으로 변경되서 
--outer join 데이터가 누락 된다.
SELECT t2.deptno,
       t2.dname,
       t1.empno,
       t1.ename,
       t1.mgr,
       t1.sal,
       t2.deptno as deptno1,
       t3.losal,
       t3.hisal,
       t3.grade,
       t4.empno AS MGR_EMPNO,
       t4.ename AS MGR_ENAME       
FROM emp t1 RIGHT OUTER JOIN  dept t2
ON  t1.deptno = t2.deptno 
LEFT OUTER JOIN salgrade T3
ON   t1.sal>= t3.losal  
AND  t1.sal<= t3.hisal 
LEFT OUTER JOIN emp t4
ON   t1.mgr = t4.empno
ORDER BY t2.deptno, t1.empno
;

