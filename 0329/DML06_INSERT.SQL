
--emp테이블을 copy emp_temp 생성, 단 데이터는 가져 오지 않는다.                                     

CREATE TABLE emp_temp
AS
SELECT * FROM emp
WHERE 1 <> 1;

SELECT *
FROM emp_temp;