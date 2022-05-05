SELECT *
FROM chap10hw_emp
WHERE sal > (SELECT AVG(NVL(sal,0))
            FROM chap10hw_emp
            WHERE deptno = 50);

     EMPNO ENAME                JOB                       MGR HIREDATE        SAL       COMM     DEPTNO
---------- -------------------- ------------------ ---------- -------- ---------- ---------- ----------
      7839 KING                 PRESIDENT                     81/11/17       5000                    10
      7201 TEST_USER1           MANAGER                  7788 16/01/02       4500                    50
      7203 TEST_USER3           ANALYST                  7201 16/04/11       3400                    60
      
UPDATE chap10hw_emp
   SET deptno = 70
 WHERE sal > (SELECT AVG(NVL(sal,0))   
              FROM chap10hw_emp
              WHERE deptno = 50);
              
              
SELECT *              
FROM chap10hw_emp
WHERE deptno = 70;

     EMPNO ENAME                JOB                       MGR HIREDATE        SAL       COMM     DEPTNO
---------- -------------------- ------------------ ---------- -------- ---------- ---------- ----------
      7839 KING                 PRESIDENT                     81/11/17       5000                    70
      7201 TEST_USER1           MANAGER                  7788 16/01/02       4500                    70
      7203 TEST_USER3           ANALYST                  7201 16/04/11       3400                    70
      7205 TEST_USER5           CLERK                    7201 16/07/20       2600                    70
      7206 TEST_USER6           CLERK                    7201 16/09/08       2600                    70

°æ   °ú: 00:00:00.00

COMMIT;