CREATE OR REPLACE PACKAGE BODY pkg_overload
IS
  PROCEDURE pro_emp(in_empno IN emp.empno%TYPE)
  IS
      out_ename EMP.ename%TYPE;
      out_sal   EMP.sal%TYPE;
  BEGIN
      SELECT ename, sal INTO out_ename,out_sal
        FROM emp 
       WHERE empno = in_empno; 

       DBMS_OUTPUT.PUT_LINE('ename :'||out_ename);
       DBMS_OUTPUT.PUT_LINE('sal   :'||out_sal); 
  END pro_emp; 

  PROCEDURE pro_emp(in_ename IN emp.ename%TYPE)
  IS
      out_ename EMP.ename%TYPE;
      out_sal   EMP.sal%TYPE;      
  BEGIN
      SELECT ename, sal INTO out_ename, out_sal
      FROM emp
      WHERE ename = in_ename;
  
      DBMS_OUTPUT.PUT_LINE('ename:'||out_ename);
      DBMS_OUTPUT.PUT_LINE('sal: '||out_sal);
  END pro_emp;


END;
/