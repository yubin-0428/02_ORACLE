--IN                서브 쿼리 결과와 같은 값을 찾습니다.
--각 부서별 최고 급여와 동일한 급여를 받는 사원 정보 출력 하기

SELECT empno,
       ename,
       job,
       sal,
       deptno
FROM emp t1
WHERE t1.sal IN (SELECT MAX(sal)
                 FROM emp
                 GROUP BY deptno);
                 
     EMPNO ENAME                JOB                       SAL     DEPTNO
---------- -------------------- ------------------ ---------- ----------
      7698 BLAKE                MANAGER                  2850         30
      7788 SCOTT                ANALYST                  3000         20
      7839 KING                 PRESIDENT                5000         10
      7902 FORD                 ANALYST                  3000         20                 