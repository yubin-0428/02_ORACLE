SELECT *
FROM emp
WHERE sal >= 2500
AND job = 'ANALYST'
;
EMPNO ENAME  JOB              MGR HIREDATE        SAL       COMM     DEPTNO
----- ------ --------- ---------- -------- ---------- ---------- ----------
 7788 SCOTT  ANALYST         7566 87/04/19       3000                    20
 7902 FORD   ANALYST         7566 81/12/03       3000                    20
