--레코드를 통한 UPDATE

SET SERVEROUTPUT ON;
DECLARE
    --레코드 정의
	TYPE REC_DEPT IS RECORD(
		deptno NUMBER(2) NOT NULL := 99,
		dname DEPT_RECORD.dname%TYPE,
		loc   DEPT_RECORD.loc%TYPE
	);

    --레코드 선언
    dept_rec REC_DEPT;
BEGIN
	dept_rec.deptno := 50;
	dept_rec.dname  := 'WEB DEV';
	dept_rec.loc    := 'Hongdae';

    --SET ROW : 로 전체 데이터 할당!
	UPDATE DEPT_RECORD
	SET ROW = dept_rec
	WHERE deptno = 70;
	
	COMMIT;

END;
/

SELECT * FROM DEPT_RECORD;

    DEPTNO DNAME                        LOC
---------- ---------------------------- --------------------------
        10 ACCOUNTING                   NEW YORK
        20 RESEARCH                     DALLAS
        30 SALES                        CHICAGO
        40 OPERATIONS                   BOSTON
        50 WEB DEV                      Hongdae

경   과: 00:00:00.00