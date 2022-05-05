--유형 1 예제: professor 테이블에서 학과번호와 교수명 , 학과명을 출력하되 deptno 가 101 번인 
--교수만 학과명을 "Computer Engineering" 으로 출력하고 101번이 아닌 교수들은 학과명에 
--아무것도 출력하지 마세요

SELECT deptno,
       name,
	   DECODE(deptno,101,'Computer Engineering',null) AS DNAME
FROM professor
;
    DEPTNO NAME               DNAME                
---------- ------------------ ---------------------
       101 Audie Murphy       Computer Engineering
       101 Angela Bassett     Computer Engineering
       101 Jessica Lange      Computer Engineering
       102 Winona Ryder
       102 Michelle Pfeiffer
       102 Whoopi Goldberg
       103 Emma Thompson
       103 Julia Roberts
       103 Sharon Stone
       201 Meryl Streep
       201 Susan Sarandon
       202 Nicole Kidman
       202 Holly Hunter
       203 Meg Ryan
       301 Andie Macdowell
       301 Jodie Foster

16 행이 선택되었습니다.