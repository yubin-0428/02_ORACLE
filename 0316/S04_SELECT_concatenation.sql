COL "NAME AND JOB" FOR A35
SELECT ename ||'('||job||'), '||ename||' '' '||job||'''' AS "NAME AND JOB"
FROM emp
;
/*
NAME AND JOB
-----------------------------------
SMITH(CLERK), SMITH'CLERK'
ALLEN(SALESMAN), ALLEN'SALESMAN'
WARD(SALESMAN), WARD'SALESMAN'
JONES(MANAGER), JONES'MANAGER'
MARTIN(SALESMAN), MARTIN'SALESMAN'
BLAKE(MANAGER), BLAKE'MANAGER'
CLARK(MANAGER), CLARK'MANAGER'
SCOTT(ANALYST), SCOTT'ANALYST'
KING(PRESIDENT), KING'PRESIDENT'
TURNER(SALESMAN), TURNER'SALESMAN'
ADAMS(CLERK), ADAMS'CLERK'
JAMES(CLERK), JAMES'CLERK'
FORD(ANALYST), FORD'ANALYST'
MILLER(CLERK), MILLER'CLERK'

14 행이 선택되었습니다.
*/