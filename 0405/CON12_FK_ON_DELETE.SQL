--열 데이터 삭제																
--CONSTRAINT [제약조건이름] REFERENCES 참조테이블(참조컬럼) ON DELETE CASCADE;																
--열 데이터를 NULL로 변경																
--CONSTRAINT [제약조건이름] REFERENCES 참조테이블(참조컬럼) ON DELETE SET NULL;																
																
--c_test1,																
--c_test2 테이블 생성			

--STEP. 1
--CREATE TABLE c_test1(
--  no NUMBER,
--  name VARCHAR2(10),
--  deptno NUMBER
--);														
--
--
--CREATE TABLE c_test2(
--  no NUMBER,
--  name VARCHAR2(10)
--);	

--STEP. 2 두개의 테이블에 제약 조건을 설정. 데이터 입력

--c_test1 c_test1_deptno_fk 참조키 없이 생성(c_test2 no에 uk없음)
--ALTER TABLE c_test1
--ADD CONSTRAINT ctest1_deptno_fk FOREIGN KEY(deptno)
--REFERENCES c_test2(no)
--;
--
--3행에 오류:
--ORA-02270: 이 열목록에 대해 일치하는 고유 또는 기본 키가 없습니다.


--ALTER TABLE c_test2
--ADD CONSTRAINT ctest2_no_uk UNIQUE(no); 


--삭제
--ALTER TABLE c_test1
--DROP CONSTRAINT CTEST1_DEPTNO_FK;
--
--ALTER TABLE c_test1
--ADD CONSTRAINT ctest1_deptno_fk FOREIGN KEY(deptno)
--REFERENCES c_test2(no)
--ON DELETE CASCADE
--;
--

--INSERT INTO c_test2 values (10,'AAA');
--INSERT INTO c_test2 values (20,'BBB');
--INSERT INTO c_test2 values (30,'CCC');
--COMMIT;
--
--
--SELECT * FROM c_test2;

--INSERT INTO c_test1 VALUES (1,'apple',10);
--INSERT INTO c_test1 VALUES (2,'banana',20);
--INSERT INTO c_test1 VALUES (3,'cherry',30);
--COMMIT;
--SELECT * FROM c_test1;


--INSERT INTO c_test1 VALUES (4,'peach',40);


--on delete cascade 테스트
DELETE FROM c_test2 WHERE  NO = 10;
SELECT * FROM c_test1;



--col owner for a10			
--col constraint_name for a35
--col constraint_type for a25
--col table_name for a25
--col r_owner for a15
--col r_constraint_name for a25
--SELECT t1.owner,
--       t1.constraint_name,
--       t1.constraint_type,
--       t1.table_name,
--       t1.r_owner,
--       t1.r_constraint_name
--FROM user_constraints t1
--WHERE t1.table_name IN ('C_TEST1','C_TEST2') ;








