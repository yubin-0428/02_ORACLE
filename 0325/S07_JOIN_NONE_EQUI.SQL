SELECT t1.empno,
       t1.ename,
       t1.sal,
       t1.job,
       t2.grade
FROM emp t1, salgrade t2
WHERE t1.sal BETWEEN t2.losal AND T2.hisal
;

     EMPNO ENAME                       SAL JOB                     GRADE
---------- -------------------- ---------- ------------------ ----------
      7369 SMITH                       800 CLERK                       1
      7900 JAMES                       950 CLERK                       1
      7876 ADAMS                      1100 CLERK                       1
      7521 WARD                       1250 SALESMAN                    2
      7654 MARTIN                     1250 SALESMAN                    2
      7934 MILLER                     1300 CLERK                       2
      7844 TURNER                     1500 SALESMAN                    3
      7499 ALLEN                      1600 SALESMAN                    3
      7782 CLARK                      2450 MANAGER                     4
      7698 BLAKE                      2850 MANAGER                     4
      7566 JONES                      2975 MANAGER                     4
      7788 SCOTT                      3000 ANALYST                     4
      7902 FORD                       3000 ANALYST                     4
      7839 KING                       5000 PRESIDENT                   5

14 행이 선택되었습니다.