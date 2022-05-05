SET SERVEROUTPUT ON;
DECLARE

BEGIN
    DBMS_OUTPUT.PUT_LINE('pro_emp(7788)');
    pkg_overload.pro_emp(7788);
    
    
    DBMS_OUTPUT.PUT_LINE('pro_emp(SCOTT)');
    pkg_overload.pro_emp('SCOTT');
END;
/