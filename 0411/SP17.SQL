SET SERVEROUTPUT ON;
DECLARE
	no NUMBER;
BEGIN
	no :=9;
	pro_inout(no);
	
	DBMS_OUTPUT.PUT_LINE('no:'||no);


END;
/

no:18

PL/SQL 처리가 정상적으로 완료되었습니다.