--SELECT ename,
--       job
--FROM emp
--;

--SELECT ename || job
--FROM emp
--;

COL "NAME AND JOB" FOR A25
SELECT ename || q'[ 's job is ]'   ||job "NAME AND JOB"
FROM emp
;

--NAME AND JOB
---------------------------
--SMITH 's job is CLERK
--ALLEN 's job is SALESMAN
--WARD 's job is SALESMAN
--JONES 's job is MANAGER
--MARTIN 's job is SALESMAN
--BLAKE 's job is MANAGER
--CLARK 's job is MANAGER
--SCOTT 's job is ANALYST
--KING 's job is PRESIDENT
--TURNER 's job is SALESMAN
--ADAMS 's job is CLERK
--JAMES 's job is CLERK
--FORD 's job is ANALYST
--MILLER 's job is CLERK
--
--14 행이 선택되었습니다.