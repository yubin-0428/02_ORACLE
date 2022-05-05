--CREATE [OR REPLACE] PACKAGE 패키지 이름                                        
--IS|AS                                       
--    서브프로그램을 포함한 다양한 객체 선언                                  
--END [패키지 이름];                                     

CREATE OR REPLACE PACKAGE PKG_EXAMPLE
IS
	spec_no NUMBER :=10 ;
	FUNCTION func_aftertax(sal NUMBER) RETURN NUMBER;

    PROCEDURE pro_emp( in_empno IN EMP.empno%TYPE);
	
	PROCEDURE pro_dept( in_deptno IN DEPT.deptno%TYPE);
END;
/
  

--패키지가 생성되었습니다.