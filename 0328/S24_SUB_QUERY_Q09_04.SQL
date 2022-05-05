
SELECT t1.empno,
       t1.ename,
       t1.sal,
       t3.grade
FROM emp t1,salgrade t3
WHERE t1.sal >= t3.losal 
AND   t1.sal <= t3.hisal
AND   t1.sal > (SELECT MAX(sal)
                FROM emp
                WHERE job = 'SALESMAN');
-->ANY              서브쿼리 결과 중에서 최소값을 반환합니다.   >ANY(10,20,30) > 10
--<ANY              서브쿼리 결과 중에서 최대값을 반환합니다.   <ANY(10,20,30) < 30
--<ALL              서브쿼리 결과 중에서 최소값을 반환합니다.   <ALL(10,20,30) < 10
-->ALL              서브쿼리 결과 중에서 최대값을 반환합니다.   >ALL(10,20,30) > 30

SELECT t1.empno,
       t1.ename,
       t1.sal,
       t3.grade
FROM emp t1,salgrade t3
WHERE t1.sal >= t3.losal 
AND   t1.sal <= t3.hisal
AND   t1.sal >ALL (SELECT sal
                   FROM emp
                   WHERE job = 'SALESMAN');
                   
EMPNO ENAME                  SAL      GRADE
----- --------------- ---------- ----------
 7782 CLARK                 2450          4
 7698 BLAKE                 2850          4
 7566 JONES                 2975          4
 7788 SCOTT                 3000          4
 7902 FORD                  3000          4
 7839 KING                  5000          5

6 행이 선택되었습니다.                   