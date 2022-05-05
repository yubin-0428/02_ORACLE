--ename S로 시작하는
--SELECT empno,
--       ename,
--	   job,
--	   deptno
--FROM emp
--WHERE ename LIKE 'S%'
--;
--     EMPNO ENAME                JOB                    DEPTNO
------------ -------------------- ------------------ ----------
--      7369 SMITH                CLERK                      20
--      7788 SCOTT                ANALYST                    20

--ename S를 포함하고 있는
--조회속도가 첫번째 SQL비해 
SELECT empno,
       ename,
	   job,
	   deptno
FROM emp
WHERE ename LIKE '%S%'
;
     EMPNO ENAME                JOB                    DEPTNO
---------- -------------------- ------------------ ----------
      7369 SMITH                CLERK                      20
      7566 JONES                MANAGER                    20
      7788 SCOTT                ANALYST                    20
      7876 ADAMS                CLERK                      20
      7900 JAMES                CLERK                      30
