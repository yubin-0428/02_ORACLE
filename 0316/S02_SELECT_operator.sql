--emp 사원들에 이름, 월급, 연봉,수당
--연봉 : 월급 * 12 + 수당
SELECT ename,
       sal+sal+sal+sal+sal+sal+sal+sal+sal+sal+sal+sal+comm AS anual_sal,
       sal,
	   comm
FROM emp
;
ENAME                 ANUAL_SAL        SAL       COMM
-------------------- ---------- ---------- ----------
SMITH                                  800
ALLEN                     19500       1600        300
WARD                      15500       1250        500
JONES                                 2975
MARTIN                    16400       1250       1400
BLAKE                                 2850
CLARK                                 2450
SCOTT                                 3000
KING                                  5000
TURNER                    18000       1500          0
ADAMS                                 1100
JAMES                                  950
FORD                                  3000
MILLER                                1300