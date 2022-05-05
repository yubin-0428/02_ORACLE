--Student 테이블의 jumin 컬럼을 참조하여 학생들의 이름과 태어난 달 , 그리고 분기를 출력하세요. 
--
--태어난 달이 01-03월 은 1/4, 
--04 - 06월 은 2/4 , 
--07 - 09 월 은 3/4 , 
--10 - 12 월은 4/4 로 출력하세요.

--BETWEEN '01' AND '03' -> 숫자로 변환
SELECT name,
       jumin,
       SUBSTR(jumin,3,2) as "Month",
       CASE WHEN SUBSTR(jumin,3,2) BETWEEN '01' AND '03' THEN '1/4'
            WHEN SUBSTR(jumin,3,2) BETWEEN '04' AND '06' THEN '2/4'
            WHEN SUBSTR(jumin,3,2) BETWEEN '07' AND '09' THEN '3/4'
            WHEN SUBSTR(jumin,3,2) BETWEEN '10' AND '12' THEN '4/4'
       END "Quoter"     
FROM student
;

NAME                 JUMIN         Month            Quoter
-------------------- ------------- ---------------- ------
James Seo            7510231901813 10               4/4
Rene Russo           7502241128467 02               1/4
Sandra Bullock       7506152123648 06               2/4
Demi Moore           7512251063421 12               4/4
Danny Glover         7503031639826 03               1/4
Billy Crystal        7601232186327 01               1/4
Nicholas Cage        7604122298371 04               2/4
Micheal Keaton       7609112118379 09               3/4
Bill Murray          7601202378641 01               1/4
Macaulay Culkin      7610122196482 10               4/4
Richard Dreyfus      7711291186223 11               4/4
Tim Robbins          7704021358674 04               2/4
Wesley Snipes        7709131276431 09               3/4
Steve Martin         7702261196365 02               1/4
Daniel Day-Lewis     7712141254963 12               4/4
Danny Devito         7808192157498 08               3/4
Sean Connery         7801051776346 01               1/4
Christian Slater     7808091786954 08               3/4
Charlie Sheen        7803241981987 03               1/4
Anthony Hopkins      7802232116784 02               1/4

20 행이 선택되었습니다.