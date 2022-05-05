INSERT INTO CHAP10HW_EMP(empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES (7201,    'TEST_USER1','MANAGER' ,7788,    '2016-01-02',    4500,    NULL, 50);  
INSERT INTO CHAP10HW_EMP(empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES (7202,    'TEST_USER2','CLERK'   ,7201,    '2016-02-21',    1800,    NULL, 50);  
INSERT INTO CHAP10HW_EMP(empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES (7203,    'TEST_USER3','ANALYST' ,7201,    '2016-04-11',    3400,    NULL, 60);  
INSERT INTO CHAP10HW_EMP(empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES (7204,    'TEST_USER4','SALESMAN',7201,    '2016-05-31',    2700,    300, 60);  
INSERT INTO CHAP10HW_EMP(empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES (7205,    'TEST_USER5','CLERK'   ,7201,    '2016-07-20',    2600,    NULL, 70);  
INSERT INTO CHAP10HW_EMP(empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES (7206,    'TEST_USER6','CLERK'   ,7201,    '2016-09-08',    2600,    NULL, 70);  
INSERT INTO CHAP10HW_EMP(empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES (7207,    'TEST_USER7','LECTURER',7201,    '2016-10-28',    2300,    NULL, 80);  
INSERT INTO CHAP10HW_EMP(empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES (7208,    'TEST_USER8','STUDENT' ,7201,    '2016-03-09',    1200,    NULL, 80);  

COMMIT;

SELECT * FROM CHAP10HW_EMP;

     EMPNO ENAME                JOB                       MGR HIREDATE             SAL       COMM     DEPTNO
---------- -------------------- ------------------ ---------- -------- ---------- ---------- ----------
      7369 SMITH                CLERK                    7902 80/12/17             800                    20
      7499 ALLEN                SALESMAN                 7698 81/02/20            1600        300         30
      7521 WARD                 SALESMAN                 7698 81/02/22            1250        500         30
      7566 JONES                MANAGER                  7839 81/04/02            2975                    20
      7654 MARTIN               SALESMAN                 7698 81/09/28            1250       1400         30
      7698 BLAKE                MANAGER                  7839 81/05/01            2850                    30
      7782 CLARK                MANAGER                  7839 81/06/09            2450                    10
      7788 SCOTT                ANALYST                  7566 87/04/19            3000                    20
      7839 KING                 PRESIDENT                     81/11/17            5000                    10
      7844 TURNER               SALESMAN                 7698 81/09/08            1500          0         30
      7876 ADAMS                CLERK                    7788 87/05/23            1100                    20
      7900 JAMES                CLERK                    7698 81/12/03             950                    30
      7902 FORD                 ANALYST                  7566 81/12/03            3000                    20
      7934 MILLER               CLERK                    7782 82/01/23            1300                    10
      7201 TEST_USER1           MANAGER                  7788 16/01/02            4500                    50
      7202 TEST_USER2           CLERK                    7201 16/02/21            1800                    50
      7203 TEST_USER3           ANALYST                  7201 16/04/11            3400                    60
      7204 TEST_USER4           SALESMAN                 7201 16/05/31            2700        300         60
      7205 TEST_USER5           CLERK                    7201 16/07/20            2600                    70
      7206 TEST_USER6           CLERK                    7201 16/09/08            2600                    70
      7207 TEST_USER7           LECTURER                 7201 16/10/28            2300                    80
      7208 TEST_USER8           STUDENT                  7201 16/03/09            1200                    80

22 행이 선택되었습니다.