--CTAS로 DEPT_RECORD 테이블 생성
--레코드 사용해 입력
--입력데이터 확인


--실습 테이블 준비
CREATE TABLE DEPT_RECORD
AS
SELECT * FROM dept;

--테이블 생성 확인 
SELECT * FROM DEPT_RECORD;

SET SERVEROUTPUT ON;
DECLARE
    --RECORD정의
	TYPE REC_DEPT IS RECORD(
		deptno NUMBER(2) NOT NULL :=99,
		dname  DEPT_RECORD.dname%TYPE,
		loc    DEPT_RECORD.loc%TYPE
	);
	
	--RECORD선업
	dept_rec REC_DEPT;
	
BEGIN
		dept_rec.deptno :=70;
		dept_rec.dname  :='DEVELOPER';
		dept_rec.loc    :='SHINCHON';
		
		INSERT INTO DEPT_RECORD
		VALUES dept_rec;
		
		COMMIT;
END;
/

PL/SQL 처리가 정상적으로 완료되었습니다.

--insert결과 확인

SELECT * FROM DEPT_RECORD;

    DEPTNO DNAME        LOC       
---------- ------------ ----------
        10 ACCOUNTING   NEW YORK
        20 RESEARCH     DALLAS
        30 SALES        CHICAGO
        40 OPERATIONS   BOSTON
        70 DEVELOPER    SHINCHON







