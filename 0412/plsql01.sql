--서브 프로그램 오버로드                                                                             
--    같은 패키지에서 사용하는 파라미터의 개수, 자료형, 순서가 다를 경우에 한해서만 이름이                                                                           
--    같은 서브프로그램을 정의할 수 있습니다.                                                                         

CREATE OR REPLACE PACKAGE pkg_overload
IS
    PROCEDURE pro_emp(in_empno IN emp.empno%TYPE);

    PROCEDURE pro_emp(in_ename IN emp.ename%TYPE);
END;
/