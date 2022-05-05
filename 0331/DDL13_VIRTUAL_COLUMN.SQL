--CREATE TABLE sales10(
--  no NUMBER,
--  pcode char(4),
--  pdate char(8),
--  pqty  number,
--  pbugi number(1)
--  GENERATED ALWAYS AS
--  (
--    CASE    
--        WHEN SUBSTR(pdate,5,2) IN ('01','02','03') THEN 1
--        WHEN SUBSTR(pdate,5,2) IN ('04','05','06') THEN 2
--        WHEN SUBSTR(pdate,5,2) IN ('07','08','09') THEN 3
--        ELSE 4
--    END ) virtual
--);

--INSERT INTO sales10 (no,pcode,pdate,pqty) VALUES (1,'100','20220331',10);
INSERT INTO sales10 (no,pcode,pdate,pqty) VALUES (2,'200','20220401',10);
SELECT * FROM sales10;

--GENERATED ALWAYS AS(조건) VIRTUAL; - 테이터 컬럼명을 만든 곳 뒤에 붙인다.