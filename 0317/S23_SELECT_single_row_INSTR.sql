--student테이블의 tel컬럼을 사용하여 1전공(deptno1)이 201번인 학생의 이름과 지역번호
--를 출력하세요.
col name for a18
col tel for a18
col area_code for a18
SELECT name,
       tel,
       INSTR(tel,')'),
       SUBSTR(tel,1,INSTR(tel,')')-1) AS area_code
FROM student
WHERE deptno1 = 201
;