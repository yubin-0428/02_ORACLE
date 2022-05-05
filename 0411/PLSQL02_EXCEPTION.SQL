


SET SERVEROUTPUT ON;
DECLARE
	V_WRONG NUMBER;
BEGIN
    --문자열 -> NUMBER
	SELECT dname INTO V_WRONG
	FROM dept
	WHERE deptno = 10;

END;
/

--1행에 오류:
--ORA-06502: PL/SQL: 수치 또는 값 오류: 문자를 숫자로 변환하는데 오류입니다
--ORA-06512:  5행