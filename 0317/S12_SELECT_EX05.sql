SELECT t1.ename,
       t1.empno,
       t1.sal,
       t1.deptno
FROM emp t1
WHERE t1.ename LIKE '%E%'  
AND t1.deptno = 30
AND t1.sal NOT BETWEEN 1000 AND 2000
;

ENAME                     EMPNO        SAL     DEPTNO
-------------------- ---------- ---------- ----------
BLAKE                      7698       2850         30
JAMES                      7900        950         30