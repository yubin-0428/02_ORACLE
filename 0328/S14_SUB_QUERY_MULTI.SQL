--Emp2 테이블을 조회해서 직원 들 중에서 자신의 직급의 평균연봉과 같거나 많이 받는                                                               
--사람들의 이름과 직급, 현재 연봉을 출력하세요.                                                                

col name for a32
col position for a32
col salay for a15
SELECT t1.name,
       t1.position,
       TO_CHAR(t1.pay,'$999,999,999') AS salay
FROM emp2 t1
WHERE t1.pay >= (SELECT AVG(NVL(t2.pay,0))
                 FROM emp2 t2
                 WHERE t1.position = t2.position
                );