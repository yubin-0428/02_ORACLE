--프로시저를 생성할 때 발생하는 오류를 확인하는 방법                                                
CREATE OR REPLACE PROCEDURE pro_err
IS
	err_no NUMBER;

BEGIN
	err_no = 100;--: 제거(오류)

	DBMS_OUTPUT.PUT_LINE('err_no: '||err_no);
END;
/

경고: 컴파일 오류와 함께 프로시저가 생성되었습니다.