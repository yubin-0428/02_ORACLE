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
    DBMS_OUTPUT.PUT_LINE('����ó��: ��ȸ ������ ����!');
    DBMS_OUTPUT.PUT_LINE('SQLCODE: '|| TO_CHAR(SQLCODE));                                                                          
    DBMS_OUTPUT.PUT_LINE('SQLERRM: '|| SQLERRM); 
  WHEN TOO_MANY_ROWS  THEN
    DBMS_OUTPUT.PUT_LINE('����ó��: �䱸���� ���� �� ���� ���� �߻�');
    DBMS_OUTPUT.PUT_LINE('SQLCODE: '|| TO_CHAR(SQLCODE));                                                                          
    DBMS_OUTPUT.PUT_LINE('SQLERRM: '|| SQLERRM); 
  WHEN VALUE_ERROR THEN                                                             
    DBMS_OUTPUT.PUT_LINE('���� ó��: ��ġ �Ǵ� �� ���� �߻�'); 
    DBMS_OUTPUT.PUT_LINE('SQLCODE: '|| TO_CHAR(SQLCODE));                                                                          
    DBMS_OUTPUT.PUT_LINE('SQLERRM: '|| SQLERRM);        
  WHEN OTHERS THEN                                                              
    DBMS_OUTPUT.PUT_LINE('����ó�� : ���� ���� �� ���� �߻�');                                                                   
    DBMS_OUTPUT.PUT_LINE('SQLCODE: '|| TO_CHAR(SQLCODE));                                                                          
    DBMS_OUTPUT.PUT_LINE('SQLERRM: '|| SQLERRM);                                                                    
END;
/