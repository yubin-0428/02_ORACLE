SELECT *
FROM chap10hw_emp
WHERE hiredate > (SELECT MIN(hiredate)
                  FROM chap10hw_emp
                  WHERE deptno = 60);
                  
     EMPNO ENAME                JOB                       MGR HIREDATE        SAL       COMM     DEPTNO
---------- -------------------- ------------------ ---------- -------- ---------- ---------- ----------
      7205 TEST_USER5           CLERK                    7201 16/07/20       2600                    70
      7206 TEST_USER6           CLERK                    7201 16/09/08       2600                    70
      7207 TEST_USER7           LECTURER                 7201 16/10/28       2300                    80

°æ   °ú: 00:00:00.00                  

UPDATE chap10hw_emp
   SET sal    = sal * 1.1,
       deptno = 80
 WHERE hiredate > (SELECT MIN(hiredate)
                  FROM chap10hw_emp
                  WHERE deptno = 60);       

SELECT *
FROM chap10hw_emp
WHERE deptno = 80;

     EMPNO ENAME                JOB                       MGR HIREDATE        SAL     COMM     DEPTNO
---------- -------------------- ------------------ ---------- -------- ---------- ---------- ----------
      7205 TEST_USER5           CLERK                    7201 16/07/20       2860                  80
      7206 TEST_USER6           CLERK                    7201 16/09/08       2860                  80
      7207 TEST_USER7           LECTURER                 7201 16/10/28       2530                  80
      7208 TEST_USER8           STUDENT                  7201 16/03/09       1200                  80