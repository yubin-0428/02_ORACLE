COL TOTAL FOR 99999999
SELECT deptno,
       ename,
       sal,
       SUM(sal) OVER() AS TOTAL,
       ROUND(sal/SUM(sal) OVER()*100,2) AS "%",
       ROUND(RATIO_TO_REPORT(sal) OVER()*100,2) AS "%2"
FROM emp
ORDER BY sal DESC
;
    DEPTNO ENAME                       SAL     TOTAL          %   %2
---------- -------------------- ---------- --------- ---------- ----------
        10 KING                       5000     29025      17.23      17.23
        20 FORD                       3000     29025      10.34      10.34
        20 SCOTT                      3000     29025      10.34      10.34
        20 JONES                      2975     29025      10.25      10.25
        30 BLAKE                      2850     29025       9.82       9.82
        10 CLARK                      2450     29025       8.44       8.44
        30 ALLEN                      1600     29025       5.51       5.51
        30 TURNER                     1500     29025       5.17       5.17
        10 MILLER                     1300     29025       4.48       4.48
        30 WARD                       1250     29025       4.31       4.31
        30 MARTIN                     1250     29025       4.31       4.31
        20 ADAMS                      1100     29025       3.79       3.79
        30 JAMES                       950     29025       3.27       3.27
        20 SMITH                       800     29025       2.76       2.76

14 행이 선택되었습니다.