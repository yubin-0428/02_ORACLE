--CREATE OR REPLACE FUNCTION 함수이름                                            
--[(                                          
--    파라메터 이름1 [IN] 자료형1,                                     
--    파라메터 이름2 [IN] 자료형2,                                     
--                                            
--    파라메터 이름N [IN] 자료형3                                      
--)]                                          
--RETURN 자료형                                            
--IS|AS                                           
--    선언부                                      
--                                            
--BEGIN                                           
--    실행부                                        
--                                            
--    RETURN (반환값);                                        
--                                            
--EXCEPTION                                           
--    예외처리                                      
--END [함수이름];                                            

CREATE OR REPLACE FUNCTION func_aftertax(
  sal IN NUMBER
)
RETURN NUMBER
IS
	tax NUMBER := 0.05;
BEGIN
	RETURN (ROUND( sal - (sal * tax)));
END func_aftertax;
/

함수가 생성되었습니다.











