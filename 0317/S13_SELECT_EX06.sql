SELECT t1.empno,
       t1.ename,
       t1.job,
       t1.mgr,
       t1.hiredate,
       t1.sal,
       t1.comm,
       t1.deptno
FROM emp t1
WHERE t1.comm IS NULL
AND t1.mgr IS NOT NULL
AND t1.job IN ('CLERK','MANAGER')
AND t1.ename NOT LIKE '_L%'
ORDER BY t1.empno ASC
;

--     EMPNO ENAME   JOB             MGR HIREDATE        SAL       COMM     DEPTNO
------------ ------- -------- ---------- -------- ---------- ---------- ----------
--      7369 SMITH   CLERK          7902 80/12/17        800                    20
--      7566 JONES   MANAGER        7839 81/04/02       2975                    20
--      7876 ADAMS   CLERK          7788 87/05/23       1100                    20
--      7900 JAMES   CLERK          7698 81/12/03        950                    30
--      7934 MILLER  CLERK          7782 82/01/23       1300                    10
