


SET SERVEROUTPUT ON;
DECLARE


BEGIN
	UPDATE DEPT
	   SET dname = 'DATABASE'
	 WHERE deptno= 50;   
	
	DBMS_OUTPUT.PUT_LINE('갱신된 행의 수:'||SQL%ROWCOUNT);
	
	IF(SQL%FOUND) THEN
		DBMS_OUTPUT.PUT_LINE('갱신 대상 행 존재 여부 : TRUE');
	ELSE
		DBMS_OUTPUT.PUT_LINE('갱신 대상 행 존재 여부 : FLASE');
	END IF;
	
	IF(SQL%ISOPEN) THEN
		DBMS_OUTPUT.PUT_LINE('커서의 OPEN여부 : TRUE');
	ELSE
		DBMS_OUTPUT.PUT_LINE('커서의 OPEN여부 : FALSE');
	
	END IF;
	
	
END;
/

갱신된 행의 수:0
갱신 대상 행 존재 여부 : FLASE
커서의 OPEN여부 : FALSE

PL/SQL 처리가 정상적으로 완료되었습니다.