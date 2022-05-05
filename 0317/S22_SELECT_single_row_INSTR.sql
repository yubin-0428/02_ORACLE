--student테이블의 tel컬럼을 사용하여 1전공(deptno1)이 201번인 학생의 이름과 전화번호, ')'
--가 나오는 위치를 출력하세요.

SELECT name,
       tel,
	   INSTR(tel,')')
FROM student
WHERE deptno1 = 201
;

