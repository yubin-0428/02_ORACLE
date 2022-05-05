--emp 테이블을 조회하여 comm 값을 가지고 있는 사람들의 empno , ename , hiredate , 
--총연봉,15% 인상 후 연봉을 아래 화면처럼 출력하세요. 단 총연봉은 (sal*12)+comm 으로 
--계산하고 아래 화면에서는 SAL 로 출력되었으며 15% 인상한 값은 총연봉의 15% 인상 값입니다.
--(HIREDATE 컬럼의 날짜 형식과 SAL 컬럼 , 15% UP 컬럼의 $ 표시와 , 기호 나오게 하세요)

SELECT  empno , 
        ename , 
        TO_CHAR(hiredate,'yyyy-mm-dd') AS hiredate ,
        TO_CHAR( (sal * 12)+comm,'$999,999') AS sal,
        TO_CHAR( ((sal * 12)+comm)*1.15,'$999,999') AS "15%_UP"
FROM emp
WHERE comm IS NOT NULL
;
     EMPNO ENAME   HIREDATE    SAL        15%_UP
---------- ------- ----------- --------- -----------
      7499 ALLEN   1981-02-20    $19,500    $22,425
      7521 WARD    1981-02-22    $15,500    $17,825
      7654 MARTIN  1981-09-28    $16,400    $18,860
      7844 TURNER  1981-09-08    $18,000    $20,700
