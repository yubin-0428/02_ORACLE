--EXTRACT() - 역할
-- 입력된 날짜에서 추출하고자 하는 연도,월,시간,분 초 등을 반환하는 함수

--EXTRACT( 보고자 하는 정보 FROM 입력 날짜 )

--SELECT EXTRACT( YEAR FROM hiredate ) AS YEAR,
--       TO_CHAR(hiredate,'YYYY') AS YEAR_YYYY
--FROM emp
--;
SELECT EXTRACT( YEAR FROM hiredate ) AS YEAR,
       deptno,
       COUNT(*)
FROM emp
GROUP BY EXTRACT( YEAR FROM hiredate ),deptno
ORDER BY EXTRACT( YEAR FROM hiredate ) DESC ,deptno DESC
;

      YEAR DEPTNO   COUNT(*)
---------- ------ ----------
      1987     20          2
      1982     10          1
      1981     30          6
      1981     20          2
      1981     10          2
      1980     20          1

6 행이 선택되었습니다.