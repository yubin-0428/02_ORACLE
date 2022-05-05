SET SERVEROUTPUT ON;
DECLARE
	TYPE ITAB_EX IS TABLE OF VARCHAR(20)
	INDEX BY PLS_INTEGER;
	
	text_arr ITAB_EX;
BEGIN
	text_arr(1) := '1st';
	text_arr(2) := '2st';
	text_arr(3) := '3st';
	text_arr(4) := '4st';
	text_arr(50) := '5st';
	
    DBMS_OUTPUT.PUT_LINE('text_arr.COUNT:'|| text_arr.COUNT);
    DBMS_OUTPUT.PUT_LINE('text_arr.FIRST:'|| text_arr.FIRST);
	DBMS_OUTPUT.PUT_LINE('text_arr.LAST:' || text_arr.LAST);
	DBMS_OUTPUT.PUT_LINE('text_arr.PRIOR(50)' || text_arr.PRIOR(50));--컬렉션 n인덱스 바로 앞 인덱스 값 반환
	DBMS_OUTPUT.PUT_LINE('text_arr.NEXT(50)'  || text_arr.NEXT(50));--컬렉션 n인덱스 바로 다음 인덱스 값 반환 없으면 NULL반환

END;
/

text_arr.COUNT:5
text_arr.FIRST:1
text_arr.LAST:50
text_arr.PRIOR(50)4
text_arr.NEXT(50)