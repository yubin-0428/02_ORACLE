--student테이블에서 jumin컬럼을 사용해서 1전공이 101번인 학생들의 이름과 태어난 월일,
--생일 하루 전 날짜를 출력하세요.
SELECT name,
       SUBSTR(jumin,1,6) "Brithday",
       SUBSTR(jumin,1,6)-1 "Brithday-1"
FROM student
WHERE deptno1 =101
;
