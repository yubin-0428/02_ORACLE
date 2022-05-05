--CREATE [OR REPLACE] PACKAGE BODY 패키지 이름                                           
--IS|AS                                           
--                                            
--                                            
--END 패키지 이름;                                           

CREATE OR REPLACE PACKAGE BODY PKG_EXAMPLE
IS
   body_no NUMBER := 10;
   
   FUNCTION func_aftertax(sal NUMBER) RETURN NUMBER
   IS
		tax NUMBER := 0.05;
   BEGIN
		RETURN ROUND(( sal - (sal*tax)));
   
   END func_aftertax;


   PROCEDURE pro_emp( in_empno IN EMP.empno%type)
   IS
		out_ename EMP.ename%TYPE;
		out_sal   EMP.sal%TYPE;
   BEGIN
	    SELECT ename, sal INTO out_ename,out_sal
        FROM emp
        WHERE empno = in_empno;	
   
		DBMS_OUTPUT.PUT_LINE('ename : '||out_ename);
        DBMS_OUTPUT.PUT_LINE('sal : '||out_sal);
   END pro_emp;
   
   PROCEDURE pro_dept( in_deptno IN DEPT.deptno%TYPE)
   IS
		out_dname DEPT.dname%TYPE;
		out_loc   DEPT.loc%TYPE;
   BEGIN
		SELECT dname, loc INTO out_dname, out_loc
		FROM dept
		WHERE deptno = in_deptno;
   
	    DBMS_OUTPUT.PUT_LINE('dname :'||out_dname);
		DBMS_OUTPUT.PUT_LINE('loc   :'||out_loc);
   
   END pro_dept;
   
END;
/

--패키지 본문이 생성되었습니다.






