--ename >='F' ename 열 값의 첫 문자와 대문자 F를 비교
--했을 때 알파벳 순서상 F보다 뒤에 있는 문자열을 출력
SELECT *
FROM emp
WHERE ename >='F'
;
     EMPNO ENAME                JOB                       MGR HIREDATE        SAL       COMM     DEPTNO
---------- -------------------- ------------------ ---------- -------- ---------- ---------- ----------
      7369 SMITH                CLERK                    7902 80/12/17        800                    20
      7521 WARD                 SALESMAN                 7698 81/02/22       1250        500         30
      7566 JONES                MANAGER                  7839 81/04/02       2975                    20
      7654 MARTIN               SALESMAN                 7698 81/09/28       1250       1400         30
      7788 SCOTT                ANALYST                  7566 87/04/19       3000                    20
      7839 KING                 PRESIDENT                     81/11/17       5000                    10
      7844 TURNER               SALESMAN                 7698 81/09/08       1500          0         30
      7900 JAMES                CLERK                    7698 81/12/03        950                    30
      7902 FORD                 ANALYST                  7566 81/12/03       3000                    20
      7934 MILLER               CLERK                    7782 82/01/23       1300                    10
