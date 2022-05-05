--테이블 생성
CREATE TABLE o_table(
  a NUMBER,
  b NUMBER
);
VIEW생성

CREATE OR REPLACE VIEW view01
AS ( SELECT a,b
     FROM o_table
);



VIEW를 통한 입력
INSERT INTO view01 VALUES (1,2);


O_TABLE조회

SELECT *
FROM o_table;