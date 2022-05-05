--LAG()함수                                                        
--    이전 행 값을 가져올 때 사용하는 함수                                                 
--    형식)                                                    
--        LAG(출력컬럼,OFFSET,기본출력값)                                              
--            OVER(Query_partition구문, ORDER BY 정렬할 컬럼)                                         
SELECT ename,
       hiredate,
       sal,
       LAG(sal,1,0) OVER( ORDER BY hiredate) AS "LAG"
FROM emp
;
ENAME                HIREDATE        SAL        LAG
-------------------- -------- ---------- ----------
SMITH                80/12/17        800          0
ALLEN                81/02/20       1600        800
WARD                 81/02/22       1250       1600
JONES                81/04/02       2975       1250
BLAKE                81/05/01       2850       2975
CLARK                81/06/09       2450       2850
TURNER               81/09/08       1500       2450
MARTIN               81/09/28       1250       1500
KING                 81/11/17       5000       1250
JAMES                81/12/03        950       5000
FORD                 81/12/03       3000        950
MILLER               82/01/23       1300       3000
SCOTT                87/04/19       3000       1300
ADAMS                87/05/23       1100       3000

14 행이 선택되었습니다.