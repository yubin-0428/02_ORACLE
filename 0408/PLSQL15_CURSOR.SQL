SET SERVEROUTPUT ON;
DECLARE
    --부서 번호 저장용 변수
    V_DEPTNO DEPT.deptno%TYPE;
    
    --커서
    CURSOR C1 (p_deptno DEPT.deptno%TYPE) IS
    SELECT deptno, dname, loc
    FROM dept
    WHERE deptno = p_deptno;
    

BEGIN
	V_DEPTNO := &INPUT_DEPTNO;

	--커서 for loop(자동 open,fetch,close)
    FOR C1_REC IN C1(V_DEPTNO) LOOP
		DBMS_OUTPUT.PUT_LINE(C1_REC.deptno || ',' || C1_REC.dname || ',' || C1_REC.loc);
	
	END LOOP;


END;
/

input_deptno의 값을 입력하십시오: 20
20,RESEARCH,DALLAS

PL/SQL 처리가 정상적으로 완료되었습니다.