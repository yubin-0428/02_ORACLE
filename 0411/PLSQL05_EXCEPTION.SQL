SET SERVEROUTPUT ON;
DECLARE
	V_WRONG VARCHAR2(20);
BEGIN
    --문자열 -> NUMBER
	DBMS_OUTPUT.PUT_LINE('1');
	
	SELECT dname INTO V_WRONG
	FROM dept
	WHERE deptno IN (10,20);

    DBMS_OUTPUT.PUT_LINE('2');

EXCEPTION
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('예외처리: 요구보다 많은 행 추출 오류 발생');
	WHEN VALUE_ERROR THEN
		DBMS_OUTPUT.PUT_LINE('예외 처리: 수치 또는 값 오류 발생');
	WHEN OTHERS THEN
		DBMS_OUTPUT.PUT_LINE('예외처리 : 사전 정의 외 오류 발생');	
END;
/

1
예외처리: 요구보다 많은 행 추출 오류 발생