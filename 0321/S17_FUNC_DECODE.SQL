--Student 테이블을 사용하여 제 1 전공 (deptno1) 이 101 번인 학과 학생들의 이름과 주민번호, 
--성별을 출력하되 성별은 주민번호(jumin) 컬럼을 이용하여 7번째 숫자가 1일 경우 “  남자” , 
--2일 경우 “여자  ” 로 출력하세요.
col name for a20
col jumin for a13
col gender for 9
col "Gender" for a7
SELECT  name,
        jumin,
        SUBSTR(jumin,7,1) as gender,
        DECODE(SUBSTR(jumin,7,1),1,'MAN'
                                ,2,'WOMAN'
                                ,3,'MAN'    --2000년 이후 출생
                                ,4,'WOMAN'  --2000년 이후 출생
                                ) AS "Gender"
FROM student
WHERE deptno1 = 101
;

--NAME                 JUMIN         GENDER  Gender
---------------------- ------------- ------- -------
--James Seo            7510231901813 1       MAN
--Billy Crystal        7601232186327 2       WOMAN
--Richard Dreyfus      7711291186223 1       MAN
--Danny Devito         7808192157498 2       WOMAN
