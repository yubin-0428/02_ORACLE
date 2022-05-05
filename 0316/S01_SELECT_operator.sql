--emp 사원들에 이름, 월급, 연봉,수당
--연봉 : 월급 * 12 + 수당
SELECT ename,sal*12+comm,sal,comm
FROM emp
;

--"SAL*12+COMM" 데이터가 없는 이유는 comm NULL연산으로 
--NULL : 값을 알수 없음
ENAME                SAL*12+COMM        SAL       COMM
-------------------- ----------- ---------- ----------
SMITH                                   800
ALLEN                      19500       1600        300
WARD                       15500       1250        500
JONES                                  2975
MARTIN                     16400       1250       1400
BLAKE                                  2850
CLARK                                  2450
SCOTT                                  3000
KING                                   5000
TURNER                     18000       1500          0
ADAMS                                  1100
JAMES                                   950
FORD                                   3000
MILLER                                 1300

14 행이 선택되었습니다.
