SELECT deptno,
       ename,
       sal,
       SUM(sal) OVER(PARTITION BY deptno ORDER BY sal,ename) total
FROM emp
;

    DEPTNO ENAME                       SAL   TOTAL
---------- -------------------- ---------- -------
        10 MILLER                     1300    1300
        10 CLARK                      2450    3750
        10 KING                       5000    8750
        20 SMITH                       800     800
        20 ADAMS                      1100    1900
        20 JONES                      2975    4875
        20 FORD                       3000    7875
        20 SCOTT                      3000   10875
        30 JAMES                       950     950
        30 MARTIN                     1250    2200
        30 WARD                       1250    3450
        30 TURNER                     1500    4950
        30 ALLEN                      1600    6550
        30 BLAKE                      2850    9400

14 행이 선택되었습니다.