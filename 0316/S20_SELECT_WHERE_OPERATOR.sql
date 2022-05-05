SELECT  *
FROM emp
WHERE sal * 12 = 36000
;

12:27:25 SCOTT>@S20_SELECT_WHERE_OPERATOR.sql

     EMPNO ENAME  JOB         MGR HIREDATE   SAL       COMM     DEPTNO
---------- ------ -------- ------ -------- ----- ---------- ----------
      7788 SCOTT  ANALYST    7566 87/04/19  3000                    20
      7902 FORD   ANALYST    7566 81/12/03  3000                    20
