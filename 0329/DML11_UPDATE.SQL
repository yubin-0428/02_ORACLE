--데이터 일부만 수정하기                      
--                        
--부서번호             40      
--부서명              'DATABASE'      
--부서가 위치 지역             SEOUL       

--SELECT *
--FROM dept_temp2
--WHERE deptno = 40;

--UPDATE dept_temp2
--   SET dname = 'DATABASE',
--       loc   = 'SEOUL'
-- WHERE deptno = 40;      
--1 행이 업데이트되었습니다.

COMMIT;
   
SELECT *
FROM dept_temp2
WHERE deptno = 40;                           