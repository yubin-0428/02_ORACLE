CREATE OR REPLACE PROCEDURE pro_dept_in
(
   inout_deptno IN OUT DEPT.deptno%TYPE,
   out_dname OUT DEPT.dname%TYPE,
   out_loc OUT DEPT.loc%TYPE
)
IS
BEGIN
   SELECT deptno, dname, loc INTO inout_deptno,out_dname,out_loc
   FROM dept
   WHERE deptno = inout_deptno;
   
EXCEPTION 
  WHEN NO_DATA_FOUND  THEN
    DBMS_OUTPUT.PUT_LINE('예외처리: 조회 데이터 없음!');
    DBMS_OUTPUT.PUT_LINE('SQLCODE: '|| TO_CHAR(SQLCODE));                                                                          
    DBMS_OUTPUT.PUT_LINE('SQLERRM: '|| SQLERRM); 
  WHEN TOO_MANY_ROWS  THEN
    DBMS_OUTPUT.PUT_LINE('예외처리: 요구보다 많은 행 추출 오류 발생');
    DBMS_OUTPUT.PUT_LINE('SQLCODE: '|| TO_CHAR(SQLCODE));                                                                          
    DBMS_OUTPUT.PUT_LINE('SQLERRM: '|| SQLERRM); 
  WHEN VALUE_ERROR THEN                                                             
    DBMS_OUTPUT.PUT_LINE('예외 처리: 수치 또는 값 오류 발생'); 
    DBMS_OUTPUT.PUT_LINE('SQLCODE: '|| TO_CHAR(SQLCODE));                                                                          
    DBMS_OUTPUT.PUT_LINE('SQLERRM: '|| SQLERRM);        
  WHEN OTHERS THEN                                                              
    DBMS_OUTPUT.PUT_LINE('예외처리 : 사전 정의 외 오류 발생');                                                                   
    DBMS_OUTPUT.PUT_LINE('SQLCODE: '|| TO_CHAR(SQLCODE));                                                                          
    DBMS_OUTPUT.PUT_LINE('SQLERRM: '|| SQLERRM);                                                                    
END;
/