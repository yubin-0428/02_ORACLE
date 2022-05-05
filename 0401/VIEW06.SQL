CREATE OR REPLACE VIEW vw_emp20
AS ( SELECT empno, ename, job,deptno
     FROM emp
     WHERE deptno =20
);

뷰가 생성되었습니다.

SELECT *
FROM vw_emp20;

     EMPNO ENAME                JOB                    DEPTNO
---------- -------------------- ------------------ ----------
      7369 SMITH                CLERK                      20
      7566 JONES                MANAGER                    20
      7788 SCOTT                ANALYST                    20
      7876 ADAMS                CLERK                      20
      7902 FORD                 ANALYST                    20

경   과: 00:00:00.00