--CREATE [OR REPLACE] [FORSE | NOFORSE] VIEW view이름 (열 이름1, 열 이름2...)                                                                     
--AS (sub-query)                                                                
--[with check option [constraint 제약조건]]                                                                 
--[with read only]                                                                      
--초과는 수학 용어로, x가 y 초과일 때를 { x>y }
--empidx_over15k
CREATE OR REPLACE VIEW empidx_over15k
AS(
    SELECT t1.empno,
           t1.ename,
           t1.job,
           t1.deptno,
           t1.sal,
           CASE WHEN t1.comm IS NULL THEN 'X'
                ELSE 'O'
           END comm
    FROM empidx t1
    WHERE t1.sal > 1500
)
WITH READ ONLY
;