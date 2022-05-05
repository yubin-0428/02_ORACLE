--9
--a15
SELECT empno,
       ename,
       sal,
       TRUNC(sal/21.5,2)              AS DAY_PAY,
       ROUND((sal/(21.5*8)),1)        AS TIME_PAY
FROM emp  
;
EMPNO ENAME              SAL    DAY_PAY   TIME_PAY
----- --------------- ------ ---------- ----------
 7369 SMITH              800       37.2        4.7
 7499 ALLEN             1600      74.41        9.3
 7521 WARD              1250      58.13        7.3
 7566 JONES             2975     138.37       17.3
 7654 MARTIN            1250      58.13        7.3
 7698 BLAKE             2850     132.55       16.6
 7782 CLARK             2450     113.95       14.2
 7788 SCOTT             3000     139.53       17.4
 7839 KING              5000     232.55       29.1
 7844 TURNER            1500      69.76        8.7
 7876 ADAMS             1100      51.16        6.4
 7900 JAMES              950      44.18        5.5
 7902 FORD              3000     139.53       17.4
 7934 MILLER            1300      60.46        7.6