--emp ename,job을 결합한 인덱스를 생성.

--CREATE INDEX idx_emp_comp
--ON emp( ename ASC, job DESC);


SELECT *
FROM emp
WHERE job > '0';