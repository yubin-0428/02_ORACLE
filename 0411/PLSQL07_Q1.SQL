SET SERVEROUTPUT ON;
DECLARE
    V_EMP_ROW EMP%ROWTYPE;
    
    CURSOR C1 IS
		SELECT empno                
			  ,ename              
			  ,job                
			  ,mgr                
			  ,hiredate               
			  ,sal                
			  ,comm               
			  ,deptno 
		FROM emp;


BEGIN
	OPEN C1;
		LOOP
			FETCH C1 INTO V_EMP_ROW;
				DBMS_OUTPUT.PUT_LINE(' empno :    ' ||  V_EMP_ROW.empno    || 
				                     ' ename :    ' ||  V_EMP_ROW.ename    || 
				                     ' job   :    ' ||  V_EMP_ROW.job      ||  
				                     ' sal   :    ' ||  V_EMP_ROW.sal      || 
		                             ' deptno:    ' ||  V_EMP_ROW.deptno      );
		
			EXIT WHEN C1%NOTFOUND;
		
		END LOOP;
		
	CLOSE C1;	
EXCEPTION 
	WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('SQLCODE: '|| TO_CHAR(	SQLCODE));	
		DBMS_OUTPUT.PUT_LINE('SQLERRM: '|| SQLERRM);
	
	
END;
/

empno :    7369 ename :    SMITH job   :    CLERK sal   :    800 deptno:    20
empno :    7499 ename :    ALLEN job   :    SALESMAN sal   :    1600 deptno:    30
empno :    7521 ename :    WARD job   :    SALESMAN sal   :    1250 deptno:    30
empno :    7566 ename :    JONES job   :    MANAGER sal   :    2975 deptno:    20
empno :    7654 ename :    MARTIN job   :    SALESMAN sal   :    1250 deptno:    30
empno :    7698 ename :    BLAKE job   :    MANAGER sal   :    2850 deptno:    30
empno :    7782 ename :    CLARK job   :    MANAGER sal   :    2450 deptno:    10
empno :    7788 ename :    SCOTT job   :    ANALYST sal   :    3000 deptno:    20
empno :    7839 ename :    KING job   :    PRESIDENT sal   :    5000 deptno:    10
empno :    7844 ename :    TURNER job   :    SALESMAN sal   :    1500 deptno:    30
empno :    7876 ename :    ADAMS job   :    CLERK sal   :    1100 deptno:    20
empno :    7900 ename :    JAMES job   :    CLERK sal   :    950 deptno:    30
empno :    7902 ename :    FORD job   :    ANALYST sal   :    3000 deptno:    20
empno :    7934 ename :    MILLER job   :    CLERK sal   :    1300 deptno:    10
empno :    7934 ename :    MILLER job   :    CLERK sal   :    1300 deptno:    10

PL/SQL 처리가 정상적으로 완료되었습니다.


