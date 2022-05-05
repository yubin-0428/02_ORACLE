col  empno for 9999
col  ename for a20
col  sal for 99999
col  after_tax for 99999
SELECT empno,
       ename,
	   sal,
	   func_aftertax(sal) as after_tax
FROM emp
;

EMPNO ENAME                   SAL AFTER_TAX
----- -------------------- ------ ---------
 7369 SMITH                   800       760
 7499 ALLEN                  1600      1520
 7521 WARD                   1250      1188
 7566 JONES                  2975      2826
 7654 MARTIN                 1250      1188
 7698 BLAKE                  2850      2708
 7782 CLARK                  2450      2328
 7788 SCOTT                  3000      2850
 7839 KING                   5000      4750
 7844 TURNER                 1500      1425
 7876 ADAMS                  1100      1045
 7900 JAMES                   950       903
 7902 FORD                   3000      2850
 7934 MILLER                 1300      1235

14 행이 선택되었습니다.