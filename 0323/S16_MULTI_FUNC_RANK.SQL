SELECT empno,
       ename,
       sal,
       RANK() OVER(order by sal desc) "RANK_DESC"
FROM emp
;

--
     EMPNO ENAME                       SAL  RANK_DESC
---------- -------------------- ---------- ----------
      7839 KING                       5000          1
      7902 FORD                       3000          2
      7788 SCOTT                      3000          2
      7566 JONES                      2975          4
      7698 BLAKE                      2850          5
      7782 CLARK                      2450          6
      7499 ALLEN                      1600          7
      7844 TURNER                     1500          8
      7934 MILLER                     1300          9
      7521 WARD                       1250         10
      7654 MARTIN                     1250         10
      7876 ADAMS                      1100         12
      7900 JAMES                       950         13
      7369 SMITH                       800         14

14 행이 선택되었습니다.