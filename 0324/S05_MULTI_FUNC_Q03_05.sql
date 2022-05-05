--11:40
--SUM() OVER를 활용한 누계

SELECT deptno,
       ename,
       sal,
       SUM(sal) OVER(ORDER BY sal,ename) total
FROM emp
;

    DEPTNO ENAME                       SAL   TOTAL
---------- -------------------- ---------- -------
        20 SMITH                       800     800
        30 JAMES                       950    1750
        20 ADAMS                      1100    2850
        30 MARTIN                     1250    4100
        30 WARD                       1250    5350
        10 MILLER                     1300    6650
        30 TURNER                     1500    8150
        30 ALLEN                      1600    9750
        10 CLARK                      2450   12200
        30 BLAKE                      2850   15050
        20 JONES                      2975   18025
        20 FORD                       3000   21025
        20 SCOTT                      3000   24025
        10 KING                       5000   29025

14 행이 선택되었습니다.