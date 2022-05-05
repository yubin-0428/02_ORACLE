--SELECT *
--FROM emp
--WHERE sal >=2000
--AND   sal <=3000
--;

--BETWEEN 2000 AND 3000

--비교연산자로 변경가능

--SELECT *
--FROM emp
--WHERE sal BETWEEN 2000 AND 3000
--;

--     EMPNO ENAME  JOB       MGR HIREDATE        SAL       COMM     DEPTNO
------------ ------ ------- ----- -------- ---------- ---------- ----------
--      7566 JONES  MANAGER  7839 81/04/02       2975                    20
--      7698 BLAKE  MANAGER  7839 81/05/01       2850                    30
--      7782 CLARK  MANAGER  7839 81/06/09       2450                    10
--      7788 SCOTT  ANALYST  7566 87/04/19       3000                    20
--      7902 FORD   ANALYST  7566 81/12/03       3000                    20
--
--급여가 2000~ 3000 사이가 아닌 사원들
SELECT *
FROM emp
WHERE sal NOT BETWEEN 2000 AND 3000
;

--     EMPNO ENAME                JOB                       MGR HIREDATE        SAL       COMM     DEPTNO
------------ -------------------- ------------------ ---------- -------- ---------- ---------- ----------
--      7369 SMITH                CLERK                    7902 80/12/17        800                    20
--      7499 ALLEN                SALESMAN                 7698 81/02/20       1600        300         30
--      7521 WARD                 SALESMAN                 7698 81/02/22       1250        500         30
--      7654 MARTIN               SALESMAN                 7698 81/09/28       1250       1400         30
--      7839 KING                 PRESIDENT                     81/11/17       5000                    10
--      7844 TURNER               SALESMAN                 7698 81/09/08       1500          0         30
--      7876 ADAMS                CLERK                    7788 87/05/23       1100                    20
--      7900 JAMES                CLERK                    7698 81/12/03        950                    30
--      7934 MILLER               CLERK                    7782 82/01/23       1300                    10
