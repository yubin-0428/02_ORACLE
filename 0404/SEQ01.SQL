--CREATE TABLE dept_sequence
--AS
--SELECT *
--FROM dept
--WHERE 1=2;

--DESC dept_sequence;
-- -------------------
-- DEPTNO NUMBER(2)
-- DNAME  VARCHAR2(14)
-- LOC    VARCHAR2(13)

--시퀀스 생성
--CREATE SEQUENCE seq_dept_sequence
--INCREMENT BY 10
--START WITH 10
--MAXVALUE 90
--MINVALUE 0
--NOCYCLE
--CACHE 2;

--SELECT *
--FROM user_sequences
--;


--dept_sequence테이블에 DEPTNO에 시퀀스를 이용해서 입력

--seq_dept_sequence.NEXTVAL : 번호 꺼내오기
--INSERT INTO dept_sequence VALUES (seq_dept_sequence.NEXTVAL,'DATABASE','SEOUL');

--SELECT * FROM dept_sequence;

--현재 시퀀스 번호
--SELECT seq_dept_sequence.CURRVAL FROM dual;

INSERT INTO dept_sequence VALUES (seq_dept_sequence.NEXTVAL,'DATABASE','SEOUL');
SELECT * FROM dept_sequence;

    DEPTNO DNAME                        LOC
---------- ---------------------------- --------------------------
        10 DATABASE                     SEOUL
        20 DATABASE                     SEOUL
        30 DATABASE                     SEOUL
        40 DATABASE                     SEOUL
        50 DATABASE                     SEOUL
        60 DATABASE                     SEOUL
        70 DATABASE                     SEOUL
        80 DATABASE                     SEOUL
        90 DATABASE                     SEOUL

9 행이 선택되었습니다.

--1행에 오류:
--ORA-08004: 시퀀스 SEQ_DEPT_SEQUENCE.NEXTVAL exceeds MAXVALUE은 사례로 될 수 없습니다





























