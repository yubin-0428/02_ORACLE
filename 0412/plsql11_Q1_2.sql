SET SERVEROUTPUT ON;
DECLARE
   v_deptno DEPT.deptno%TYPE;
   v_dname DEPT.dname%TYPE;
   v_loc DEPT.loc%TYPE;
BEGIN
   v_deptno := 50;
   pro_dept_in(v_deptno, v_dname, v_loc);
   DBMS_OUTPUT.PUT_LINE('�μ���ȣ : ' || v_deptno);
   DBMS_OUTPUT.PUT_LINE('�μ��� : ' || v_dname);
   DBMS_OUTPUT.PUT_LINE('���� : ' || v_loc);
END;
/