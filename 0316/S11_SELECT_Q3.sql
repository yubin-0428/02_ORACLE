SELECT  empno      AS EMPLOYEE_NO
		,ename     AS EMPLOYEE_NAME
		,job       AS MANAGER
		,sal       AS SALARY
		,comm      AS COMMISSION
		,deptno    AS DEPARTMENT_NO
FROM emp
ORDER BY deptno DESC, ename ASC
;
EMPLOYEE_NO EMPLOYEE_NAME        MANAGER                SALARY COMMISSION DEPARTMENT_NO
----------- -------------------- ------------------ ---------- ---------- -------------
       7499 ALLEN                SALESMAN                 1600        300            30
       7698 BLAKE                MANAGER                  2850                       30
       7900 JAMES                CLERK                     950                       30
       7654 MARTIN               SALESMAN                 1250       1400            30
       7844 TURNER               SALESMAN                 1500          0            30
       7521 WARD                 SALESMAN                 1250        500            30
       7876 ADAMS                CLERK                    1100                       20
       7902 FORD                 ANALYST                  3000                       20
       7566 JONES                MANAGER                  2975                       20
       7788 SCOTT                ANALYST                  3000                       20
       7369 SMITH                CLERK                     800                       20
       7782 CLARK                MANAGER                  2450                       10
       7839 KING                 PRESIDENT                5000                       10
       7934 MILLER               CLERK                    1300                       10