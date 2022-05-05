--DROP TABLE empidx;
--
--1
CREATE TABLE empidx
AS
SELECT *
FROM emp;


2
CREATE INDEX idx_empidx_empno
ON empidx (empno);

--3
SELECT t1.index_name,
       t1.table_name,
       t1.uniqueness,
       t1.index_type
FROM user_indexes t1
WHERE t1.table_name = 'EMPIDX'
;


SELECT t1.index_name, t1.table_name, t1.column_name
FROM USER_IND_COLUMNS T1
WHERE TABLE_NAME = 'EMPIDX';