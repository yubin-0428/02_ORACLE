--초과(超過)는 숫자나 범위가 기준치와 비교해서 명백히 더 많거나 높은 상태를 이르는 말이다. 
--y가 x를 초과하는 상태를 부등호로 x<y와 같이 나타낼 수 있다.
--SELECT t1.empno,
--       t1.ename,
--       t1.job,
--       t1.sal,
--       t1.deptno
--FROM emp t1
--WHERE t1.deptno IN (20,30)
--AND   t1.sal > 2000
--;

SELECT t1.empno,
       t1.ename,
       t1.job,
       t1.sal,
       t1.deptno
FROM emp t1
WHERE t1.deptno = 20
AND   t1.sal > 2000
UNION
SELECT t1.empno,
       t1.ename,
       t1.job,
       t1.sal,
       t1.deptno
FROM emp t1
WHERE t1.deptno = 30
AND   t1.sal > 2000
;