SET SERVEROUTPUT ON;
DECLARE
	v_ename emp.ename%TYPE;
	v_sal   emp.sal%TYPE;
BEGIN
	pro_param_out(7788,v_ename,v_sal);
	DBMS_OUTPUT.PUT_LINE('ENAME : '||v_ename);
	DBMS_OUTPUT.PUT_LINE('SAL : '||v_sal);

END;
/

ENAME : SCOTT
SAL : 3000

PL/SQL 처리가 정상적으로 완료되었습니다.