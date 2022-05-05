--문자열은 ''으로 감싸서 조회
--데어터는 대소문자를 구분한다. 
SELECT *
FROM emp
WHERE ename = 'SMITH'
;

     EMPNO ENAME                JOB                       MGR HIREDATE        SAL       COMM     DEPTNO
---------- -------------------- ------------------ ---------- -------- ---------- ---------- ----------
      7369 SMITH                CLERK                    7902 80/12/17        800                    20
