--CREATE OR REPLACE PROCEDURE 프로시저 이름                                                                                                                               
--IS | AS                                                                                                                             
--        선언부                                                                                                                      
--BEGIN                                                                                                                               
--        실행부                                                                                                                        
--                                                                                                                                    
--EXCEPTION                                                                                                                                   
--        예외 처리부                                                                                                                    
--                                                                                                                                    
--END [프로시저 이름];                                            

CREATE OR REPLACE PROCEDURE PRO_NOPARAM
IS
	V_EMPNO NUMBER(4) := 7788;
	V_ENAME VARCHAR2(10);

BEGIN
	V_ENAME :='SCOTT';
	DBMS_OUTPUT.PUT_LINE('V_EMPNO : '|| V_EMPNO);
	DBMS_OUTPUT.PUT_LINE('V_ENAME : '|| V_ENAME);
END;
/


--실행
--EXECUTE 프로시저 이름
V_EMPNO : 7788
V_ENAME : SCOTT