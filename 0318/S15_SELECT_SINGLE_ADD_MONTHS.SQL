--ADD_MONTHS:주어진 날짜에 개월을 더함
--ADD_MONTHS(날짜,1)
--SELECT SYSDATE,
--       ADD_MONTHS(SYSDATE,3)  "ADD_MONTHS+3",
--       ADD_MONTHS(SYSDATE,-2) "ADD_MONTHS-2"
--FROM dual
--;

--emp테이블에서 입사 20주년이 되는 사원들의 데이터 출력
--empno,ename,hiredate
SELECT empno,
       ename,
	   hiredate,
	   ADD_MONTHS(hiredate,12*10*2) AS WORK20YEAR
FROM emp
;