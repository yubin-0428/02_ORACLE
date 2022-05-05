--입사 42년 미만인 사원 데이터 출력
SELECT empno,
       ename,
	   hiredate,
	   sysdate,
	   ADD_MONTHS(hiredate,12*10*4+2) "ADD_42YEAR"
FROM emp
WHERE ADD_MONTHS(hiredate,12*10*4+2) > SYSDATE
;


 EMPNO ENAME     HIREDATE            SYSDATE             ADD_42YEAR
------ --------- ------------------- ------------------- -------------------
  7788 SCOTT     1987-04-19:00:00:00 2022-03-18:12:24:31 2027-06-19:00:00:00
  7876 ADAMS     1987-05-23:00:00:00 2022-03-18:12:24:31 2027-07-23:00:00:00
  7934 MILLER    1982-01-23:00:00:00 2022-03-18:12:24:31 2022-03-23:00:00:00