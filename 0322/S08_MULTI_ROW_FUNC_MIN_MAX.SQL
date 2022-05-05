--sort로 최소,최대를 구한다.
--SELECT MAX(sal),MIN(sal)
--FROM emp
--;

--  MAX(SAL)   MIN(SAL)
------------ ----------
--      5000        800

SELECT MAX(hiredate),
       MIN(hiredate)
FROM emp
;