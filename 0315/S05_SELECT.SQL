--사원들의 급여 정보가 들어 있는 salgrade테이블
--EMP테이블에서 관리하는 사원들의 급여 정보 관리

--DESC salgrade;

-- 이름    널?      유형        
-- --------------- -------- 
-- GRADE             NUMBER 
-- LOSAL             NUMBER 
-- HISAL             NUMBER 

SELECT grade,
       losal,
	   hisal
FROM salgrade
;
--     GRADE      LOSAL      HISAL
------------ ---------- ----------
--         1        700       1200
--         2       1201       1400
--         3       1401       2000
--         4       2001       3000
--         5       3001       9999