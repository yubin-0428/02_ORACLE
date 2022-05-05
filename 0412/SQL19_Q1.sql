--1. emp2 테이블과 dept2 테이블을 사용하여 아래와 같이 사원명과 부서와 직급을 합쳐서 출력하되 부서와 직급별로 계층형 쿼리를 사용하여 출력하세요. 
--단 직급이 없는 사람들은 직급을 ‘Team-Worker’ 로 출력하세요.

COL NAME_AND_POSITION FOR A130
SELECT LPAD(T1.NAME|| '-' || T2.dname || NVL(t1.position,'Team-Worker'),LEVEL*26,'-')AS NAME_AND_POSITION
FROM emp2 t1, dept2 t2
WHERE t1.deptno = t2.dcode
START WITH t1.PEMPNO IS NULL
CONNECT BY PRIOR T1.EMPNO = t1.PEMPNO
;

