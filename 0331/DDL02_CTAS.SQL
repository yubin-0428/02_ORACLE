--2 특정 컬럼만 복사             
CREATE TABLE dept3
AS
SELECT deptno,dname 
FROM dept;

SELECT * FROM dept3;

    DEPTNO DNAME
---------- ----------------------------
        10 ACCOUNTING
        20 RESEARCH
        30 SALES
        40 OPERATIONS