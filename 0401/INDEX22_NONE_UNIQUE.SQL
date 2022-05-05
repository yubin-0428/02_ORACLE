--dept2 테이블의 area 컬럼에 none unique index생성
--CREATE INDEX idx_dept2_area
--ON dept2 ( area );

SELECT /*+ INDEX_ASC(t1 IDX_DEPT2_AREA)  */ *
FROM dept2 t1
WHERE area > '0';