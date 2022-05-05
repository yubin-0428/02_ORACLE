--매우 간단한 형태의 반복문						
--LOOP						
--	반복 수행 문장;					
--	EXIT WHEN 조건;					
--END LOOP;						


SET SERVEROUTPUT ON;
DECLARE
	V_NUM NUMBER := 0;
BEGIN
	LOOP
		DBMS_OUTPUT.PUT_LINE('V_NUM: '||V_NUM);
	    V_NUM := V_NUM +1;
		EXIT WHEN 	V_NUM > 11;	
	END LOOP;
END;
/

V_NUM: 0
V_NUM: 1
V_NUM: 2
V_NUM: 3
V_NUM: 4
V_NUM: 5
V_NUM: 6
V_NUM: 7
V_NUM: 8
V_NUM: 9
V_NUM: 10
V_NUM: 11