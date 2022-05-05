--연관 배열
--TYPE 연관배열이름 IS TABLE OF 자료형[NOT NULL]											
--											
--INDEX BY 인덱스형;											
--PLS_INTEGER는 -2,147,483,648에서 2,147,483,647까지 범위를 가진 숫자 타입으로, 
--NUMBER 형에 비해 내부적으로 저장 공간을 덜 차지한다. 

--BINARY_INTEGER는 PLS_INTEGER 타입과 동일하다.

SET SERVEROUTPUT ON;
DECLARE
    --연관배열 정의
	TYPE ITAB_EX IS TABLE OF VARCHAR2(20)
	INDEX BY PLS_INTEGER;
	
	--선언
	text_arr ITAB_EX;
BEGIN
	text_arr(1) :='1st data';
    text_arr(2) :='2st data';
	text_arr(3) :='3st data';

	DBMS_OUTPUT.PUT_LINE('text_arr(1):'||text_arr(1));
	DBMS_OUTPUT.PUT_LINE('text_arr(2):'||text_arr(2));
	DBMS_OUTPUT.PUT_LINE('text_arr(3):'||text_arr(3));

END;
/