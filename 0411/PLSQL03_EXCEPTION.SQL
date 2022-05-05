SET SERVEROUTPUT ON;
DECLARE
	V_WRONG NUMBER;
BEGIN
    --문자열 -> NUMBER
	SELECT dname INTO V_WRONG
	FROM dept
	WHERE deptno = 10;

EXCEPTION
	WHEN VALUE_ERROR THEN
		DBMS_OUTPUT.PUT_LINE('예외 처리: 수치 또는 값 오류 발생');
END;
/

--예외 처리: 수치 또는 값 오류 발생
--
--PL/SQL 처리가 정상적으로 완료되었습니다.