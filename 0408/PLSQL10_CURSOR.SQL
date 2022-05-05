SET SERVEROUTPUT ON;
DECLARE
	V_DEPT dept%ROWTYPE;
BEGIN
	SELECT deptno, dname, loc INTO V_DEPT
	FROM dept ;
	WHERE deptno = 40;	

	DBMS_OUTPUT.PUT_LINE('deptno: '||V_DEPT.deptno);
    DBMS_OUTPUT.PUT_LINE('dname: '||V_DEPT.dname);
	DBMS_OUTPUT.PUT_LINE('loc: '||V_DEPT.loc);

END;
/
--다건 추출시 예외 발생!
--1행에 오류:
--ORA-01422: 실제 인출은 요구된 것보다 많은 수의 행을 추출합니다
--ORA-06512:  4행