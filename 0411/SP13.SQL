--CREATE OR REPLACE PROCEDURE 프로시저 이름                                                                                                                               
--[(  파라미터 이름1 자료형 := |DEFAULT 기본값,                                     
--    파라미터 이름2 자료형 := |DEFAULT 기본값,                                     
--                                            
--                                            
--    파라미터 이름N 자료형 := |DEFAULT 기본값                                      
--)]                                          
--IS | AS                                                                                                                             
--        선언부                                                                                                                      
--BEGIN                                                                                                                               
--        실행부                                                                                                                        
--                                                                                                                                    
--EXCEPTION                                                                                                                                   
--        예외 처리부                                                                                                                    
--                                                                                                                                    
--END [프로시저 이름];                                            

CREATE OR REPLACE PROCEDURE pro_param_in
( param1 IN NUMBER,
  param2 NUMBER, --MODE생략 하면 IN
  param3 NUMBER := 3,
  param4 NUMBER DEFAULT 4
)
IS

BEGIN
	DBMS_OUTPUT.PUT_LINE('param1: '||param1);
	DBMS_OUTPUT.PUT_LINE('param2: '||param2);
	DBMS_OUTPUT.PUT_LINE('param3: '||param3);
	DBMS_OUTPUT.PUT_LINE('param4: '||param4);
END;
/

--프로시저가 생성되었습니다.


12:19:52 SCOTT>EXEC pro_param_in(1,2,9,7)
param1: 1
param2: 2
param3: 9
param4: 7

PL/SQL 처리가 정상적으로 완료되었습니다.

12:20:34 SCOTT>EXEC pro_param_in(1,2)
param1: 1
param2: 2
param3: 3
param4: 4

PL/SQL 처리가 정상적으로 완료되었습니다.

경   과: 00:00:00.00
12:21:42 SCOTT>EXEC pro_param_in(1)
BEGIN pro_param_in(1); END;

      *
1행에 오류:
ORA-06550: 줄 1, 열7:PLS-00306: 'PRO_PARAM_IN' 호출 시 인수의 갯수나 유형 이 잘못되었습니다
ORA-06550: 줄 1, 열7:PL/SQL: Statement ignored


경   과: 00:00:00.00
12:21:56 SCOTT>EXEC pro_param_in(param1 => 1, param2=>2)
param1: 1
param2: 2
param3: 3
param4: 4










