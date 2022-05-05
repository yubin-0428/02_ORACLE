SELECT t1.empno,
       t1.ename,
       t1.job,
       t1.mgr,
       t1.hiredate,
       t1.sal,
       t1.comm,
       t1.deptno
FROM emp t1
WHERE t1.ename LIKE '%S'   
;
     EMPNO ENAME                JOB                       MGR HIREDATE        SAL COMM     DEPTNO
---------- -------------------- ------------------ ---------- -------- ---------- ---------- ----------
      7566 JONES                MANAGER                  7839 81/04/02       2975              20
      7876 ADAMS                CLERK                    7788 87/05/23       1100              20
      7900 JAMES                CLERK                    7698 81/12/03        950              30
