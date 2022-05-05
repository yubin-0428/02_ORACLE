--SUM()함수                                
--    입력 데이터들의 합계 값을 구하는 함수                           
--        SUM( [DISTINCT, ALL])     
--       SAL
------------
--       800
--       950
--      1100
--      1250
--      1250
--      1300
--      1500
--      1600
--      2450
--      2850
--      2975
--      3000
--      3000
--      5000  
--sal총합
--sal 중복 데이터 제거 총합                
SELECT SUM(ALL sal),     
       SUM(DISTINCT sal),
       SUM(sal)         
FROM emp
;