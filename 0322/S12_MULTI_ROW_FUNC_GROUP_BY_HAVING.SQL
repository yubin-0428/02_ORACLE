--GROUP BY절에 조건을 줄 때 사용하는 HAVING                                                     
--    HAVING절은 SELECT문에 GROUP BY절이 존재할 때만 사용할수 있다.                                                 
--    그리고 GROUP BY절을 통해 그룹화된 결과 값의 범위를 제한하는 데 사용합니다.                                                   
--                                                        
--    emp테이블 에서 평균 급여가 2000만원 이상인 부서의 부서 번호, 평균 급여를 출력 하기.                                                    
--SELECT deptno, AVG( NVL(sal,0) )
--FROM emp
--WHERE AVG( NVL(sal,0) ) >= 2000
--GROUP BY deptno
--;
--
--WHERE AVG( NVL(sal,0) ) >= 2000
--      *
--3행에 오류:
--ORA-00934: 그룹 함수는 허가되지 않습니다

SELECT deptno, AVG( NVL(sal,0) )
FROM emp
GROUP BY deptno
HAVING AVG( NVL(sal,0) ) >= 2000
;

--    DEPTNO AVG(NVL(SAL,0))
------------ ---------------
--        10      2916.66667
--        20            2175