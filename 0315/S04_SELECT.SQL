--회사에 부서 정보가 들어 있는 dept 테이블
--회사를 구성하는 부서 데이터를 관리하는 테이블

--DESC dept;
-- 이름             널?      유형
-- --------------------- -------- ------
-- DEPTNO         NOT NULL NUMBER(2)
-- DNAME                   VARCHAR2(14)
-- LOC                     VARCHAR2(13)

SELECT deptno,
       dname,
	   loc
FROM dept
;
--    DEPTNO DNAME                        LOC
------------ ---------------------------- --------------------------
--        10 ACCOUNTING                   NEW YORK
--        20 RESEARCH                     DALLAS
--        30 SALES                        CHICAGO
--        40 OPERATIONS                   BOSTON
