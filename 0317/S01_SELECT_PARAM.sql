--사용자에게 조건을 입력 받아서 조건 값에 맞는 값을 출력하기.
SELECT empno,
       ename,
	   sal
FROM emp
WHERE empno = &empno
;

--09:14:57 SCOTT>@S01_SELECT_PARAM.sql
--empno의 값을 입력하십시오: 7902
--
--     EMPNO ENAME                       SAL
------------ -------------------- ----------
--      7902 FORD                       3000