--EMP 1981년 6월 1일 이후 입사한 사원 정보 출력하기
--
SELECT empno,
       ename,
	   hiredate
FROM emp
WHERE hiredate > TO_DATE('1981/06/01','YYYY/MM/DD')
;
     EMPNO ENAME                HIREDATE
---------- -------------------- ----------
      7654 MARTIN               1981/09/28
      7782 CLARK                1981/06/09
      7788 SCOTT                1987/04/19
      7839 KING                 1981/11/17
      7844 TURNER               1981/09/08
      7876 ADAMS                1987/05/23
      7900 JAMES                1981/12/03
      7902 FORD                 1981/12/03
      7934 MILLER               1982/01/23