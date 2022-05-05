--예1) emp 테이블을 조회하여 이름이 'ALLEN' 인 사원의 사번과 이름과 연봉을 
--     출력하세요. 단 연봉은 (sal * 12)+comm 로 계산하고 천 단위 구분기호로 
--     표시하세요.
SELECT empno,
       ename,
       sal,
       comm,
       TO_CHAR(sal*12+comm,'999,999') AS salary
FROM emp
WHERE ename = 'ALLEN'
;