SET SERVEROUTPUT ON;
DECLARE

BEGIN
	FOR i IN 1..10 LOOP
	    --2로 나눈 나머지가 0이면 건너 뛰어라
		CONTINUE WHEN MOD(i,2) = 0;
	    DBMS_OUTPUT.PUT_LINE('i: '||i);
	END LOOP;

END;
/

i: 1
i: 3
i: 5
i: 7
i: 9